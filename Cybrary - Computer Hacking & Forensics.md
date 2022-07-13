# Cybrary - Computer Hacking & Forensics
Type : #t/Course
Time Created : 2022-06-10 08:39
Last Modified : 2022-06-10 08:39
Subjects: #s/Cybersecurity  #s/Forensics
Progress: #p/🟡 
URL: https://app.cybrary.it/immersive/13139972/activity/6479
Priority: #i/🟥 

### Computer Forensics Today
#### Types of Computer Crimes
- Phishing 
- Malware
- Identity Theft
- Financial Fraud
- Cyberterrorism
- Cyberextortion
- Cyberwarfare
- Cyberextortion
- Cyberwarfare
- Cyberbullying
- Drug Trafficking

#### Challenges for Investigators
- Encryption
- Steganography
- Data wiping / Anti-forensics
- Legal challenges 
- Media Formats
- Volume of data
- time limitations

#### Investigating Process
<mark style="background: #BBFABBA6;">Assess -> Acquire -> Analyze -> Report</mark> 

#### Rules of a Forensic Investigation
- Limit access to original evidence
- Make Duplicate copies and examine those
- record changes
- Chain of Custody
- Standards
- Know limitations of skill 
- Secure Storage 
- Legal
- Industry tools
### Types of Evidence
#### Volatile Evidence
- System Time
- Process info
- open files
- Network Info
- Process Memory
- Clipboard
- Service / Driver Info
- Command History 
#### Non-Volatile Evidence
- Slack space
- Hidden Files
- Swap Files
- Unallocated clusters
- Unused Partitions
- Registry Settings
- Event logs

![[Pasted image 20220610112547.png]]
![[Pasted image 20220610112618.png]]
#### FISMA
*Definition* : Federal Info Security Management Act 
<mark style="background: #BBFABBA6;">Requires Annual Reviews of Info security program</mark> 

#### GLBA
*Definition* : Gramm-Leach-Bliley Act
Requires Financial Institutions to protect costumer info against threats. 

#### <mark style="background: #D2B3FFA6;">SOX</mark> 
*Definition* : Sarbanes-Oxley Act

#### PSI Data Security Standard
![[Pasted image 20220610115330.png]]
#### Best Evidence Rule
Prevent Alteration of Digital Evidence

Duplicate is admissible if:3
- original Evidence Destroyed in fire / flood
- original Evidence Destroyed in normal course of business
- original Evidence in possession of third party  

![[Pasted image 20220610120345.png]]

#### Forensics Investigator
- Evaluates Damage
- Identifies / recovers data
- Extracts Evidence in sound manner
- Proper handling 
- Creates Reports
- Testifies 
- Stays Current

### Investigation Process
#### Pre-Investigation Phase
- Planning / Budget
- Lab Setup / design
- Data Destruction
- Evidence Locker
- Workstations 
- Certs
- QA
- Auditing
- Laws
#### Investigation Phase
- Consent / Warrant
- First Responder
- Photograph / Document scene
- Collect Evidence
- Analyze Evidence

##### Warrant
1. Electronic Storage device (Computers)
2. Service Provider

##### Warrant Not-Needed
- When Destruction of evidence is imminent AND the belief in the item being seized is evidence of criminal activity
- Person with Authority consents

#### Best Practices
- Authorization from a decision maker
- First Response
- Search and Seize
- Evidence Collection 
- Secure
- Copy
- Acquire / Analyze
- Report 
- Testify  

<mark style="background: #FF5582A6;">if a computer is off. leave it off</mark> 
<mark style="background: #FF5582A6;">
if the monitor is on, ask what to do next </mark> 

##### Network Computers
- Photograph / Document 
- Unplug Network cable form the router / modem
- Collect all cords and peripherals connected 
- Document

##### Chain of Custody
![[F83446~p.eps-650.webp]]
![[Pasted image 20220610131049.png]]
#### Data Recovery (Tool)
- FTK
- EnCase
- The Sleuth (TSK) & Autopsy
- Undelete Plus
- Advance Disk Recovery
### Hard Disks and File Systems
#### Hard Drives
**HDD** (Hard Disk Drive) - 
- uses magnetic storage to store / retrieve data
- non-volatile storage
![[Pasted image 20220614163532.png]]
**Bad Sectors**
- portions of disk unusable due to flaws
- Can be cause from Configuration issues
- Physical Disturbance to the Disk 

**MBR** (Master Boot Record)
- Starts at sector 0
- Organization of local Partitions
- 512 Bytes
- `0xAA55`
 ![[Pasted image 20220610134233.png]]

**SSD** 
- Higher Data Transfer
- Area Storage Density
- Reliability 
- NAND-Based Flash Memory
- Higher Cost

![[Pasted image 20220610135154.png]]

BIOS Parameter Block (**BPB**)
- Describes Physical Layout of Storage Volume
- volume boot record
- FAT16, FAT32, NTFS

**GUID** (Global Unique Identifier)
- 128 bits
- Identify Info

**GPT** (GUID Partition Table)
- Layout of Partition table
- HDD / SSD
- Header LBA 1 (Logical Block Address)

##### UEFI
[[UEFI]]
- *Definition* - undefined extensible firmware interface
- Defines software interface between OS and Firmware
- replaces BIOS
- Support remote diagnostics / repair 

**UEFI Boot Process Phases**
1. Security Phase (**SEC**) - 
	1. Handle platform restart events
	2. creates temporary memory store
	3. serves as root of trust
	4. passes required handoff info to the PEI
2. Pre-EFI Initialization (**PEI**)
	1. initialize permanent memory complement
	2. Describing that memory in hand-off blocks
	3. Describing the firmware volume locations
	4. passing control to the Driver Execution Environment (DXE) 
3. Driver Execution Environment (**DXE**)
	1. DXE Dispatcher - discover / execute DXE drivers in correct order
	2. Drivers - Initialize process, chipset and platform components
	3. Terminated at successful OS Boot 
4. Boot Device Selection (BDS)
	1. Platform boot policy
	2. Initializes Consoles
	3. Loads device Drivers
	4. Load / execute boot selections 
5. RunTime (**RT**)
	1. Enable the OS to read / write environment variables
	2. Supports updates of firmware
	3. cleans UEFI from memory
![[Pasted image 20220610174013.png]]
![[Pasted image 20220610174532.png]]
![[Pasted image 20220610174843.png]]
![[Pasted image 20220610174859.png]]
![[Pasted image 20220610174921.png]]
### Windows File Systems
there are 2 kinds of systems out there: **NTFS** (New Technology file system) and **FAT** (File Allocation Table)
##### FAT 16
- Designed for small disks and simple folder structures 
- Portable Devices: Digital Camera, Flash drive ...
- Files stored at start of volume

##### FAT 32
- 10% - 15% more effective space utilization
- Smaller Clusters
- No Restriction no entries in root folder

##### NTFS
- <mark style="background: #FFB86CA6;">$Bitmap file keep track of used/unused clusters</mark> 
- Supports RAID 
- Uses MFT for file attributes
- Journaling 
- Compression, auditing, file-level security, metadata

### Linux File Systems
##### EXT (Extended File System) 
- First file system for Linux (1992)
- Metadata structured similar to UFS (Unix File System)

##### EXT2
- Seen in many Linux Distros
- Superblock store info about size / shape of EXT2
- Data stored blocks of same length

##### EXT3
- Journaling
- Max single file size: 2TB

##### EXT4
- Max single file size 16TB
- Scale / Reliability
- Increased performance and reduced fragmentation over EXT2/EXT3

##### HFS vs HFS Plus
*Definition* : Hierarchical file system
- HFS : 16-bit Allocation Blocks
- HFS + : B-Tree

Check [[Explaining File Systems]]

### RAID
*Definition* : Redundant Array of independent / inexpensive Disks 
##### RAID 0 
- Disk Striping
- No Redundancy 
- Requires two Drives
![[Pasted image 20220612072516.png]]

##### RAID 1
![[Pasted image 20220612072648.png]]

##### RAID 5
![[Pasted image 20220612072803.png]]
![[Pasted image 20220612072838.png]]

##### RAID 10
![[Pasted image 20220612072936.png]]

### File Carving
- Reconstructing file fragments form deleted files
- Tools:
	- OSForensics
	- DataLifter
	- Simple Carver Suite

![[Pasted image 20220612073254.png]]
![[Pasted image 20220612073309.png]]
![[Pasted image 20220612073323.png]]
![[Pasted image 20220612073337.png]]
![[Pasted image 20220612073935.png]]
![[Pasted image 20220612074008.png]]
## Data Acquisition
#### Live Acquisition
- used to get Volatile data (RAM and etc...)
- powered on (Locked/sleep mode)
- Encrypted drive (password)
#### Volatile Data Collection
- Planning 
- Establish Trusted Command Shell
- Transmission/storage Method
- Ensure integrity (Hashing)
- Record data, time, commands history
- Document 
- Report
#### Static Acquisition
- Non-Volatile Data (Swap Files, Slack Space, USB, ect ...)
- Powered off - it's is the data that if we are powering off the computer the this data will stay
- Police seizure 
#### Media Sanitization
- <mark style="background: #FFB8EBA6;">NIST SP800-88</mark> 
- Clear / Purge / Destroy
#### Data Acquisition Formats
[[Forensics Data Acquisition]]
##### Raw
- Creates simple, sequential flat files of suspect drive / data set
- Fast Data Transfers 
- Ignore minor data read errors of source drive
- Universal Acquisition Format for most tools
- Requires same space as original disk / data set
- Free tools may not collect marginal sectors
##### Proprietary
- Compress image file of suspect Drive
- the images of the drive can be split up to archive
##### AFF
![[Pasted image 20220614145538.png]]
#### Data Collection
##### Disk-to-image
- ![[Pasted image 20220614153549.png]]
##### Disk-to-Disk
- Older software / hardware
- EnCase, X-Ways Forensics
##### Logical Acquisition
- Specific files or filetypes (usually by a request)
- Email: Collection only `.pst` and `.ost` files
- RAID : only specific records
- is has another name "E-Discovery"
##### <mark style="background: #FFB8EBA6;">Sparse Acquisition</mark> 
- Collects fragments of unallocated Data 

### DD Command
*Definition* - Data Dump
[[DD Command in Linux]]
[DD Command Man Pages HTML](https://man7.org/linux/man-pages/man1/dd.1.html)
![[Pasted image 20220614155334.png]]
### DCFLDD
[DCFLDD Man Pages HTML](https://www.mankier.com/1/dcfldd)
![[Pasted image 20220614155437.png]]

### Tools
DriveSpy
ProDiscover Forensics
AccessData FTK Imager
SafeBack
F-Responce
DeepSpar
## Anti-Forensics Techniques
### Goals of Anti-Forensics
- Volume - if there a lot of files the investigator can't look through all of it, especially if it's a small company so the investigators need to look into the important files 
- Integrity - hurt the integrity of the data, that in a court it will be more difficult for the investigator   
- Difficulty - make it more difficult of the investigator  
- Exitance - if the files existing it can be dangerous, so deleting the files that you are able to delete can help.  

### Windows File Deletion - FAT
- OS replace first latter of deleted filename with `E5` 
- Marked as unused clusters (but there are still available)
- File can be recovered

### Windows File Deletion - NTFS
- index field in MFT Marked with special code
- Clusters marked unused

### Windows 98 and Earlier
- the deleted files will be located in `C:\Recycled` 
- Deleted File Names `Dxy.ext`
	- x - Drive
	- y - Sequence Number
	- ext - Extension
- First Document Deleted on C - `Dc0.ext` 

### Windows 2000, XP
- the deleted files will be located in `C:\Recycler`
- file details stored in INFO2 file 

### Windows 7,8 and 10
- the deleted files will be located in `C:\$Recycle.Bin`
- Deleted File name `$Ry.ext`
	- y - Sequence Number
	- ext - Extension
- Example - `$R0.doc`

#### INFO2
- Hidden File
- Holds :  
	- Original File name
	- Data & time of deletion 
	- Original file size
	- Drive number

#### Password Cracking
- Brute Force
- Dictionary
- Rule-Based - a way of focusing a password cracking technique when an attacker knows which rules passwords in a particular system are based on, such as “alphanumeric and eight characters long.”
- Hybrid - A hybrid attack works like a dictionary attack, but adds simple numbers or symbols to the password attempt.
- Rainbow - A rainbow table is a database that is used to gain authentication by cracking the password hash.
#### BIOS Password reset
- Manufacturer Backdoor
- CmosPwd
- DaveGrohl (Mac OS) [Github](https://github.com/octomagon/davegrohl)
- Reset the CMOS or remove the CMOS Battery (on the motherboard)

#### Reset the admin password
- active @ password changer 
- Windows Recovery Bootdisk
- Windows Password Recovery Lastic

#### PDF Password recovery
- PDF Password recovery
- PDF password Genius
- SmartKey
- Tenorshare

#### Steganography / Steganalysis
**Steganography** - Hiding Message
**Steganalysis** - the process of finding the hidden information 

#### EFS (Encrypted File System)
- File system level encryption
- user account password needs to be strong

## Operating System Forensics
#### Collecting Volatile info
- System Time
	![[Pasted image 20220614182512.png]]
	![[Pasted image 20220614183102.png]]
	just look for what you need in the internet 
- RAM
	- DumpIT
	- Volatility Framework
- Logged-on users
	- PsLoggedOn
		![[Pasted image 20220614183955.png]]
	- Net Sessions 
	![[Pasted image 20220614184017.png]]
	- LogOnSessions
	![[Pasted image 20220614184034.png]]
- Open Files
	- net file: open shared files / file locks
	- PsFile utility: files opened remotely
	- Openfiles: see open files 
- Print spool files 
	- ![[Pasted image 20220614185811.png]]
#### Collection Non-Volatile Info
##### Registry
![[Pasted image 20220614190043.png]]
###### HKEY_CLASSES_ROOT
![[Pasted image 20220614190956.png]]
###### HKEY_CURRNET_USER
- Shows info about the logged in user
###### HKEY_LOCAL_MACHINE
- Hardware specifics
- Mounted Drives
###### HKEY_USERS
- Shows info about all users profiles
###### HKEY_CURRENT_CONFIG
- shows the current configuration
![[Pasted image 20220614191827.png]]
![[Pasted image 20220614191904.png]]
#### Registry Tools
- RegRipper
- ProDiscover
- RegEdit
- RegScanner

##### ESE (Extensible Storage Engine)
- related to Email
- the files have `.edb` extension  

#### Browsers
![[Pasted image 20220621173504.png]]
![[Pasted image 20220621173554.png]]
![[Pasted image 20220621173624.png]]
![[Pasted image 20220621173641.png]]
<mark style="background: #FFB8EBA6;">(Fill Here)</mark> 
![[Pasted image 20220621180422.png]]
<mark style="background: #FFB8EBA6;">(Fill Here)</mark>
![[Pasted image 20220621180652.png]]
![[Pasted image 20220621180708.png]]
![[Pasted image 20220621180726.png]]
### Network Forensics
*Definition* : Monitoring / Analyzing of network traffic to discover the source of attacks of other problems.

#### Postmortem vs Real-Time 
**Real-Time** - runs as the event is happening
**Postmortem** - after the event is ended and take in consideration all of the info that has been collected.

![[Pasted image 20220629151443.png]]

**Hearsay** - is an unswore statement, on that didn't was stated in court. In Digital Forensics you just need to show that the log was collection log from any time with exception for the event time.

![[Pasted image 20220629152244.png]]

**Codebook Based** - Stores sets of events in codes
**Rules Based** - Rules are used to correlate events
**Automate Field Correlation** - Compares some or all of the fields in the data and determines any correlation across the fields.
**Bayesian** - Uses Statistics and Probability to predict next steps
**Time Based** 

#### NTP (Network Time Protocol)
- Synchronization the clocks across all of the devices on the network

![[Pasted image 20220629153054.png]]
![[Pasted image 20220629153114.png]]
![[Pasted image 20220629153247.png]]

### Web Application Forensics
![[Pasted image 20220629153435.png]]
![[Pasted image 20220629153458.png]]
![[Pasted image 20220629153521.png]]
[[Cybrary - OWASP Top 10]]

### Database Forensics
![[Pasted image 20220629155144.png]]
![[Pasted image 20220629155159.png]]
![[Pasted image 20220629155209.png]]
![[Pasted image 20220629155234.png]]
![[Pasted image 20220629155254.png]]
![[Pasted image 20220629155312.png]]
![[Pasted image 20220629155340.png]]
![[Pasted image 20220629155357.png]]
**SQL Server Plan Cache** - Stores details on all of the SQL statements that have been executed.
![[Pasted image 20220629155528.png]]
### Cloud Forensics
![[Pasted image 20220629155656.png]]
![[Pasted image 20220629155724.png]]
![[Pasted image 20220629155808.png]]
### Malware Forensics
[[Cybrary - Malware Threats]]

#### Components of Malware
##### Crypter
- Used to conceal existence of the malware through encryption, manipulation and obfuscation.
##### Downloader
- Trojan
- Internet Connection
- Downloads additional malware
##### Dropper
- installs malware on target system 
- Covert
##### Exploit 
- Code that takes advantage of vulnerabilities
##### Injector 
- Injects malicious code into running processes
- obfuscates
##### Obfuscator
- Conceals malicious code
##### Packer
- Compresses Malware files
- Unreadable Format

![[Pasted image 20220629161717.png]]
![[Pasted image 20220629161854.png]]
![[Pasted image 20220629161913.png]]
![[Pasted image 20220629161940.png]]
![[Pasted image 20220629162028.png]]
### Mobile Forensics
![[Pasted image 20220629162206.png]]
![[Pasted image 20220629162217.png]]
![[Pasted image 20220629162235.png]]
![[Pasted image 20220629162415.png]]
![[Pasted image 20220629162423.png]]
![[Pasted image 20220629162432.png]]
![[Pasted image 20220629162442.png]]
![[Pasted image 20220629162452.png]]

![[Pasted image 20220629163958.png]]
![[Pasted image 20220629164014.png]]
![[Pasted image 20220629164026.png]]
![[Pasted image 20220629164037.png]]
![[Pasted image 20220629164048.png]]

![[Pasted image 20220629164129.png]]
![[Pasted image 20220629164144.png]]
![[Pasted image 20220629164200.png]]
![[Pasted image 20220629164210.png]]
![[Pasted image 20220629164225.png]]
![[Pasted image 20220629164233.png]]
![[Pasted image 20220629164254.png]]
![[Pasted image 20220629164304.png]]
