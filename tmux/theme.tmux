# vim: ft=conf

#### COLOUR (Solarized dark)
# default statusbar colors
set-option -g status-bg black  # base02
set-option -g status-fg white  # base0
set-option -g status-style bg=black,fg=white

# default window title colors
set-window-option -g window-status-style fg=white,bg=black  # base02

# active window title colors
set-window-option -g window-status-current-style fg=black,bg=blue,bold  # blue highlight

# window with activity colors
set-window-option -g window-status-activity-style fg=white,bg=black

# pane border
set-option -g pane-border-style fg=black
set-option -g pane-active-border-style fg=blue

# message text
set-option -g message-style bg=black,fg=white

# pane number display
set-option -g display-panes-active-colour white
set-option -g display-panes-colour black

# clock
set-window-option -g clock-mode-colour white
