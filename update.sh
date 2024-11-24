#!/bin/bash

jupyter-book build . --keep-going
ghp-import -n -p -f _build/html
