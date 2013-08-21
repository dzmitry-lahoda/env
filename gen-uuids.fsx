 // Generates several kinds of pseudo unique IDs (32bit,64bit,128bit,256bit) using crypto service provider.
 // Prints them standard out in unsigned integer format.
 // @Author Dzmitry Lahoda
 // Sample output:
 // 506221985
 // 14934970197285413438
 // 330697221413339266712634430034777116618
 // 16511252136811228757123491249204953747840504980121631264336072119409786077313
 #r "System.Numerics"
 open System
 open System.Security.Cryptography
 open System.Numerics
 let generator = new RNGCryptoServiceProvider();
 
 let id16data  = Array.zeroCreate<byte> 2
 let id32data  = Array.zeroCreate<byte> 4
 let id64data  = Array.zeroCreate<byte> 8
 let id128data = Array.zeroCreate<byte> 16
 let id256data = Array.zeroCreate<byte> 32
 let bigpositive = Array.zeroCreate<byte> 2

 let uid16 = 
   generator.GetBytes(id16data)
   BitConverter.ToUInt16(id16data,0)
 
 let uid32 = 
   generator.GetBytes(id32data)
   BitConverter.ToUInt32(id32data,0)
 
 let uid64 = 
   generator.GetBytes(id64data)
   BitConverter.ToUInt64(id64data,0)
 let uid128 = 
   generator.GetBytes(id128data)
   let positive = Array.append id128data bigpositive
   let number = new BigInteger(positive)
   number

 let uid256 = 
   generator.GetBytes(id256data)
   let positive = Array.append id256data bigpositive
   let number = new BigInteger(positive)
   let asd = number.ToByteArray();
   number
   
 printfn "%d" uid16
 printfn "%d" uid32
 printfn "%d" uid64
 printfn "%s" (uid128.ToString())
 printfn "%s" (uid256.ToString())