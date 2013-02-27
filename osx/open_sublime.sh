#!/bin/bash

if [ -e *.sublime-project ]; then
    subl *.sublime-project
else
    subl .
fi
