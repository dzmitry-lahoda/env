open System.Text
open System.Text.RegularExpressions
open System
open System.Linq

// converts hex byte encoded sting into Guid

let guidHexString = "09cd57e01bf8e6458efc05f7eeef62cf"

let toGuid x =
  let splitEachByte x = Regex.Matches(x, "[0-9a-f][0-9a-f]") |> Seq.cast<Match> |> Seq.map (fun x-> x.Value) |> Seq.toArray
  let newGuid bytes = new Guid(b = bytes)
  x |> splitEachByte |> Array.map (fun x-> Convert.ToByte(x,16))  |> newGuid
  
toGuid guidHexString