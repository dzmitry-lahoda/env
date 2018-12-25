
set ROOT=%~dp0../..
set TMP=%ROOT%/.tmp/
set RUNTIME=%ROOT%/.runtime/
mkdir %TMP%
set NAME=ffmpeg-4.1-win64-static
set RELEASE=%NAME%.zip

IF NOT EXIST %TMP%/%RELEASE% (
  curl --location https://ffmpeg.zeranoe.com/builds/win64/static/ffmpeg-4.1-win64-static.zip --output %TMP%/%RELEASE%
)

mkdir %RUNTIME%

tar -xkf %TMP%%RELEASE% -C %RUNTIME%

setx path "%path%;%RUNTIME%%NAME%/bin/"
setx path "%PATH%";F:/shared-src/scripts/.runtime/ffmpeg-4.1-win64-static/bin/"