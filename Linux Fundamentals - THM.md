# Linux Fundamentals
Progress #p/🟡 
## Commands
`find -name ACCESS.log` - will search for a file named **ACCESS.log** all over the computer.
`find -name *.txt` - will search for every file in the computer that is a text file.
`grep "81.143.211.90" access.log` - looking in `Access.log` file for "81.143.211.90".
`touch note` - creating a file named "note".
`mkdir mydirectory` - making a new directory.
`rm note` - removing the "note" file.
`rm -R mydirectory` - removing new directory.
`cp note note2` - copying the "note" file to the new "note2".
`mv note2 note3` - moving "note2" contents into new file named "note3".
`file note` - returns the file extension type.
`su user2` - switch user to user2, but doesn't change the current directory.  
`su -l user2` - changes the user and the current directory to the new user's.
`man COMMAND` - returns the manual pages for this command.
`wget LINK` - downloading a file from the internet.
`scp important.txt ubuntu@192.168.1.30:/home/ubuntu/transferred.txt` - ![[Pasted image 20220701162746.png]]
`scp ubuntu@192.168.1.30:/home/ubuntu/documents.txt notes.txt` -
![[Pasted image 20220701162920.png]]
`python3 -m http.server` - running the **[HTTPServer](https://docs.python.org/3/library/http.server.html)** Module. (which creates a web server in your computer)
`ps` - viewing process on the machine.
`ps aux` - listing all of the process that all of the users on the machine are running,(`-a` - to show all the users, `-u` - shows the terminal that the process in running in, `-u` - ordering the output by a list of sorted users)
`top` - gives you real-time statistics about the processes running on your system instead of a one-time view.
`kill PID` - kills the process with the PID.
![[Pasted image 20220701180740.png]]
`systemctl start apache2` - this command allows us to interact with the **systemd** process/daemon.
`echo "THM" &` - adding the `&` will run this process in the background.
`fg` - bringing a background process back into focus.


![[Pasted image 20220701145611.png]]

## Common Directories
### /etc
*Definition* - is a commonplace location to store system files that are used by your operating system.
### /var
*Definition* - This folder stores data that is frequently accessed or written by services or applications running on the system.
### /root
*Definition* - here isn't anything more to this folder other than just understanding that this is the home directory for the "root" use.
### /tmp
the /tmp directory is volatile and is used to store data that is only needed to be accessed once or twice. Similar to the memory on your computer, once the computer is restarted, the contents of this folder are cleared out. (once we have access to a machine, it serves as a good place to store things like our enumeration scripts)

## Automation (Crontabs)
`crontab -e` - will open the crontab file which you can add things.
the template for the cron command - ![[Pasted image 20220702135911.png]]
`0 *12 * * * cp -R /home/cmnatic/Documents /var/backups/` - backup "cmnatic"'s  "Documents" every 12 hours.
why the `>/dev/null 2>&1` means at the end - 
![[Pasted image 20220702140433.png]]

## Package Management
When adding software, the integrity of what we download is guaranteed by the use of what is called GPG (Gnu Privacy Guard) keys. These keys are essentially a safety check from the developers saying, "here's our software". If the keys do not match up to what your system trusts and what the developers used, then the software will not be downloaded.
Info Taken from [here](https://vitux.com/how-to-use-apt-to-install-programs-from-command-line-in-debian/)
Follow the steps - 
1. go to `sudo nano /etc/apt/sources.list`
2. add the repositories : (which you can find in the download page of the program that you want to download)
   `deb https://download.sublimetext.com/` 
3. update sources using `sudo ap-get update`
4. install the package using apt-get / apt `sudo apt-get install sublime-text`
5. upgrade the packages `sudo apt-get upgrade` (you can add the name of the package that you want to upgrade, or leave it empty to upgrade all of the packages)
if you want to remove package you can type `sudo apt-get remove sublime-text`  
in order to delete also configuration files also you can type `sudo apt-get purge sublime-text`.
