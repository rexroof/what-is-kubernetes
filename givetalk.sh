#!/bin/bash
dir=$1

if [ ! -d "$dir" ] ; then
  echo "give us a directory"
  exit 1
fi

cd $dir

if [ -f talk.md ] ; then
  tmux new-window "lookatme talk.md"
  title=$( grep title talk.md | cut -f2- -d: )

  tmux split-window -h -l '30%' "../timer.sh ${title}"

  if [ -f demo.sh ] ; then 
    tmux split-window -v "./demo.sh"
    tmux select-pane -U
  fi

  $HOME/bin/chat-window.sh
else 
  echo "can't find a talk!"
  exit 1
fi

