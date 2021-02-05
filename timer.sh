#!/bin/bash

title=$1

timer=300
step=15

function show_time () {
    num=$1
    min=0
    hour=0
    day=0
    if((num>59));then
        ((sec=num%60))
        ((num=num/60))
        if((num>59));then
            ((min=num%60))
            ((num=num/60))
            if((num>23));then
                ((hour=num%24))
                ((day=num/24))
            else
                ((hour=num))
            fi
        else
            ((min=num))
        fi
    else
        ((sec=num))
    fi
    printf "%02d:%02d\n" ${min} ${sec}
    # echo "${day}:${hour}:${min}:${sec}"
}

clear
echo -n "[Enter to Start]"
read line

while [ $timer -gt 0 ] ; do
  clear
  echo "Currently giving presentation: "
  echo "$title"
  echo "time left:"
  toilet -F metal -t  -f future $(show_time $timer)

  sleep $step

  tmux send-keys -t 1 j
  ((timer=timer-step))
done
