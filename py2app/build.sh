#!/bin/bash

# remove unsupported architectures
ditto --arch x86_64 py2app py2app_clean
rm -Rf py2app
mv -v py2app_clean py2app

$PYTHON setup.py install

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
