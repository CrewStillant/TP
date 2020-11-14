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


  N° volume   Ltr  Nom          Fs     Type        Taille   Statut     Info
  ----------  ---  -----------  -----  ----------  -------  ---------  --------
  Volume 2     C   OS           NTFS   Partition    237 G   Sain       Démarrag
  Volume 3                      NTFS   Partition    592 M   Sain
  Volume 4         SYSTEM       FAT32  Partition    260 M   Sain       Système
```

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
```
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
# Processus 
On utilise la commande **tasklist** pour obtenir toutes les taches en cours 
Exemple :
```
Nom de l’image                 PID Nom de la sessio Numéro de s Utilisation
========================= ======== ================ =========== ============
System Idle Process              0 Services                   0         8 Ko
System                           4 Services                   0    14 120 Ko
Secure System                   72 Services                   0    40 296 Ko
Registry                       132 Services                   0    59 672 Ko
smss.exe                       784 Services                   0     1 012 Ko
csrss.exe                      884 Services                   0     3 660 Ko
```

# Network

Pour afficher les cartes réseaux de la machine il suffit d'utiliser la commande **ip config** 
On obtient alors :
```
Carte Ethernet Ethernet :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . : lan

Carte réseau sans fil Connexion au réseau local* 2 :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :

Carte réseau sans fil Connexion au réseau local* 4 :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :

Carte réseau sans fil Wi-Fi :

   Suffixe DNS propre à la connexion. . . : auvence.co
   Adresse IPv6 de liaison locale. . . . .: fe80::658d:c9e9:c158:e0e2%16
   Adresse IPv4. . . . . . . . . . . . . .: 10.33.2.169
   Masque de sous-réseau. . . . . . . . . : 255.255.252.0
   Passerelle par défaut. . . . . . . . . : 10.33.3.253

Carte Ethernet Connexion réseau Bluetooth :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :
   ```
Suite a cela j'utilise la commande **netstat** 
On obtient :
  ```
  Proto  Adresse locale         Adresse distante       État
  TCP    10.33.2.169:51196      40.67.251.132:https    ESTABLISHED
  TCP    10.33.2.169:52025      stackoverflow:https    ESTABLISHED
  TCP    10.33.2.169:53145      ec2-52-193-206-70:https  ESTABLISHED
  TCP    10.33.2.169:53186      wm-in-f188:5228        ESTABLISHED
  TCP    10.33.2.169:53924      162.159.133.234:https  ESTABLISHED
  TCP    10.33.2.169:54055      lb-140-82-114-26-iad:https  ESTABLISHED
  TCP    10.33.2.169:54072      93.184.220.29:http     CLOSE_WAIT
  TCP    10.33.2.169:54108      ec2-52-54-178-155:https  ESTABLISHED
  TCP    10.33.2.169:54109      ec2-52-54-178-155:https  ESTABLISHED
  TCP    10.33.2.169:54110      81.19.104.108:https    ESTABLISHED
  TCP    127.0.0.1:5354         DESKTOP-ARDRIRA:51204  ESTABLISHED
  TCP    127.0.0.1:5354         DESKTOP-ARDRIRA:51207  ESTABLISHED
  TCP    127.0.0.1:49684        DESKTOP-ARDRIRA:51464  ESTABLISHED
  TCP    127.0.0.1:49684        DESKTOP-ARDRIRA:51507  ESTABLISHED
  TCP    127.0.0.1:49684        DESKTOP-ARDRIRA:51610  ESTABLISHED
  TCP    127.0.0.1:49684        DESKTOP-ARDRIRA:51611  ESTABLISHED
  TCP    127.0.0.1:49684        DESKTOP-ARDRIRA:51776  ESTABLISHED
  TCP    127.0.0.1:49684        DESKTOP-ARDRIRA:52003  ESTABLISHED
  TCP    127.0.0.1:49684        DESKTOP-ARDRIRA:53101  ESTABLISHED
  TCP    127.0.0.1:49684        DESKTOP-ARDRIRA:53107  ESTABLISHED
  TCP    127.0.0.1:49684        DESKTOP-ARDRIRA:53108  ESTABLISHED
  TCP    127.0.0.1:49684        DESKTOP-ARDRIRA:53141  ESTABLISHED
  TCP    127.0.0.1:49684        DESKTOP-ARDRIRA:53936  ESTABLISHED
  TCP    127.0.0.1:49684        DESKTOP-ARDRIRA:54050  ESTABLISHED
  TCP    127.0.0.1:51185        DESKTOP-ARDRIRA:65001  ESTABLISHED
  TCP    127.0.0.1:51204        DESKTOP-ARDRIRA:5354   ESTABLISHED
  TCP    127.0.0.1:51207        DESKTOP-ARDRIRA:5354   ESTABLISHED
  TCP    127.0.0.1:51464        DESKTOP-ARDRIRA:49684  ESTABLISHED
  TCP    127.0.0.1:51507        DESKTOP-ARDRIRA:49684  ESTABLISHED
  TCP    127.0.0.1:51610        DESKTOP-ARDRIRA:49684  ESTABLISHED
  TCP    127.0.0.1:51611        DESKTOP-ARDRIRA:49684  ESTABLISHED
  TCP    127.0.0.1:51776        DESKTOP-ARDRIRA:49684  ESTABLISHED
  TCP    127.0.0.1:52003        DESKTOP-ARDRIRA:49684  ESTABLISHED
  TCP    127.0.0.1:53101        DESKTOP-ARDRIRA:49684  ESTABLISHED
  TCP    127.0.0.1:53107        DESKTOP-ARDRIRA:49684  ESTABLISHED
  TCP    127.0.0.1:53108        DESKTOP-ARDRIRA:49684  ESTABLISHED
  TCP    127.0.0.1:53141        DESKTOP-ARDRIRA:49684  ESTABLISHED
  TCP    127.0.0.1:53936        DESKTOP-ARDRIRA:49684  ESTABLISHED
  TCP    127.0.0.1:54050        DESKTOP-ARDRIRA:49684  ESTABLISHED
  TCP    127.0.0.1:65001        DESKTOP-ARDRIRA:51185  ESTABLISHED
  ```
# Gestion des Softs 
Ils y a plusieurs intérêts a utiliser un gestionnaire de paquets comme par exemple une vitesse de téléchargement plus élevé et le fait que on est plus a chercher partout sur internet.
De plus l'identité des personnes est protégée car on passe par des serveurs tiers.
Sur la sécurité, les logiciels n'ont pas de spyware ou malware.
Sur windows, on utilise choco list -l pour obtenir la liste des paquets installés.
Pour obtenir les infos d'un paquet, on effectue **choco info <paquet>**. On peut ainsi connaitre sa provenance.

# Machine virtuelle
Pour commencer le partage, on doit effectuer la commande : **New-SmbShare -Name "name" -Path "path"** pour créer un nouveau partage avec Samba.
Pour accéder à un fichier partager depuis la VM on commence par faire une connexion ssh sur powershell avec ssh root@192.168.120.50 puis on fait la commande **mount -t cifs -o username=<UserName>,password=<PassWord> //192.168.1.10/share /opt/partage**
Et le partage de fichier entre notre Os (Windows) et notre machine virtuelle (CentOs) est opérationelle.
