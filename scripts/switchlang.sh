#!/usr/bin/env bash
(setxkbmap -query | grep -q "layout:\s\+us") && setxkbmap se || setxkbmap us
