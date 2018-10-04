:: Starts Visual Studio 2017 with code analysis turned off to minimize [lead time](https://en.wikipedia.org/wiki/Lead_time).
:: Most probably you will need start Visual Studio with code analysis before sharing/uploading/publishing/pushing code. 
:: You may use [Process Hacker] devenv.exe -> Environment -> DevDivCodeAnalysisRunType = Enabled to set value back without restart
::
::
::   To disable Sonar Analysis or other Roslyn analyzers may use next in `.csproj` files:
::   ```
::   <ItemGroup>
::     <Analyzer Condition="'$(DevDivCodeAnalysisRunType)' != 'Disabled'" Include="$(SolutionDir)CodeAnalRules\SonarAnalyzer.CSharp.dll" />
::   </ItemGroup>
::   ```
::
:: Other ways to improve Eval part REPL of:
::
::   Assign hot key to build only this project `Build.BuildSelection` to get only modified project built, I have used `Ctrl + B + B`
::   https://stackoverflow.com/questions/247745/is-there-a-standard-keyboard-shortcut-to-build-the-current-project-in-visual-stu
::
::   May stop build on first error
::   https://marketplace.visualstudio.com/items?itemName=EinarEgilsson.StopOnFirstBuildError
::
::   - Attach to previously attached process via https://marketplace.visualstudio.com/items?itemName=ErlandR.ReAttach
::   - Debugger.Break in relevant process start.
:: 
::   Mount [in memory virtual disk](https://sourceforge.net/projects/imdisk-toolkit/), copy code here and work with it. Several time faster than drive.
::
::   Obtain (better hardware) [https://komp.1k.by/utility-harddisks/samsung/Samsung_MZ_V7P512BW-3243815.html + https://ark.intel.com/products/134903/Intel-Core-i9-8950HK-Processor-12M-Cache-up-to-4_80-GHz]
::
::   Dump in one run and analyze later (use your language and dump target as needed) by placing next in all possibly related places:
::   ```
::   System.Diagnostics.Debug.WriteLine("=#-");System.Diagnostics.Debug.WriteLine(new System.Diagnostics.StackFrame().GetMethod().DeclaringType.Name + "." + new System.Diagnostics.StackFrame().GetMethod().Name + "." + new System.Diagnostics.StackFrame(true).GetFileLineNumber() + ";Thread: " + System.Threading.Thread.CurrentThread.ManagedThreadId + ";Ticks:" + System.DateTime.UtcNow.ToString("MM.ddTHH.mm.ss.fffffff", System.Globalization.CultureInfo.InvariantCulture));
::   System.Diagnostics.Debug.WriteLine((null) + " " + (null) + " " + (null)); System.Diagnostics.Debug.WriteLine("=#");
::   ```
::   (try some `object OR debug dump` assembly from nuget.org)
::   
::   Use Immediate Window or code in Watch to run code when hit breakpoint.
::   
set DevDivCodeAnalysisRunType=Disabled
"C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\IDE\devenv.exe"