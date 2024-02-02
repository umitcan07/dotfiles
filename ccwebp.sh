#!/bin/bash

# Initialize variables
quality=100  # Default quality level
dir="."      # Default to current directory

# Parse command-line options
while getopts "q:d:" opt; do
  case $opt in
    q)
      quality=$OPTARG
      # Validate the quality level
      if [[ ! "$quality" =~ ^[0-9]+$ ]] || [ "$quality" -lt 0 ] || [ "$quality" -gt 100 ]; then
        echo "Invalid quality level. Please enter a number between 0 and 100."
        exit 1
      fi
      ;;
    d)
      dir=$OPTARG
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

# Create the output directory if it doesn't exist
mkdir -p "$dir/webp"

# Loop through each PNG image in the png directory
for img in "$dir/png/"*.png; do
  # Extract the filename without the .png extension
  filename=$(basename -- "$img")
  filename_noext="${filename%.*}"

  # Convert the image to WEBP format with the specified quality
  cwebp -q "$quality" "$img" -o "$dir/webp/${filename_noext}.webp"
done
