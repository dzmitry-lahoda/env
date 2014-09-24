/// Splits txt book into numbered chapters
/// Use case:
/// Pdf was converted to txt and feeded into speech generation engine to create audio book

open System.IO
open System.Text.RegularExpressions
open System.Text

let location = "c:/"  // disk to read book
let bookName = "doman.txt" // book name, e.g. Bible.txt
let delimeter = "Глава" // delimenter size e.g Chapter
let outputFolder = location + bookName+".split/"
let minLen = 4500;// allows to skip table of content
let splitter  = delimeter + @"\s[0-9]+"
let file = File.ReadAllText("c:/"+bookName) 


let matches = Regex.Matches(file,splitter) |> Seq.cast<Match> |> List.ofSeq
printfn "%s" (file.Length.ToString())


let rec split (matches:List<Match>) (block:string) =
  
  match matches with
    | head :: [] -> 
       File.WriteAllLines(outputFolder+"list.txt",Directory.GetFiles(outputFolder))
    | head :: tail -> 
      let finish = tail.Head.Index - 1
      let len = finish-head.Index
      if len > minLen then 
        File.WriteAllText(outputFolder+head.Index.ToString()+".txt",file.Substring(head.Index,len))
      split tail block
      ()

    | [] -> ()
  

Directory.CreateDirectory(outputFolder)
split matches file



