// splits xml on attibute value of first elements under roots
// TODO: make it generic not onlu for concrete xml
// tried xslt, but failed cause things are complex on .net
//http://stackoverflow.com/questions/1525299/xpath-and-xslt-2-0-for-net
//http://stackoverflow.com/questions/10469094/how-to-split-xml-file-based-on-node-attribute-using-xslt
#if INTERACTIVE
#r "packages/FSharp.Data/lib/net40/FSharp.Data.dll"
#r @"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.XML.Linq.dll"
#endif
open System.Linq
open System.Xml.Linq

open System.Xml
open System

//open System.Xml.XPath
//open System.Xml.Xsl
//let doc = new XPathDocument(xml)
//let transfomation = @"w:\scripts\xml_split_attributed.xslt"
//let transfom = new XslCompiledTransform()
//transfom.Load(transfomation)
//transfom.Transform(xml,"test.txt")

open FSharp.Data

[<Literal>]
let xml = @"W:\scripts\install\batch-install-vsix.extensions.xml"

type Vsixs = XmlProvider<xml, Global=true>
let loaded = Vsixs.Load(xml)
let versions = seq { for x in loaded.Extensions do yield x.Version } |> Set.ofSeq
let settings = 
  let s = new XmlWriterSettings()
  s.CloseOutput <- true
  s

let writersCreate () =
  printfn "Creating writers" 
  versions  
  |> Seq.map (fun x-> (x,XmlTextWriter.Create(@"W:\scripts\install\batch-install-vsix.extensions."+x.ToString()+".xml",settings))) 
  |> Seq.toArray
  |> Map.ofArray 

#if INTERACTIVE
#else
[<EntryPoint>]
#endif
let main args  = 
  let ws = writersCreate()
  for x in versions do
    printfn "Start" 
    ws.Item(x).WriteStartElement("extensions")
  for x in loaded.Extensions do
    x.XElement.WriteTo(ws.Item(x.Version))
  for x in versions do
    let w = ws.Item(x)
    w.WriteEndElement()
    w.Flush()
    w.Close()
    printfn "End"
  0 

#if INTERACTIVE
main null |> ignore
#endif
