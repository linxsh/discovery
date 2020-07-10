ffmpeg -f x11grab -framerate 25 -video_size 1920*1024 -an -i :0.0 -vcodec mpeg4 -r $1 -b:v $3 -vf scale=$2 -f rtp_mpegts rtp://$4:8001 -fflags nobuffer -analyzeduration 1000000
