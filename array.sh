#!/bin/bash -x

Animal[0]="dog"
Animal[1]="cat"
Animal[2]="cow"
Animal[3]="lion"

echo ${Animal[@]}

Animal[1]="tiger"
echo ${Animal[@]}
