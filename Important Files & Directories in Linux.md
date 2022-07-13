# Important Files & Directories in Linux
Type : #t/Article
Time Created : 2022-05-29 07:22
Last Modified : 2022-05-29 07:22
Subjects: #s/Linux #s/Cybersecurity 
Progress: #p/🟡 
URL: http://www.dba-oracle.com/linux/important_files_directories.htm
Publisher: #psh/DBA-Oracle 

---
`ls - al` - lists all of the file in the directory, Including hidden.
`a` - shows all files
`l` - show in a list format

`.bash_history` - containing up to 500 of the most recent commands available for recall using the up and down arrow keys
`.bash_logout` - Script that is run by the bash shell when the user logs out of the system
`.bash_profile` - Initialization script that is run by the bash shell upon login in order to setup variables and aliases. (When bash is started as the default login shell, it looks for the .bash_profile file in the user's home directory; if not found, it looks for .bash_login.  If there is no .bash_login file, it then looks for a .profile file.)
<mark style="background: #FF5582A6;">`.bashrc`</mark> - Initialization script executed whenever the bash shell is started in some way other than a login shell. (It is better to put system-wide functions and aliases in `/etc/bashrc`)
<mark style="background: #FF5582A6;">`.gtkrc`</mark> - GTK initialization file. (GTK+ is a multi-platform toolkit for creating graphical user interfaces, used by a large number of applications)
`.login` - The initialization script that is run whenever a user login occurs.
`.logout` - The script that is automatically run whenever a user logout occurs.
`.profile` - Put default system-wide environment variables in `/etc/profile`.
`.viminfo` - Initialization file for the Vim text editor that is compatible with vi.
<mark style="background: #FF5582A6;">`.wm_style`</mark> - Specifys the default window manager if one is not specified in startx.
<mark style="background: #FF5582A6;">`.Xdefaults & .Xresources`</mark> - Initialization files for Xterm resources for the user. Application program behavior can be changed by modifying these files.
<mark style="background: #FF5582A6;">`.xinitrc`</mark>  - The initialization file used when running startx, which can be used to activate applications and run a particular window manager.
<mark style="background: #FF5582A6;">.xsession</mark> - This file is executed when a user logs in to an X-terminal and is used to automatically load the window manager and applications.
## Important System Files
![[Pasted image 20220529082243.png]]
## Important Directories
![[Pasted image 20220529082402.png]]