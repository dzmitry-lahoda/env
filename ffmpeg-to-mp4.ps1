
# converts any file into mp4
param (
    [string]$filename
)

ffmpeg -i $filename -strict -2 -c copy "$filename.mp4" 
#[mp4 @ 00000161a5a64980] Could not find tag for codec flv1 in stream #0, codec not currently supported in container
#Could not write header for output file #0 (incorrect codec parameters ?): Invalid argument
# TODO: in case of error 
# ffmpeg -i $filename -vcodec libx264 -acodec copy "$filename.mp4"