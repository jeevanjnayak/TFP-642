#!/bin/bash -x

declare -A animalSound
animalSound[dog]="barks"
animalSound[cats]="meow"
animalSound[cow]="moo"
animalSound[tiger]="roar"

animalSound[cats]="meoww"

echo "All the values are: ${animalSound[@]}"
echo "All the keys are: ${!animalSound[@]} and values are: ${animalSound[@]}"
echo "number of elements: "${#animalSound[@]}
echo "the sound made by a cow: "${animalSound[cow]}

unset animalSound[cats]
echo ${!animalSound[@]}
