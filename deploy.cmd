@echo off

git checkout master

echo "Building the project"
hugo
cd docs

echo "Moving to Git"
git add .
git commit -m %1
git push origin master

echo "Finishing up"
git checkout source