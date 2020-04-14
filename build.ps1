$PathToCompiler = 'C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe'
$SourceCodePath = $(Join-Path $PSScriptRoot -ChildPath 'src')
$OutputPath = $(Join-Path $PSScriptRoot -ChildPath 'out')

# create output folder if does not exist
if (!(Test-Path $OutputPath)) {
    New-Item -ItemType Directory $OutputPath
}

. $PathToCompiler /target:exe /out:"$OutputPath\HelloWorld.exe" /recurse:"$SourceCodePath\*"