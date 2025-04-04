#!/bin/bash

# Get the current git branch
branch=$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/' -e 's/(\(.*\))/\1/')

if [ -n "$branch" ]; then
  # Get git status
  status=$(git status --porcelain 2>/dev/null)

  # Get ahead/behind information
  ahead=$(git log --oneline @{u}.. 2>/dev/null | wc -l | tr -d ' ')
  behind=$(git log --oneline ..@{u} 2>/dev/null | wc -l | tr -d ' ')

  # Build status string
  status_str=""

  if [ "$ahead" -gt 0 ]; then
    status_str="${status_str}#[fg=colour6]↑${ahead}#[default]"
  fi

  if [ "$behind" -gt 0 ]; then
    status_str="${status_str}#[fg=colour1]↓${behind}#[default]"
  fi

  if git status --porcelain | grep '^UU' --quiet; then
    status_str="${status_str}#[fg=colour1]Ϟ#[default]"
  fi

  if git status --porcelain | grep '^??' --quiet; then
    status_str="${status_str}#[fg=colour4]●#[default]"
  fi

  if git status --porcelain | grep '^.[MRC]' --quiet; then
    status_str="${status_str}#[fg=colour3]●#[default]"
  fi

  if git status --porcelain | grep '^[AMRC].' --quiet; then
    status_str="${status_str}#[fg=colour2]●#[default]"
  fi

  # Get git profile
  profile=$(git config --get user.profile 2>/dev/null)

  # Output branch and status
  if [ -n "$status_str" ]; then
    echo "#[bold][${branch}|${profile}]#[nobold][${status_str}]"
  else
    echo "#[bold][${branch}|${profile}]#[nobold]"
  fi
fi
