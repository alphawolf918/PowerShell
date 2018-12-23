Add-Type -AssemblyName System.Speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.Rate = -1
$speak | Get-Member
$speak.Speak("Thank you for activating me.")
$speak.Speak("The current time is: " + $(Get-Date).ToShortTimeString())
$speak.Speak("Please wait. Loading system info now.")
systeminfo
$speak.Speak("Goodbye.")
$speak.Dispose()