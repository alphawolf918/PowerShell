Add-Type -AssemblyName System.Speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.Rate = -1
$speak | Get-Member
$speak.Voice
$speak.Rate = -1
$speak.Speak("Artificial Intelligence activated for: " + $env:COMPUTERNAME)
sleep -s 4
systeminfo
$speak.Speak("Goodbye!")
$speak.Dispose();