#!/bin/bash

# This script randomly select one item from photo collections defined in Splash configuration file and passes it to splash to download a photo from that collection.

# Get a random collection by ID
# grep "id" ~/.config/splash-cli-nodejs/config.json | awk ':' '{print $2}' | shuf -n 1

# Get a random collection by NAME:
random_collection_by_name="$(grep 'name' ~/.config/splash-cli-nodejs/config.json | awk -F '\"' '{print $4}' | shuf -n 1)"

splash --collection "$random_collection_by_name"

dunstify -a system -i '/usr/share/icons/Arc/apps/48@2x/preferences-desktop-wallpaper.png' -t 6000 -r 9989 -u normal 'Wallpaper' "Downloading random wallpaper: unsplash.com/$random_collection_by_name"
