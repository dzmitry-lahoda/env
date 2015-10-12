/// deletes all links from destop so all starts are done via text search for power user

open System
open System.IO
type Env = Environment
let  userDesktop = DirectoryInfo(Env.GetFolderPath(Env.SpecialFolder.DesktopDirectory))
let  commonDesktop = DirectoryInfo(Env.GetFolderPath(Env.SpecialFolder.CommonDesktopDirectory))
let getLinks (dir:DirectoryInfo) = dir.GetFiles("*.lnk")
let links =  Array.append  (getLinks(commonDesktop)) (getLinks(userDesktop))

links |> Array.iter (fun x-> File.Delete(x.FullName)) 
