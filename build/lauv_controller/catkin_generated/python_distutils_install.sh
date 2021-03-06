#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/tore/software/dora/src/lauv_controller"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/tore/software/dora/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/tore/software/dora/install/lib/python2.7/dist-packages:/home/tore/software/dora/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/tore/software/dora/build" \
    "/usr/bin/python2" \
    "/home/tore/software/dora/src/lauv_controller/setup.py" \
     \
    build --build-base "/home/tore/software/dora/build/lauv_controller" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/tore/software/dora/install" --install-scripts="/home/tore/software/dora/install/bin"
