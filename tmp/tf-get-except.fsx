//  Get latest version for all suborders except listed
// Can be used to skip big new checking of binary files
// TODO

#r "Microsoft.TeamFoundation.Client.dll"
#r "Microsoft.TeamFoundation.Common.dll"
#r "Microsoft.TeamFoundation.VersionControl.Client.dll"
#r "Microsoft.TeamFoundation.VersionControl.Common.dll"
#r @"C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\TF.exe"


open System
open System.Diagnostics
open Microsoft.TeamFoundation.Common
open Microsoft.TeamFoundation.VersionControl.Common
open Microsoft.TeamFoundation.VersionControl.Client
open Microsoft.TeamFoundation.Client

//let path = @"d\tfs"
//let workSpace = Workstation.Current.GetLocalWorkspaceInfo(path)
//let asd = workSpace.GetWorkspace()

// AppDomain.ExecuteAssembly fails

let start = ProcessStartInfo(@"C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\TF.exe", "get");
start.UseShellExecute <- false
start.RedirectStandardOutput <- true
start.RedirectStandardError <- true
let  tf_get =  new Process()
tf_get.StartInfo <- start;
tf_get.Start()
let err = tf_get.StandardError.ReadToEnd();
let ok = tf_get.StandardOutput.ReadToEnd();
tf_get.WaitForExit()
printf "Done: %s" ok
printf "Error: %s" err
printf "Error: %d" tf_get.ExitCode
