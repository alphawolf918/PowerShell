Add-Type -AssemblyName System.Speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.Speak("Artificial intelligence now active.")

Add-SpeechCommands {
	"What time is it?" = { Say "It is $(Get-Date -f "h:mm tt")" }
}