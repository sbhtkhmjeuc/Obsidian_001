# How to create a self signed cert using PowerShell in Windows Server 2016
Type : #t/YouTube
Time Created : 2022-06-07 06:11
Last Modified : 2022-06-07 06:11
Subjects: #s/Cybersecurity #s/PowerShell 
Progress: #p/🟡 
URL: https://www.youtube.com/watch?v=_AEouUSf7lE
Publisher: #psh/RobertMcMillen
Priority: #i/🟧 

to create a Self-signed certificate you need to type `New-SelfSignedCertificate -certstorelocation cert:/PATH -dnsname "NAME"`

to remove cert you need to type `Remove-Item -Path cert:\PATH\{Thumbprint} -DeleteKey`
