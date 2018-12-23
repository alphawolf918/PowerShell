Add-Type -AssemblyName System.Speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer

Import-Module C:\PowerShell\Speech.psm1
Start-Listening

$speak.Rate = -1

Add-SpeechCommands @{
	"What time is it?" = { Out-Speech "It is $(Get-Date -f "h:mm tt")" }
	"What day is it?"  = { Say $(Get-Date -f "dddd, MMMM dd") }
	"What year is it?" = { Say $(Get-Date -f "yyyy") }
	"What's running?"  = {
           $proc = ps | sort ws -desc
           Out-Speech $("$($proc.Count) processes, including $($proc[0].name), which is using " +
                  "$([int]($proc[0].ws/1mb)) megabytes of memory")
    }
	"Run Notepad plus plus" = { & "C:\Program Files (x86)\Notepad++\notepad++.exe" }
	"Run network manager" = { 
		Say "Running Python Network Manager"
		& "C:\Users\pshannon\Documents\Programs\PyNetManager.exe"
	}
	"Run network speed logger" = { & "C:\Tasks\PyNet.py" }
} -Computer "Eric" -Verbose