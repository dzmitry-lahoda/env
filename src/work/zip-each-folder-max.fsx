open System
open System.Diagnostics
open System.IO
open FSharp
open FSharp.Core

let command dir = 
  // utra LZMA 7Z
  let s = sprintf  "a \"%s.7z\" \"%s\" -t7z -mx9" dir dir
  printfn "%s" s
  let a = ProcessStartInfo("C:/Program Files/7-Zip/7z.exe", s)
  a.RedirectStandardError <-true
  a.RedirectStandardInput <-true
  a.RedirectStandardOutput <-true
  a.UseShellExecute <- false
  a

let root = @"folder name"

let count (pass: array<'a>) =
  printfn "%d" pass.Length
  pass

let start dir =
  let p = new Process()
  p.StartInfo <- command(dir)
  let c = Process.GetCurrentProcess()
  do p.Start()
  p

Directory.GetDirectories(root)  |>  count |> Seq.map start |> Seq.iter (fun x-> x.WaitForExit())
