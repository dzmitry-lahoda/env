Update-Module posh-cargo
Update-Module DockerCompletion
Update-Module PSKubectlCompletion
Update-Module Posh-Git

Import-Module DockerCompletion
Import-Module PSKubectlCompletion
Import-Module Posh-Git
Import-Module posh-cargo

# PowerShell parameter completion shim for the dotnet CLI
Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock {
    param($commandName, $wordToComplete, $cursorPosition)
        dotnet complete --position $cursorPosition "$wordToComplete" | ForEach-Object {
           [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
}

Set-Alias tf -Value terraform -Scope Global
Set-Alias k -Value kubectl -Scope Global
Set-Alias tf terraform
Set-Alias dn -Value dotnet -Scope Global


