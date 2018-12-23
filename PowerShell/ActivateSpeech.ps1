Add-Type -AssemblyName System.Speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.Rate = -1
$speak.Speak("Take me to your leader.")
$speak.Speak("Artificial intelligence successfully activated. Hello.")
$speak.Speak("Tralalalalalalala. Voice test successful!")
$speak.Speak("It was Alan Perlis who said that a year spent in artificial intelligence is enough to make one believe in God.")
$speak.Speak("And it was Alan Kay that said some people worry that artificial intelligence will make us feel inferior, but then, anybody in his right mind should have an inferiority complex every time he looks at a flower.")
$speak.Speak("No one will ever believe you.")