#if COMPILED
#else
#r "../packages/FSharp.Data/lib/net40/FSharp.Data.dll"
#r "../packages/FSharp.Management/lib/net40/FSharp.Management.dll"
#endif

module Localnet =

  open System
  open System.IO
  
  open System.Net
  open System.Net.Sockets

  open FSharp.Data
  open FSharp.Management

  let getHostAddress name = Dns.GetHostAddresses(name).[0]  
    
  
  type Windows = FileSystem<"C:/Windows/System32/drivers/etc">
  
  /// Usage:
  /// updateHosts "127.0.0.1" "apps.skype.com"
  /// Remarks:
  /// requires admin rights
  /// if nothing to change nothing changed
  /// only one line changed if needed and only part which is needed to update
  /// TODO: add way to map `long.name.to.server` with `myname`
  /// TODO: add optional ping as part of addition
  /// TODO: support ::1 and localhost for 127.0.0.1
  /// TODO: lock file during operation
  /// TODO: ensure apps.skype.com and skype.com  can coexist    
  /// TODO: report about dublicates if exist  
  /// TODO: handle exceptions of IO with good error messages (opt to no rethrow)     
  /// TODO: validate ip4 address and hostname using Chessie
  /// TODO: add ovverride with IP4Address
  /// TODO: allow passing stream to allow testing
  /// TODO: test performance on 1000 of items
  let updateHosts ip4 (hostname:string) = 
    let normalized = hostname.ToLowerInvariant()

    let hosts  = File.ReadLines(Windows.hosts) |> Seq.filter (fun x-> x.StartsWith("#"))  |> Seq.map ( fun x-> x.Trim().ToLowerInvariant())
    let exising = hosts |> Seq.tryFind   (fun x-> x.EndsWith(normalized))
    match exising with
      | None ->  
        do File.AppendText(sprintf "%s %s" ip4 hostname) |> ignore
        "Update with new string"
      | Some(x) -> 
        if x.StartsWith(ip4) then 
          "Nothing changed" 
        else
          
          "Updated IP"
          
          

  // Gets inter network ip4 address started with @prefix like `42.123`
  // Returns  like `42.123.1.2`
  let local prefix  = 
    let net =  System.Net.NetworkInformation.NetworkInterface.GetAllNetworkInterfaces() 
    let ips = net |> Seq.map (fun x-> x.GetIPProperties()) |> Seq.collect (fun x -> x.UnicastAddresses)
    let candidates = ips |> Seq.where (fun x-> x.Address.AddressFamily = AddressFamily.InterNetwork )
    candidates  |> Seq.map (fun x-> x.Address.ToString()) |> Seq.where (fun x -> x.Contains(prefix)  ) |>Seq.exactlyOne 

