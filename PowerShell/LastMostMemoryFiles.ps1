Param(
[int]$numProc
)
ps | sort -p ws | select -last $numProc