# Cybrary - Kill Chain

Last modified: May 15, 2022 12:10 PM
Progress: In Progress
Subject: Cybersecurity, Defence

# Cyber Kill Chain

![Untitled](Cybrary%20-%20Kill%20Chain%20682698ae0e39442b8311cca8a563a428/Untitled.png)

**Reconnaissance -** Re-Search, Identification and Selection of targets, the most important one. 

**Weaponization** - based on the info that you gathered in the Reconnaissance, you can build tools that will use to your advantage based on the Reconn.  

**Delivery** - also based on the info from the Reconn, you can established ways to deliver things to the victim. (**SE, Open Ports**)

**Exploitation** - you are using the weapons that were built and the delivery to exploit the victim’s machine.

**Installation** - after you exploit to the victim’s machine, you can install a backdoor (**Presistance**) for you to use, or some kind of access to the victim’s machine.

**Command & Control** -  after the attacker is installed the back door, he have the control over the whole machine, and can execute every command that we wishes.

**Action on Objectives** -  the attacker execute the actions desired actions, that can be motivate by any kind of reason. 

## Reconnaissance

over looked by pen testers, but it’s one of the most important step, because the whole attack is built on this first step.

there are two ways to do Reconnaissance, **Passive & Active**

**Passive** (foot-printing)- looking for publicly available info on the internet, **Needs a lot of research time**, the victim dosen’t know that you currently after him, For example when you ping a domain of a company way can see that someone pinging them and maybe that is connected to an attack that is about to come. 

**Whois** (tool in linux) 

**nslookup**

**Censys** 

**Shodan**

**social media (can be used for SE)**

**dumpster diving**

**Active** - communicating with the back-end server, and maybe altering the company. 

**NMAP** - to know which of the ports are open in the serve (that you can later exploit in one of the stages to take control)

**Vulnerability scanning**

**Web application scanning**

**Physical interaction** 

## Weaponization

you don’t need to have interaction with the victim, mostly in this stage the attacker building a malicious payload that later needs to go to the victim.

**Unicorn** - can compress file that it would be more easier to send over.

**Metasploit** - creating a malicious payload.

## Delivery

transforming the file to the victim’s machine, in order for the victim to download and run the file, the attacker needs to manipulate the victim to trust the payload and don’t let the victim be suspicious about it.

ways to deliver the payload :

- Open services (open ports, FTP ...)
- Social Engineering (Email...)
- Physical (USB ...)

### SET (Social Engineering Toolkit)

## Exploitation & Installation

once the attacker delivered the payload successfully, the hacking can begin, and now the attacker need to exploit weaknesses in the machine’s security

after that the file is installing a the malware on the victim’s machine, and now the attacker have a presistance connection to the victim’s machine.

## Control & Command

the attacker creates Control & Commands channel

**RAT** (Remote Server)

**IRC** Protocol

**Twitter Account** - create a twitter account that the payload in the victim’s computer is listening to, and publish there a commands for the payload to do on the victim’s machine.

## Action on Objectives

the goal of the attack 

# Defense

**Detect**

**Deny**

**Disrupt**

**Degrade**

**Deceive**

**Contain**

![Untitled](Cybrary%20-%20Kill%20Chain%20682698ae0e39442b8311cca8a563a428/Untitled%201.png)