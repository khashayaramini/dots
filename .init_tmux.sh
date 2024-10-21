#!/bin/sh

tmux new-session -d -s home

tmux rename-window -t home:0 'editor'
tmux new-window -t home:1 -n 'terminal'
tmux new-window -t home:2 -n 'misc'

tmux send-keys -t home:0 'c' C-m
tmux send-keys -t home:1 'c' C-m
tmux send-keys -t home:2 'c' C-m

tmux send-keys -t home:0 'n' C-m

tmux select-window -t home:1

tmux attach-session -t home
