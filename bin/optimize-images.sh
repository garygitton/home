#!/bin/bash

find . -type f \( -name '*.jpg' -or -name '*.jpeg' \) -exec jpegoptim --strip-all "{}" \;
find . -type f -name '*.png' -exec optipng -o8 -strip all '{}' \;
