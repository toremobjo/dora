#!/usr/bin/env python3
# license removed for brevity
#the Do Rational Actions graph explorer


import rospy
import numpy as np
import networkx as nx
import pandas as pd
import natural_cubic_spline
import config
import matplotlib.pyplot as plt


from imc_ros_msgs.msg import Temperature

class DoRA:
    def __init__(self, graph, conf):
        self.conf = conf
        self.G = graph
        self.pos = nx.get_node_attributes(self.G, 'pos')
        self.curr_depth = 0.0
        self.is_first_wp = True
        self.alpha_var_update = 0.5
        self.path_length_penalty = self.conf.path_length_penalty
        self.depth = conf.depth
        self.current_model = None
        self.depthspace = np.linspace(0.0, self.depth, num = 1000)
        self.model_df = pd.DataFrame(columns = ["edge", "timestamp", "spline", "variance"])
        #self.current_df = pd.DataFrame({"temperature" : [-9999.0], "depth" : [self.curr_depth]}, index = [0])
        self.temp_data_array = []
        for edge in list(self.G.edges):
            self.G.edges[edge]["MSE"] = 100.0
            self.G.edges[edge]["model"] = None


    def TemperatureCB(self,data):
        if data.header.src_ent.data is 69:
            self.temp_data_array.append([data.value.data , self.curr_depth])


    def DepthCB(self,data):
        self.curr_depth = data.value.data


    def updateEdge(self, last_node, current_node):
        if not self.is_first_wp:
            current_df = pd.DataFrame(self.temp_data_array, columns = ["temp", "depth"])
            current_df.dropna(inplace=True)
            self.temp_data_array = []
            model = natural_cubic_spline.get_natural_cubic_spline_model(current_df["depth"].values,current_df["temp"].values, minval = 0.5, maxval = self.depth, n_knots = 8)
            self.current_model = model

            prediction = model.predict(current_df["depth"].values)
            MSE = np.sum((prediction-current_df["temp"].values)**2)/len(prediction)



            #filename = "figures/Edge" + str(last_node) + str(current_node)+ ".png"
            #fig1 = plt.figure()
            #plt.clf()
            #plt.scatter(current_df["temp"].values,-current_df["depth"].values)
            #plt.plot(prediction, -current_df["depth"].values, color="r")
            #plt.savefig(filename, format="png")


            self.G.edges[last_node,current_node]["MSE"] = MSE
            self.G.edges[last_node,current_node]["model"] = model

            neighbour_edges = []
            curr_keys = self.G.adj[current_node].keys()

            for key in curr_keys:
                if not key == last_node:
                    neighbour_edges.append((current_node, key))


            last_keys = self.G.adj[last_node].keys()
            for key in last_keys:
                if not key == current_node:
                    neighbour_edges.append((last_node, key))

            updated_edges = 0
            beta = 0.01
            number_of_edges = len(list(self.G.edges))-1
            x = self.pos[current_node][0]*0.5 + self.pos[last_node][0]*0.5
            y = self.pos[current_node][1]*0.5 + self.pos[last_node][1]*0.5
            for edge in list(self.G.edges):
                distance = (np.sqrt((self.pos[edge[0]][0]-x)**2 +(self.pos[edge[0]][1]-y)**2) + np.sqrt((self.pos[edge[1]][0]-x)**2 +(self.pos[edge[1]][1]-y)**2))/2.0
                alpha = np.exp(-distance*2.0)
                self.G.edges[edge]["MSE"] = self.G.edges[edge]["MSE"]*(1.0-alpha) + MSE*alpha
                self.G.edges[edge]["MSE"] = self.G.edges[edge]["MSE"]*(1-beta) + 100.0*beta
                if self.G.edges[edge]["model"] is not None:
                    updated_edges += 1
            print("Updated edges:", updated_edges, "of", number_of_edges)


        if self.is_first_wp:
            self.is_first_wp = False


    def updateNode(self, current_node):
        keys = self.G.adj[current_node].keys()
        edges = []
        next_node = (0,0)
        max_mse = 0.0


        for key in keys:
            edges.append((current_node,key))

        for edge in edges:
            if self.G.edges[edge]["MSE"] > max_mse:
                next_node = edge[1]
                max_mse = self.G.edges[edge]["MSE"]

        best_path = self.bfs2(current_node)
        return best_path[1]

    def bfs2(self,current_node):
        queue = [(current_node,[current_node])]
        max_score = -99999.9
        best_path = []
        search_depth = 122
        counter = 0
        max_path_length = 8
        path_length = 0

        while queue and path_length <= max_path_length:
            (node, path) = queue.pop(0)
            keys = self.G.adj[node].keys()
            keyring = []
            for key in keys:
                keyring.append(key)

            for key in keyring:
                if key not in path:
                    if len(path+[key]) <= max_path_length and len(path+[key]) > 2:
                        score = self.evaluatePath(path+[key])
                        if score > max_score:
                            max_score = score
                            best_path = path+[key]
                    path_length = len(path+[key])
                queue.append((key,path + [key]))

        print(best_path)
        return best_path

    def evaluatePath(self,path):
        score = 0.0
        if self.current_model is not None:
            pred_curr = self.current_model.predict(self.depthspace)

        if len(path) < 2:
            score = 0.0
        elif len(path) == 2:
            score = self.G.edges[path[0],path[1]]["MSE"] + 2.0*self.path_length_penalty
        else:
            for i in range(0,len(path)-2):
                x = self.pos[path[i]][0]*0.5 + self.pos[path[i+1]][0]*0.5
                y = self.pos[path[i]][1]*0.5 + self.pos[path[i+1]][1]*0.5
                for edge in list(self.G.edges):
                    distance = (np.sqrt((self.pos[edge[0]][0]-x)**2 +(self.pos[edge[0]][1]-y)**2) + np.sqrt((self.pos[edge[1]][0]-x)**2 +(self.pos[edge[1]][1]-y)**2))/2.0
                    alpha = np.exp(-distance*2.0)
                    score += self.G.edges[edge]["MSE"]*(alpha)

            score +=  len(path)*self.path_length_penalty

            for i in range(0,len(path)-3):
                if self.G.edges[path[i],path[i+1]]["model"] is not None and self.G.edges[path[i+1],path[i+2]]["model"] is not None:
                    pred_a = self.G.edges[path[i],path[i+1]]["model"].predict(self.depthspace)
                    pred_b = self.G.edges[path[i+1],path[i+2]]["model"].predict(self.depthspace)
                    score += sum((pred_a-pred_b)**2)/len(self.depthspace)*10.0
                    if self.current_model is not None:
                        score += sum((pred_curr-pred_a)**2)/len(self.depthspace)*10.0

        return score

    def bfs(self,current_node,last_node):
        queue = [current_node]
        visited = [last_node]
        search_depth = 12
        counter = 0

        while queue and counter < search_depth:
            node = queue.pop(0)

            if node not in visited:
                counter += 1
                visited.append(node)
                keys = self.G.adj[node].keys()
                for key in keys:
                    queue.append(key)
        return visited
