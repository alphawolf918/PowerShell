.\ActivateSpeech
$Shell = New-Object -ComObject ("WScript.Shell")
$speak.Speak("What would you like to name this shortcut? No special characters allowed.")
$ShortcutName = Read-Host -Prompt "What would you like to name this shortcut? No special characters allowed."
$speak.Speak("What website is this shortcut going to?")
$ShortcutLink = Read-Host -Prompt "What website is this shortcut going to? e.g.: http://www.example.com"
$Fav = $Shell.CreateShortcut($env:USERPROFILE + "\Desktop\" + $ShortcutName + ".url")
$Fav.TargetPath = $ShortcutLink
$Fav.Save();
$speak.Dispose();