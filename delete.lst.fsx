/// Deletes files listed in file
open System.IO
File.ReadAllLines("delete.lst.txt") |> Array.iter  File.Delete