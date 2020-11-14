#Script qui retourne un résumé de OS 

#OS info 
$OSInfo = Get-WmiObject Win32_OperatingSystem | Select Caption, Version, CSName, LastBootUpTime

#Info de la ram
$RAMinfo = Get-CIMInstance Win32_OperatingSystem | Select FreePhysicalMemory,TotalVisibleMemorySize
$cs = get-wmiobject -class "Win32_ComputerSystem"
$Mem = [math]::Ceiling($cs.TotalPhysicalMemory / 1024 / 1024 / 1024)
$ramfree = $RAMinfo.FreePhysicalMemory * 1.0E-6
$URam = ' - Used : ' + $UsedRam + ' Gi'
$FRam = ' - Free : ' + $ramfree + ' Gi'


# Ram Calculation
$UsedRam = $Mem - $ramfree



#IP principale 
$IPAddress = Get-WmiObject Win32_NetworkAdapterConfiguration | Where-Object {$_.Ipaddress.length -gt 1} 
$ipout = 'ip : '+$IPAddress.ipaddress[0]

#Nom de la machine
$name = 'Name : '+ $OSInfo.CSName

#OS name + version
$OSname = 'OS : '+ $OSInfo.Caption
$OSversion = 'Version : ' + $OSInfo.Version

#Date allumage
$date = 'Up since : ' + $OSInfo.LastBootUpTime

#espace disque 
$diskSpace = [math]::Round((Get-WmiObject Win32_LogicalDisk -Filter "DeviceID='C:'" | Measure-Object Size -Sum).sum /1gb)
$diskFree = [math]::Round((Get-WmiObject Win32_LogicalDisk -Filter "DeviceID='C:'" | Measure-Object FreeSpace -Sum).sum /1gb)
$diskUsed = [math]::Round($diskSpace-$diskFree)
$Dtotal = ' - Total : ' + $diskSpace + ' Go'
$DFree = ' - Free : ' + $diskFree + ' Go'
$DUsed = ' - Used : ' + $diskUsed + ' Go'

#write tout
Write-Output $ipout,$name,$OSname,$OSversion,$date,`n'RAM :',$URam,$FRam,`n'Disk C:\ :',$Dtotal,$DFree,$DUsed

$param = $args[0]
$time = $args[1]

#ajouroupas
$uptimemaj = '10.0.19041' #déclaration de la version à jour
$up = 'version à jour: true'
$down = 'version à jour : false'
If ($uptimemaj -eq $OSInfo.Version) #comparaison avec ma version de l'os
{
    Write-Output $up
}
Else {
    Write-Output $down
}

#ping
$rep_time = (Test-Connection -ComputerName "8.8.8.8" -Count 1  | measure-Object -Property ResponseTime -Average).average
$ping = 'ping :' +  $rep_time + 'ms'
Write-Output $ping 

#users
$Users = Get-LocalUser | Select Name  
Write-Output $Users

#Fermer ou verouiller 
if ($param -eq 'shutdown') {
   if ($time) {
        Write-Host 'Your computer will shutdown in'$time 'second(s)'
        Start-Sleep -Seconds $time
        shutdown
   }     
}
elseif ($param -eq 'lock') {
   if ($time) {
        Write-Host 'Your computer will be lock in'$time 'second(s)' 
        Start-Sleep -Seconds $time
        rundll32.exe user32.dll,LockWorkStation        
   }
}

#Fichier a télécharger
$downloadurl = "http://dl.google.com/android/installer_r20.0.1-windows.exe"
$UploadURL = "http://www.csm-testcenter.org/test?do=show&subdo=common&test=file_upload"

#Taille du fichier
$size = 100

#Stockage du fichier
$documents = [Environment]::GetFolderPath("MyDocuments")
$localfile = "$documents/100mb.bin"


#Telechargement
Write-Output 'Calculating download speed...'
$downloadstart_time = Get-Date
$webclient = New-Object System.Net.WebClient
$webclient.DownloadFile($downloadurl, $localfile)

#Vitesse de téléchargement
$downloadtimetaken = $((Get-Date).Subtract($downloadstart_time).Seconds)
$downloadspeed = [math]::Round(($size / $downloadtimetaken)*8, 1)
Write-Output "Time taken: $downloadtimetaken second(s)   |   Download Speed: $downloadspeed mbps"


#upload un fichier
Write-Output 'Calculating upload speed...'
$uploadstart_time = Get-Date
$webclient.UploadFile($UploadURL, $localfile) > $null;

#Vitesse d'upload
$uploadtimetaken = $((Get-Date).Subtract($uploadstart_time).Seconds)
$uploadspeed = [math]::Round(($size / $uploadtimetaken) * 8, 1)
Write-Output "Time taken: $uploadtimetaken second(s)   |   Upload Speed: $uploadspeed mbps" 

#On supprime les tests
Remove-Item –path $localfile
Write-Output `n
pause
