#!/bin/bash


# Could be set be env var?
PARENT_BAR="main"
PARENT_BAR_PID=$(pgrep -a "polybar" | grep "$PARENT_BAR" | cut -d " " -f1)

echo "$PARENT_BAR_PID"

PLAYER="spotify"

FORMAT="{{ artist }} - {{ title }}"

update_hooks() {
    while IFS= read -r id
    do
        polybar-msg -p "$id" hook spotify-play-pause $2 1>/dev/null 2>&1
    done < <(echo "$1")
}


PLAYERCTL_STATUS=$(playerctl --player=$PLAYER status 2>/dev/null)
echo "$PLAYERCTL_STATUS"
EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
    STATUS=$PLAYERCTL_STATUS
else
    STATUS="Spotify is not running"
fi

echo "$1"

if [ "$1" == "--status" ]; then
    echo "$STATUS"
else
    if [ "$STATUS" = "Stopped" ]; then
        echo "No music is playing"
    elif [ "$STATUS" = "Paused"  ]; then
        update_hooks "$PARENT_BAR_PID" 2
        playerctl --player=$PLAYER metadata --format "$FORMAT"
    elif [ "$STATUS" = "Spotify player is running"  ]; then
        echo "$STATUS"
    else
        update_hooks "$PARENT_BAR_PID" 1
        playerctl --player=$PLAYER metadata --format "$FORMAT"
    fi
fi
