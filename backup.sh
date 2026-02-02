#!/bin/bash
cd ~/dotfiles
git add -A
git commit -m "Auto backup: $(date +%Y-%m-%d)"
git push
