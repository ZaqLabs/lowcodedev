#!/bin/bash

# Create output directory if it doesn't exist
mkdir -p output

# Use text/ prefix for each markdown file, excluding metadata.yaml
pandoc $(ls -1 text/ | grep -v "metadata.yaml" | sed 's/^/text\//' | tr '\n' ' ')  \
  --metadata-file=text/metadata.yaml \
  --toc \
  --pdf-engine=xelatex \
  -o output/IntroToLowCode.pdf
