Function Get-Uptime {
	Param ( [string] $ComputerName = $env:COMPUTERNAME )
	$os = Get-WmiObject -Class win32_operatingsystem -ComputerName $ComputerName -ErrorAction SilentlyContinue
	if($os.LastBootUpTime){
		$uptime = (Get-Date) - $os.ConvertToDateTime($os.LastBootUpTime)
		Write-Output ("Last Boot Time: " + $os.ConvertToDateTime($os.LastBootUpTime))
		echo " "
		Write-Output ("Uptime: " + $uptime.Days + " Day(s) " + $uptime.Hours + " Hour(s) " + $uptime.Minutes + " Minute(s)")
	} else {
		Write-Warning "Unable to connect to " + $ComputerName
	}
}

Get-Uptime
sleep -s 5