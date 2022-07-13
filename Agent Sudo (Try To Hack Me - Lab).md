## Agent Sudo (Try To Hack Me - Lab)
Progress : #p/🟠 
- scanning the ports of the attacking machine. (`nmap 10.10.119.13`)
- using **User-Agent** extension in the browser to access the site.
- using GoBuster to scan the machine for hidden files or webpages (`gobuster -w directory-list-2.3-medium.txt -u "http://10.10.119.13" -x php,sh.py,pdf,js,html`)
- using also Nikto (`nikto -h "http://10.10.119.13"`) 
- the webpage that we found using the **User-Agent** is telling us that the password in weak, so using Hydra we can try to brute-force the services (FTP / SSH),(`hydra -l chris -P rockyou.txt ftp://10.10.119.13`)
- we got a password for the FTP server.
- we logged in and copied all of the docs, 2 images and on txt file, which says that one of the images has in it the SSH password,
- because the password is in the image we can `strings` on the image and look for it. (`string cutie.png`)
- we `strings` the image and look that there is a file in it, we ran binwalk to make sure and extracted everything (`binwalk -e cutie.png`)
- now we see that we need to a password for the zip file that was inside of the image, using the `zip2john` we can crack the zip file by taking the hash of the zip and run it in john the ripper
	1. `JohnTheRipper/run/zip2john 8702.zip > hash_john.txt`
	2. `JohnTheRipper/run/john hash_john.txt --wordlist=/opt/rockyou.txt`
- we'll use 7z to unzip with the password
- after unzipping the zip file we reviled a txt file which have the password encrypted with base64 so we decrypt it (`echo QXJlYTUx | base64 -d`) 
- and we can use `steghide` for extract things from the other picture and the passphrase that we decoded from base64 (`steghide extract -sf cute-alien.jpg`)
- and we get a text file with the SSH password in it
- can fill the textbox with a flag text that is in the machine after we SSH into it.
- now we use <mark style="background: #FFF3A3A6;">linpeas</mark> to scan the machine and we can see that is spits out the line (`sudo ["ALL=(ALL) NOPASSWD:ALL"]`) [[Linux Privileges]] which triggers and alert, 
  after that we can see : ![[Pasted image 20220628161930.png]] and know that we are talking about the **CVE-2019-14287**
- after we got the root privileges we have access to the root folder which have a text file with the final flag.

# To-do's
- [ ] Download linpeans
- [ ] all of of the other tools in here