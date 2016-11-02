Next guideline is used for all installaton code above:
- when possible native mature and widely available command line tools should be called
- no ad-hock scripting intermeidate lagnuages used, like `.cmd` `.bat` `.vbs`
-- not custom formatted texts like `.reg`, but `xml` `json` `yaml`
- `PowerShell` is used to bootstrap `F#`. All other done via `F#`
- `F#` used for all possible scripts as language 
-- because`F#` provides scripting editing experince when needed, but generating more sustainable texts
-- because `F#` can be statically compiled into `.dll` for fast lean execution
- `F#` is expressibe for many embeding Domain Specific Languages 

F# script coding guidelines:
- All dependencies resolved via Paket. Each script has line to run packet in header.
- no `new` keyword
- no types in method declarations parameters 
- no handled exceptions throws, for handled errors use Option/Railway programmin. 
- Totally fail if exception
- Share `#r` list via `references.fsx`
- By default scipts are idempotent, may compile and run twice. Given environment same will get same results.
- Decide what to 2 if same stucture compiled 2 in different namespaces via 2 `#load` do create `.fs` file with namespace.

No dynamic languages for scripting like Python, bash, Ruby, LISP. For system level scripting use `Rust`.

TODO:
- rewrite ps1 and reg and vbs files with F#




