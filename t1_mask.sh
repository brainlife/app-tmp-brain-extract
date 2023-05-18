#!/bin/bash

# configurable inputs
## for this app, we need a t1 and a mask input
t1=(`jq -r '.t1' config.json`) # this is our t1 input
mask=(`jq -r '.mask' config.json`) # this is our mask input

# extract the brain data
fslmaths ${t1} -mas ${mask} t1.nii.gz # this is our brain extracted t1 file
