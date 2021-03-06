#!/bin/bash

mkdir -p dist
cd dist

version=$1

if [[ "$1" == "" ]]; then
    echo "Usage: down_them_all.sh <version>"
    exit 1
fi

declare -a arr=(
	"-cp36-cp36m-macosx_10_9_x86_64.whl"
	"-cp37-cp37m-macosx_10_9_x86_64.whl"
	"-cp38-cp38-macosx_10_9_x86_64.whl"
	"-cp39-cp39-macosx_10_9_x86_64.whl"
	"-cp38-cp38-macosx_11_0_arm64.whl"
	"-cp39-cp39-macosx_11_0_arm64.whl"
	"-cp36-cp36m-manylinux2010_x86_64.whl"
	"-cp37-cp37m-manylinux2010_x86_64.whl"
	"-cp38-cp38-manylinux2010_x86_64.whl"
	"-cp39-cp39-manylinux2010_x86_64.whl"
	"-cp36-cp36m-manylinux2014_aarch64.whl"
	"-cp37-cp37m-manylinux2014_aarch64.whl"
	"-cp38-cp38-manylinux2014_aarch64.whl"
	"-cp39-cp39-manylinux2014_aarch64.whl"
	"-cp36-cp36m-manylinux2014_ppc64le.whl"
	"-cp37-cp37m-manylinux2014_ppc64le.whl"
	"-cp38-cp38-manylinux2014_ppc64le.whl"
	"-cp39-cp39-manylinux2014_ppc64le.whl"
	"-cp36-cp36m-win_amd64.whl"
	"-cp37-cp37m-win_amd64.whl"
	"-cp38-cp38-win_amd64.whl"
	"-cp39-cp39-win_amd64.whl"
    "-pp36-pypy36_pp73-macosx_10_9_x86_64.whl"
    "-pp37-pypy37_pp73-macosx_10_9_x86_64.whl"
    "-pp36-pypy36_pp73-manylinux2010_x86_64.whl"
    "-pp37-pypy37_pp73-manylinux2010_x86_64.whl"
	".tar.gz")
for whl_file in "${arr[@]}"
do
    curl -L -O https://github.com/symengine/symengine-wheels/releases/download/v${version}/symengine-${version}${whl_file};
done


