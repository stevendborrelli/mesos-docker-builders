#!/bin/bash

basedir=library

dirs=$(ls ${basedir}/) 

for dir in ${dirs}; do
    echo "Building ${dir}..."
    (cd ${basedir}/${dir} && docker build -t ${dir} .) 
done


