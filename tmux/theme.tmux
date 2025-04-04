# vim: ft=conf

#### COLOUR (Solarized dark)
# default statusbar colors
set-option -g status-bg colour00  # base02 (Solarized dark background)
set-option -g status-fg colour254  # base0 (white)
set-option -g status-style bg=colour234,fg=colour254

# default window title colors
set-window-option -g window-status-style fg=colour00,bg=colour254

# active window title colors
set-window-option -g window-status-current-style fg=colour254,bg=colour33,bold  # blue

# window with activity colors
set-window-option -g window-status-activity-style fg=colour254,bg=colour33

# pane border
set-option -g pane-border-style fg=colour234
set-option -g pane-active-border-style fg=colour33

# message text
set-option -g message-style bg=colour234,fg=colour254

# pane number display
set-option -g display-panes-active-colour colour254
set-option -g display-panes-colour colour234

# clock
set-window-option -g clock-mode-colour colour254
