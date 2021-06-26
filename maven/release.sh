#!/bin/bash -e

DIR="$PWD"

echo "Version: $VERSION"

echo "------------------------------------------------------------------------------------------------------------"
echo "Building:"
echo ""

mvn -Dmaven.test.skip=true  clean deploy


echo "------------------------------------------------------------------------------------------------------------"
echo "Create tag:"
echo ""

git tag $VERSION
git push origin $VERSION


echo "------------------------------------------------------------------------------------------------------------"
echo "Upload to OSS releases:"
echo ""

echo "------------------------------------------------------------------------------------------------------------"

echo "------------------------------------------------------------------------------------------------------------"
echo "Done"
echo "------------------------------------------------------------------------------------------------------------"

