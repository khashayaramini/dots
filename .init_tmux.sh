#!/bin/sh
if ! tmux has-session -t home 2>/dev/null; then
	tmux new-session -d -s home

	tmux rename-window -t home:1 'editor'
	tmux new-window -t home:2 -n 'terminal'
	tmux new-window -t home:3 -n 'misc'

	tmux send-keys -t home:1 'c' C-m
	tmux send-keys -t home:2 'c' C-m
	tmux send-keys -t home:3 'c' C-m

	tmux send-keys -t home:1 'n' C-m

	tmux select-window -t home:2
else
	if ! tmux list-windows -t home | grep -q 'editor'; then
        tmux new-window -t home:1 -n 'editor'
		tmux send-keys -t home:1 'c' C-m
		tmux send-keys -t home:1 'n' C-m
    fi
	if ! tmux list-windows -t home | grep -q 'terminal'; then
		if tmux list-windows -t home | grep -q '2: misc'; then
			tmux new-window -t home:3 -n 'terminal'
			tmux send-keys -t home:3 'c' C-m
			tmux swap-window -t home:2 -s home:3
		else
			tmux new-window -t home:2 -n 'terminal'
			tmux send-keys -t home:2 'c' C-m
		fi
    fi
	if ! tmux list-windows -t home | grep -q 'misc'; then
        tmux new-window -t home:3 -n 'misc'
		tmux send-keys -t home:3 'c' C-m
    fi
fi

tmux attach-session -t home
