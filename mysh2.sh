#!/bin/bash

mkdir public

mkdir private

cd private
mkdir .hidden_directory_name
cd ..

cd public
mkdir New\ folder
ls -l

cd New\ folder
touch file.txt
ln -s file.txt soft-link-file.txt
cd ../..

rm -r public private
