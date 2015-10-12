// adds machine and process wide variables and paths
// sends notification about

open System
open System.Runtime.InteropServices
open System.IO
type Env = Environment


let JAVA_HOME = @"c:\Program Files\Java\jdk1.8.0"
let ANT_HOME = @"C:\OneDrive\exe\apache-ant-1.9.4"

//TODO: add fsi path for fsi running this code
let FSI = @"C:\Program Files (x86)\Microsoft SDKs\F#\4.0\Framework\v4.0\"
let GOPATH  = @"c:\tools\go"
let golang  = @"c:\tools\go\bin"
//TODO: add VS version templates
let VS_TEMPLATE = @"C:\Program Files (x86)\Microsoft Visual Studio {VERSION}.0\Common7\IDE"
let VS_BIN = @"C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin"
let VS_TOOLS = @"C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\Tools"
let VS_IDE = VS_TEMPLATE.Replace("{VERSION}","12")

let HWND_BROADCAST =  IntPtr(0xffff)
let WM_SETTINGCHANGE = 0x001Au
[<DllImport("User32.dll",SetLastError= true)>]
extern Int32 SendMessage ( IntPtr hWnd,    UInt32 uMsg,    UInt32 wParam,  IntPtr lParam);


let addToPaths toAdd target =
    let path = Env.GetEnvironmentVariable("PATH", target)
    if not (path.Contains(toAdd))  then
        let bin = toAdd + ";"
        let newPath = if path.EndsWith(";") then path + bin else path + ";" + bin
        Env.SetEnvironmentVariable("PATH",newPath , target)
    ()

let addToPath (toAdd:string)  =
   //TODO: replace / with \
   //NOTE: `;` is valid folder name in NTFS, so cannot delete if appended as last charecter
   let normalized = toAdd.Trim() 
   if  Directory.Exists(normalized) = false then 
       printf "There is no such `%s` directory" toAdd 
   addToPaths normalized EnvironmentVariableTarget.Machine
   addToPaths normalized EnvironmentVariableTarget.Process
   let ansi = Marshal.StringToHGlobalAnsi("Environment")
   let uni = Marshal.StringToHGlobalUni("Environment")
   //TODO: write idiomatic code to chech results, errors and free
   SendMessage(HWND_BROADCAST, WM_SETTINGCHANGE, 0u, ansi) |> ignore
   if Marshal.GetLastWin32Error() <> 0  then
     printf "Failed to notify about change"
   Marshal.FreeHGlobal(uni)
   SendMessage(HWND_BROADCAST, WM_SETTINGCHANGE, 0u, uni)  |> ignore
   if Marshal.GetLastWin32Error() <> 0  then
     printf "Failed to notify about change"
   ()
   Marshal.FreeHGlobal(ansi)

let main() =
  //TODO: use global swich to compile with logging and without
  //TODO: split out config stirngs leaving only code
  addToPath(VS_BIN)
  addToPath(VS_IDE)
  addToPath(VS_TOOLS)
  addToPath(golang)
  //TODO: do targets and cleanup for variables as to paths
  //Env.SetEnvironmentVariable("GOPATH",GOPATH, EnvironmentVariableTarget.Machine)
  //Env.SetEnvironmentVariable("JAVA_HOME",JAVA_HOME, Machine)
  //Env.SetEnvironmentVariable("ANT_HOME",ANT_HOME, Machine)

  0

main() |> ignore