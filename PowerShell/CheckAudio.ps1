Add-Type -AssemblyName System.Speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.Rate = -1
$speak.Speak("Running diagnostics on audio drivers.")
Import-Module tr*
Get-TroubleshootingPack C:\Windows\diagnostics\system\Audio | Invoke-TroubleshootingPack