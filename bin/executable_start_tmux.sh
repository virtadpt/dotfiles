#!/usr/bin/env bash

# Start a new session.
tmux new-session -c $HOME -d

# Start up my usual monitoring tools.
tmux send-keys "htop" C-m
tmux new-window -d -n "bwm-ng" bwm-ng -d -o curses2
tmux new-window -d -n "iostat" iostat -d -h -s -z 5
tmux new-window -d -n "iotop" iotop -d 5 -o -2 -6 -8
tmux new-window -d -n "nvitop" nvitop

# Start up a few shells.
tmux new-window
tmux new-window
tmux new-window
