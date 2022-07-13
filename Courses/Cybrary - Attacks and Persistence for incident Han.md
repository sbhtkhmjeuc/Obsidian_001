# Cybrary - Attacks and Persistence for incident Handlers

Last modified: May 16, 2022 11:00 AM
Priority: Important
Progress: Done
Subject: Cybersecurity, Malware Analysis

### Attacks Types

- DDoS - sending a lot of requsts to one / multiple machines to overload the system
- ARP Poisoning - changing the ip address of the hacker computer that other devices in the network will think that the
- SMB - **Server Message Block** (Eternal Blue),
- DNS
    - Domain Hijacking - changing the DNS records that the client won't go to the requated service but to the lookalike of the attacker.
    - DNS Flood - like DDoS Attack, the target is to flood the DNS server to overload it with requests
    - DNS Cache Poisoning (spoofing) - like the ARP Poisoning attack, changing the connection for the domain to a IP Address so when the client is requesting a domain it will go ot other site instead of the one that he needed to go to.
- USB - usually a SE attacks
    - HID Sppofing - Human Interface Device, when you pluge it in it does someting that imitate a human action, like Keystrokes on a keboard.
    - Malicious Code - some file on the USB that have a Malicious code on it, these MC will start only be human interaction, which means that the preson have to interace with it.
    - Links - Malicious Links that sending you to the a website that send info to the attacker (SE).
    - Kill - Harvesting the power that is getting trough the data line and shoot it back at the machine. to kill off the machine.
- Session Hijacking - when the hacker is pretending to be someone that he stole he/her's cradentials to somw service.
- MITM Attack - when the attacker is between the person and the service and dosen't do anything, usually the person that is being attacked can't know if there's a man between him and the service.
- **Metasploit**

### Presistance

once you hacked the machine once the machinge reboots or getting patched you will need to hack it again and maybe try other vulanrabilites, so once you are in, you can you need to open somekind ofa backdoor for yourself to get back more easelly.

- Backdoors (RAT, User,etc...) -
- Rootkit - A rootkit is a collection of computer software, typically malicious, designed to enable access to a computer or an area of its software that is not otherwise allowed (for example, to an unauthorized user) and often masks its existence or the existence of other software.
- SSH, RDP, VNC, Telnet -
- Shells
    - Binding Shells - that are banding from the target system to the attacker system, abeling to the attacker system to connect via SSH / Telnet to the target machine.(**netcat**), when the attacker is trying to connect to the victom computer, which is less good becasue the you may need to trough the firewall and other protection to get to the computer
    - Reverse Shells - the target machine is calling to the Attacker machine, this is more good becasue the connection is going out from the victom comuter to the attacker computer and can go trough all of the protection layer in the network and don't look suspicious
- Schedules Tasks - running every period of time a scan and sends that info to the attacker machine.

# Session Hijacking Lab