# Host OS
Pour trouver le Host OS j'utilise la commande **systeminfo** qui me permet d'avoir les infos générales de mon pc 
j'obtiens donc :
```
* nom de machine : DESKTOP-ARDRIRA
* OS et version : Microsoft Windows 10 Famille
* mon architecture de processeur (64-bit)
* ma quantité de RAM : Mémoire physique totale: 16 323 Mo
* La marque de mon processeur et son modèle : 1 processeur(s) installé(s).
                                            [01] : Intel64 Family 6 Model 94 Stepping 3 GenuineIntel ~2592 MHz
```
Afin d'avoir des infos supplémentaire sur ma RAM j'utilise la commande **wmic memorychip list full** .
J'obtiens alors :
Model = 
Description=Physical Memory

je ne trouve donc pas le modèle de la RAM

# Devices
 
Ensuite pour trouver les informations de mon disque dur j'utilise la commande **diskpart** qui m'ouvre une autre fenêtre de commande.
Dans cette nouvelle fenêtre je sélectionne mes 2 disques durs puis j'utilise la commande **detail disk** :
* sel disk 0
* sel disk 1  

J'obtiens donc :
```
NVMe SAMSUNG MZVPV256
ID du disque : {C8AD4BCC-4267-47DF-83D0-596A346202DF}
Type : RAID 
État : En ligne
Chemin : 7
Cible : 0
ID LUN : 0
Chemin d’accès de l’emplacement : PCIROOT(0)#PCI(1700)#RAID(P07T00L00)
État en lecture seule actuel : Non
Lecture seule : Non
Disque de démarrage : Oui
Disque de fichiers d’échange : Oui
Disque de fichiers de mise en veille prolongée : Non
Disque de fichiers de vidage sur incident : Oui
Disque en cluster  : Non
```

  N° volume   Ltr  Nom          Fs     Type        Taille   Statut     Info
  ----------  ---  -----------  -----  ----------  -------  ---------  --------
  Volume 2     C   OS           NTFS   Partition    237 G   Sain       Démarrag
  Volume 3                      NTFS   Partition    592 M   Sain
  Volume 4         SYSTEM       FAT32  Partition    260 M   Sain       Système

Quand a la carte graphique elle est obtenu grace au **systeminfo** au dessus.

Afin de trouver le processeur j'utilise la commande **Get-WmiObject Win32_VideoController**

On obtient alors toutes les informations de la carte graphique : 
```
AcceleratorCapabilities      :
AdapterCompatibility         : NVIDIA
AdapterDACType               : Integrated RAMDAC
AdapterRAM                   : 3221225472
Availability                 : 3
CapabilityDescriptions       :
Caption                      : NVIDIA GeForce GTX 970M
ColorTableEntries            :
ConfigManagerErrorCode       : 0
ConfigManagerUserConfig      : False
CreationClassName            : Win32_VideoController
CurrentBitsPerPixel          : 32
CurrentHorizontalResolution  : 1920
CurrentNumberOfColors        : 4294967296
CurrentNumberOfColumns       : 0
CurrentNumberOfRows          : 0
CurrentRefreshRate           : 75
CurrentScanMode              : 4
CurrentVerticalResolution    : 1080
Description                  : NVIDIA GeForce GTX 970M
DeviceID                     : VideoController1
DeviceSpecificPens           :
DitherType                   : 0
DriverDate                   : 20200705000000.000000-000
DriverVersion                : 27.21.14.5167
ErrorCleared                 :
ErrorDescription             :
ICMIntent                    :
ICMMethod                    :
InfFilename                  : oem42.inf
InfSection                   : Section042
InstallDate                  :
InstalledDisplayDrivers      : C:\WINDOWS\System32\DriverStore\FileRepository\nvami.inf_amd64_72390dc4652f28fa\nvldumdx
                               .dll,C:\WINDOWS\System32\DriverStore\FileRepository\nvami.inf_amd64_72390dc4652f28fa\nvl
                               dumdx.dll,C:\WINDOWS\System32\DriverStore\FileRepository\nvami.inf_amd64_72390dc4652f28f
                               a\nvldumdx.dll,C:\WINDOWS\System32\DriverStore\FileRepository\nvami.inf_amd64_72390dc465
                               2f28fa\nvldumdx.dll
LastErrorCode                :
MaxMemorySupported           :
MaxNumberControlled          :
MaxRefreshRate               : 75
MinRefreshRate               : 75
Monochrome                   : False
Name                         : NVIDIA GeForce GTX 970M
NumberOfColorPlanes          :
NumberOfVideoPages           :
PNPDeviceID                  : PCI\VEN_10DE&DEV_1618&SUBSYS_1CED1043&REV_A1\4&6D9C67A&0&0008
PowerManagementCapabilities  :
PowerManagementSupported     :
ProtocolSupported            :
ReservedSystemPaletteEntries :
SpecificationVersion         :
Status                       : OK
StatusInfo                   :
SystemCreationClassName      : Win32_ComputerSystem
SystemName                   : DESKTOP-ARDRIRA
SystemPaletteEntries         :
TimeOfLastReset              :
VideoArchitecture            : 5
VideoMemoryType              : 2
VideoMode                    :
VideoModeDescription         : 1920 x 1080 x 4294967296 couleurs
VideoProcessor               : GeForce GTX 970M
PSComputerName               : DESKTOP-ARDRIRA
```
On termine enfin avec le CPU on utilise la commande **wmic CPU list full**
qui nous renvoie :
```
AddressWidth=64
Architecture=9
Availability=3
Caption=Intel64 Family 6 Model 94 Stepping 3
ConfigManagerErrorCode=
ConfigManagerUserConfig=
CpuStatus=1
CreationClassName=Win32_Processor
CurrentClockSpeed=2592
CurrentVoltage=11
DataWidth=64
Description=Intel64 Family 6 Model 94 Stepping 3
DeviceID=CPU0
ErrorCleared=
ErrorDescription=
ExtClock=100
Family=198
InstallDate=
L2CacheSize=1024
L2CacheSpeed=
LastErrorCode=
Level=6
LoadPercentage=9
Manufacturer=GenuineIntel
MaxClockSpeed=2592
Name=Intel(R) Core(TM) i7-6700HQ CPU @ 2.60GHz
OtherFamilyDescription=
PNPDeviceID=
PowerManagementCapabilities=
PowerManagementSupported=FALSE
ProcessorId=BFEBFBFF000506E3
ProcessorType=3
Revision=24067
Role=CPU
SocketDesignation=U3E1
Status=OK
StatusInfo=3
Stepping=
SystemCreationClassName=Win32_ComputerSystem
SystemName=DESKTOP-ARDRIRA
UniqueId=
UpgradeMethod=1
Version=
VoltageCaps=
```
On sait donc grace a la ligne **Architecture** que mon processeur possède 8 coeur 
# Users
On utilise la commande **net users**
qui nous renvoi tout les utilisateurs et le profil admin :
```
comptes d’utilisateurs de \\DESKTOP-ARDRIRA

-------------------------------------------------------------------------------
Administrateur           DefaultAccount           fabadie
Invité                   WDAGUtilityAccount
La commande s’est terminée correctement.
```
# Etape 2
