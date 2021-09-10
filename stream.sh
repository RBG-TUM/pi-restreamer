# reset usb device
# TODO

# update the video device for grep to fit your needs:
ffmpeg -re -i "$(v4l2-ctl --list-devices | grep -A 1 Logitech | tail -n 1 | tr -d '[[:blank:]]')" \
    -framerate 30 -video_size 1920x1080 -c:v libx264 -preset veryfast \
    -b:v 3000k -maxrate 3000k -bufsize 3000k -vf "scale=1920:-1,format=yuv420p" -g 60 \
    -c:a aac -b:a 128k -ar 44100 \
    -f flv rtmp://192.168.178.38/live/2