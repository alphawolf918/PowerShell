Add-Type -AssemblyName System.Speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.Rate = -1
$speak.Speak("Running diagnostics on audio drivers.")
Import-Module tr*
Get-TroubleshootingPack C:\Windows\diagnostics\system\Audio | Invoke-TroubleshootingPack
gci C:\Windows\diagnostics\system | % { Get-TroubleshootingPack $_.fullname} | ft name, RequiresElevation, Interactive -AutoSize
Get-TroubleshootingPack C:\Windows\diagnostics\system\Audio | select -ExpandProperty interactions
Get-TroubleshootingPack C:\Windows\diagnostics\system\Audio -AnswerFile C:\fso\audio.xml