Next guideline are used for all scripting code
---
- when possible native mature and widely available command line tools should be called
- no ad-hock scripting intermeidate lagnuages used, like `.cmd` `.bat` `.vbs`
-- not custom formatted texts like `.reg`, but `xml` `json` `yaml`
- `PowerShell` is used to bootstrap `F#` only. All other done via `F#`
- `F#` used for all possible scripts as language 
-- because`F#` provides scripting editing experince when needed, but generating more sustainable texts
-- because `F#` can be statically compiled into `.dll` for fast lean execution
- `F#` is expressibe for many embeding Domain Specific Languages 

F# script design guidelines
---

**Gluing code projects from original native to system languages**

Anyway scripter needs to learn underlying language to be effective. So there is only need to project underlying language into F#.

- E.g F# type provider for JSON ElasticSearch mappings and for database entities from SQL/ADO. 
- E.g raw REST requests/responce and raw URL combinator.


**Compiled means configured**

- I.e. during compilation, credentials availability checked and even some services are called (REST or DB). 
- Fail to compile means fail to configure. 
- System should be configured natively first before code.
- Compiled script will need whole configuration presented to run.

**Flat views**

- If some scripts needs only REST, it will not depend on database compilation and configuration.
- Internally configuration and entities may be hierarchucal and complex, but for sripting these are flaten for usage.

F# script coding guidelines:
---
- each script has header describing purpose and result with single line
- All dependencies resolved via Paket. Each script has line to run packet in header.
- no `new` keyword
- no types in method declarations parameters 
- no handled exceptions throws, for handled errors use Option/Railway programmin. 
- Totally fail if exception
- Share `#r` list via `references.fsx`
- By default scipts are idempotent, may compile and run twice. Given environment same will get same results.
- Decide what to 2 if same stucture compiled 2 in different namespaces via 2 `#load` do create `.fs` file with namespace.

No dynamic languages for scripting like Python, bash, Ruby, LISP. For system level scripting use `Rust`.

See also
---

- https://www.infoq.com/news/2017/01/fsharp-project-springfield

TODO:
---
- rewrite ps1 and reg and vbs files with F#




