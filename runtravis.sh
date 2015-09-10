#!/bin/bash
set -ev
if [ $TRAVIS_PYTHON_VERSION == '2.6' ] && ([ $DJANGO == 'Django<1.8' ] || [ $DJANGO == 'Django<1.9' ]); then 
   return 0 || exit  
else
    python setup.py test
fi
