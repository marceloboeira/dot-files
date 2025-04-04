# vim: ft=conf

# status line
set-option -g status-left-length 100
set-option -g status-left "λ #S | #(tmux/git-branch.sh) | "

# Add git branch to status right
set-option -g status-right "%H:%M %d-%b-%y | #(hostname -s)"

# Update status interval to refresh git branch
set-option -g status-interval 1
