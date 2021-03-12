#!/bin/bash


pattern_files_extension=".txt"
patterns_dir="patterns"
nb_frames=58

while (true)
do
  for ((i = 1; i <= ${nb_frames} ; i += 1))
  do
    cat ${patterns_dir}/${i}${pattern_files_extension}
    cat ${patterns_dir}/base${pattern_files_extension}
    sleep 0.04
    clear
  done
done
