
# converts any file into mp4
param (
    [string]$filename
)

ffmpeg -i $filename -strict -2 -c copy "${$filename}.mp4" 