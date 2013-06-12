# Cleans all Windows Domain credentials for specified account.
# Sometimes when the password is changed, it is important to update stored credentials in the Windows Credential Manager. Otherwise, account may be sporadically locked out due to multiple failed logon attempts. 
# @Author Dzmitry.Lahoda@gmail.com
# @Version 0.1
# @TODO:  and web browsers clean up
# @TODO: make it safer for layman persons
# Usage:
#  cleancred "Dzmitry_Lahoda"

$credentials = cmdkey /list

    #Target: LegacyGeneric:target=MS.Outlook:Dzmitry.Lahoda@sample.com:PUT
    #Type: Generic 
    #User: TASMANIA\Dzmitry.Lahoda
    
    #Target: Domain:target=intranet.sample.com
    #Type: Domain Password
    #User: SAMPLE\dzmitry_lahoda

$username = $args[ 0 ];
$credentials = $credentials.split("`n")

$targets = ("","")

for($i=1
     $i -le $credentials.length
     $i++){
       if (-not ($credentials[$i])){continue}; # null or empty string
       if ( $credentials[$i].contains("Target")){
         if ($i+2 -le $credentials.length){ #User propery goes 3rd starting from Target
           if ($credentials[$i+2].contains("User")){
              if ($credentials[$i+2].contains($username)){
                $targets = $targets + $credentials[$i].Remove(0,12) # leaves only name
              }
           }
         }
       }
     }

"Deleting next:"
$targets

foreach ($target in $targets){
if ($target) {
  if (-not ($target -eq "")){
     cmdkey /delete:$target 
   }
  }
}