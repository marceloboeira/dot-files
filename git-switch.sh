#!/bin/bash

PROFILE=$1

rm "$HOME/.dots/git/config"
ln -s "$HOME/.dots/git/profiles/$PROFILE" "$HOME/.dots/git/config"
