#!/bin/sh
rm -rf output
mkdir output
dot -Tpng -o output/cf.png ./cf-stack-states.dot
dot -Tpng -o output/cf-happy-subset.png -Glayerselect=happy ./cf-stack-states.dot
dot -Tpng -o output/cf-happy.png ./cf-happy.dot
dot -Tpng -o output/cf-happy-atrest.png ./cf-happy-atrest.dot

