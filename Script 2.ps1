﻿$param = $args[0]
$time = $args[1]

if ($param -eq 'shutdown') {
   if ($time) {
        if ($time -is [int]) {
            Write-Host 'shutdown will come in'$time 'second(s)'
            Start-Sleep -Seconds $time
            Stop-Computer
        }
        else {
            Write-Host '"'$time '" is invalid. You need to put a number.' -ForegroundColor Red
        }
   }
   else {
        Write-Host 'You need to put a number :' -ForegroundColor Red
        Write-Host 'shutdown <time>' -ForegroundColor Gray
   }     
}
elseif ($param -eq 'lock') {
   if ($time) {
        if ($time -is [int]) {
            Write-Host 'lock in'$time 'second(s)' 
            Start-Sleep -Seconds $time
            rundll32.exe user32.dll,LockWorkStation        
        }
        else {
            Write-Host '"'$time '" is invalid. You need to put a number.' -ForegroundColor Red
        }
   }
   else {
        Write-Host 'You need to put a number :' -ForegroundColor Red
        Write-Host 'lock <time>' -ForegroundColor Gray
   }
}
else {
    Write-Host 'You need to put a valid argument :' -ForegroundColor Red
    Write-Host ' - shutdown <time>'`n '- lock <time>' -ForegroundColor Gray
}
