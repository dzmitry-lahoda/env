# downloads vide from youtube in best qualitu
param (
    [string]$url
)

youtube-dl $url --format bestvideo+bestaudio --merge-output-format mkv