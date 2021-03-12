#!/bin/bash


pattern_files_extension=".txt"
patterns_dir="patterns"
nb_frames=58

# when interrupted, reenable cursor and skip over the text below the cursor
int() {
  tput cnorm
  echo -e '\n\n\n\n\n\n\n\n\n\n'
  exit 0
}
trap int SIGINT

# make cursor invisible
tput civis

clear
# put the first frame and bottom text on the screen
cat ${patterns_dir}/1${pattern_files_extension} ${patterns_dir}/base${pattern_files_extension}
while (true)
do
  for ((i = 1; i <= ${nb_frames} ; i += 1))
  do
    # go to coords (0,0), then show the next frame
    tput cup 0 0
    cat ${patterns_dir}/${i}${pattern_files_extension}
    sleep 0.04
  done
done
