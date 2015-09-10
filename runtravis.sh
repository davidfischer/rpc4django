#!/bin/bash
set -ev
if [ $TRAVIS_PYTHON_VERSION == '2.6' ] && ([ $DJANGO == 'Django<1.8' ] || [ $DJANGO == 'Django<1.9' ]); then 
   exit 0  
else
    python setup.py test
fi
