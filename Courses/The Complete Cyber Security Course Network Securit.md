# The Complete Cyber Security Course Network Security!

Last modified: May 9, 2022 3:01 PM
Priority: Not important
Progress: Done

# **Port & Vulnerability Scanning**

## The Home Router

we covered routers in the [Networks Course (Jakov)](Networks%20Course%20(Jakov).md) 

the router IP address is the Default gateway in the computer (by using the `sudo route -n` in Linux or `ipconfig` in windows)

you can see the port usage in the computer in [this](https://datatracker.ietf.org/doc/html/rfc1700) link in **page 16**.

the router will have a public and private IP address (the public is for the internet to see and the private is in the local network(Default Gateway))

the router today in most houses are a combination of multiple devices, Modem (for getting and sending into over the internet), Router (to route the packets that goes to the default gateway), Firewall (denied or accepting packets based on a set of rules), Switch (for routing packets in the local network) and Wireless Access Point (WAP). Some routers have DHCP and DNS capabilities.

## External Vulnerability Scanning

[https://www.shodan.io/](https://www.shodan.io/) - the google of vulnerabilities

[https://nmap.online/](https://nmap.online/) - port scanner on a router on other device

Qualys FreeScan - a service for vulnerabilities scanner.

## Internal Vulnerabilities Scanning

[NMAP Documentation](https://nmap.org/docs.html)

[https://nmap.org/docs.html](https://nmap.org/docs.html)

`ip a show wlan0` - to show the IP address, and all of the devices on the network

`nmap -T4 -F 192.168.1.0/24` - to scan the port of all of the devices on the network, the IP address and the sub net are from the command before, and i set 0 on the changing number for the devices

Fing - nmap app for IOS and Android.

### Vulnerabilities mapping in the network

for windows you can download [Microsoft Baseline Security Analyser](https://www.filehorse.com/download-mbsa-64/), 

in Linux you can use **OpenVas**

**Nessus Home** another tool.

## Open Source Custom Router Firmware

buy another router that you can install your chosen firmware

# **Firewall**

## Firewalls Host-based network-based and virtual Part 1

***Definition*** : A Firewall is a network security device that monitors and filters incoming and outgoing network traffic based on an organization's previously established security policies. 

the basic firewall is inspecting the traffic in the Transport and Network layers, more advanced layers can work on the application layer and examine the contained of a packet

**Ingress Filtering** - Ingress filtering is the practice of monitoring, controlling and restricting traffic entering a network with the objective of ensuring that only legitimate traffic is allowed to enter and that unauthorized or malicious traffic is prevented from doing so.

**Egress Filtering** - is the practice of monitoring and potentially restricting the flow of information outbound from one network to another. Typically, it is information from a private TCP/IP computer network to the Internet that is controlled.

if there is a malware on your computer, the malware will need to send some info about how the hacking is going on the victim or give the control that it get to the human hacker, to do that the hacker will need to in to your computer in the way he will need to go through the routers firewall and your firewall and maybe some protection in the middle and then he will get access to your computer, that is hard for the hacker, the easy side is for your computer to “want” to talk to the hacker’s computer, that can be achieved by **Reverse Shell Scripting**. 

[https://pentestmonkey.net/cheat-sheet/shells/reverse-shell-cheat-sheet](https://pentestmonkey.net/cheat-sheet/shells/reverse-shell-cheat-sheet)

**Network Isolation** -  isolation of a device/s on the network to minimize the risk of malware from another device on the network

### Types of Firewalls

**Network-Based** - the routes network from one to another, and in the local network it will filter network from and to the internet, the one disadvantage is the inability to block out going traffic (because the software can;t decide the whether the traffic is malware of from an actual user).

but there are more advanced firewalls that can inspect the packet on chosen ports  that going out in the application layer and see if it’s malware of a user surfing, but isn’t a fix because you can’t have really decided if the traffic is malware or user. 

**Host-Based** - these are firewalls that installed on the device that the user uses (between the device and the router of the network), but a major disadvantage is that is malware are getting into the user device, the malware can just turn the firewall (by being running on trusted process like a browser) off and do a lots of things (unlike network-based firewalls that any device can’t turn off), but an advantage for the host-base firewall is that it will operate on the application layer, and will give another layer of protection (some malwares that are using reverse shells won’t be able to operate).  

## Firewalls Host-based network-based and virtual Part 2

if you are running a guest VM you can use a virtual host-based firewall that will keep the guest more secure. (PFSence)

### General Firewalls Rules

All network traffic needs to be block, unless specifically allowed.

1.1 Block IPv6 (you not being used)

1.2 Block UPnP on port 1900

1.3 Block IGMP

1.4 Block any Windows,Mac OSX, Linux services that are not being used. 

### **Dynamic Packet Filtering & SPI**

this filter build a database of sessions that inspects the connection and based on that the firewall know which connection to let in to the network and which not to. The Firewall collects info like Destination port and address and Source port and address.

 

## Host-Based Firewall - Windows

the windows firewall default specs are inbound deny, out bound allow all. 

by clicking on the “Advanced Options” you can get into more advanced GUI with more advanced options, and one of them is to configure that Inbound and outbound rules.

in windows firewall you can use **Profiles**, these profile varies in there settings and privacy policy. 

[https://www.binisoft.org/wfc](https://www.binisoft.org/wfc) - it’s a software for windows, that is more usable for users with more fine GUI

### Third Party Firewalls for Windows

[https://tinywall.pados.hu/](https://tinywall.pados.hu/)

[https://www.glasswire.com/](https://www.glasswire.com/)

## Host-Based Firewall - Linux

by default linux kernels using the **Net filter** firewall.

typing the `iptables -L` command in the terminal will show that 3 chains : **INPUT** (inbound)**, FORWARD** (Inbound) think like router**, OUTPUT** (Outbound). 

the behavior of the Chain is called **Policy**, the default is **DROP** that means that when non of the rules is applied the connection will be dropped.

`ip6tables -L` - getting into the IPv6 table (the rules for the IPv6 need to be configured separately)

https://github.com/meetrp/personalfirewall - Explanation for the rules and condition of the personal firewall you may want to have. 

### **Platforms for editing and configuring IPTables**

**UFW**

**Shorewall** - more power than UFW

**GUFW** - UFW GUI 

Linux-Firewall - Blocking by Applications

**Nftable** - an alternative for IPTables

## Network Based Firewalls

### Routers

**DD-WRT**, is the best firmware for Network-based Firewalls on routers.(DD-WRT is also working with IPTables, so you can configure the firewall for your needs) [website](https://wiki.dd-wrt.com/wiki/index.php/Iptables) for examples for firewalls in DD-WRT.

[IPTables Commands for DD-WRT](https://wiki.dd-wrt.com/wiki/index.php/Iptables_command)

### Firewalls

**PFSence**

 

 

 

# **Network Attacks Architecture and Isolation**

## Network Attacks & Isolation

**Network Isolation** - putting devices on a separate networks physically or virtually, that means that different devices from different networks won’t be able to talk to each other. 

<aside>
⚠️ The internet of things is much more vulnerable to attacks because most of the people think about them like they aren’t such big of a deal but they still connected to the network and usually don’t very up-to-date with patches and updates.

</aside>

## ARP Spoofing & Switches

ARP Spoofing - (works on switch, because in a hub you are already seeing all  the traffic) it’s MITM attack that tricks all of the devices on the network to think that he is the **Default Gateway**, by using the ARP Protocol. (that means that when a device send a packet trough the default gateway instead of the packet move to the router, the packet will move trough the hacker, which he can manipulate, delete, track and many more things)

## Effective Network Isolation

1. **Separate the devices between to different networks based on importance.** 
    
    ![Untitled](The%20Complete%20Cyber%20Security%20Course%20Network%20Securit%20efce7a2a28f54820831b68235fe51e1b/Untitled.png)
    
    **DMZ** - Demilitarized Zone, is a perimeter network that protects and adds an extra layer of security to an organization’s internal local-area network from untrusted traffic. A common DMZ is a sub-network  that sits between the public internet and private networks. 
    
    in this network you can prevent a outbound connections is it not necessary, so eliminate the ability of the an attacker to send outbound request and gain more power. (which you can set by the Firewall Routers) 
    
    ---
    
    **VLAN** - Virtual LAN (logical separation of networks, instead of more hardware), works at the 2 layer (some on layer 3).
    
    this means that you can separate the network into Trusted and Un-Trusted devices, and the Un-Trusted devices won’t be able to attack ant device outside of there network.  
    
    you can set a VLAN to each device privately in a VLAN, which will disable communications between the chosen device and any other one.
    
2. **ARP Protection Software**
    
    Tuxcut
    
    Sniffdef
    
    Xarp
    
    Netcut
    
    ARPwatch
    
    ---
    
    **IEEE 802.1AE** - s a network security standard that operates at the medium access control layer and defines connection-less data confidentiality and integrity for media access independent protocols.
    
    **IEEE 802.1X** -  is an IEEE Standard for port-based Network Access Control (PNAC). It is part of the IEEE 802.1 group of networking protocols.  It provides an authentication mechanism to devices wishing to attach to a LAN or WLAN.
    
    **DHCP Snooping** - is an ability of the router to listen to the DHCP requests and switch the ARP Table usage in DHCP Table.
    
3. **VPN between the devices to routers**

### ALL TRAFFIC SHOULD NEED TO BE DENIED, UNLESS SPECIFICALLY REQUESTED.

# **Wireless & WIFI Security**

## Wi-Fi Weaknesses - WEP

**WEP** (Wired Equivalent Privacy) - established on the **IEEE 802.11**, it’s a set of technical standards that aimed to provide a wireless local area network (WLAN) with a comparable level of security to a wired local area network (LAN).

### The Four Deficiencies with **WEP**

[**Security + 1.2 Wireless Attacks WEP & IV**](../../YouTube%20e57976d1a9f04b61b6f97df348dcc2ed/INFO%20Summary%2017e50eb8ccf346e2ae3c6b33da71f75e/Security%20+%201%202%20Wireless%20Attacks%20WEP%20&%20IV%20912db5feecbe4ee6aca723cceb4c4bf1.md) 

1. Static encryption keys - No session keys, weak RC4 used, same password.
2. Lack of Packets integrity assurance - Bits can be changed.
3. The ineffective use the initialization vectors (IV) - not random enough, only 24-bits long, IV with the same key, crackable in seconds.

## Wi-Fi Weaknesses - WPA WPS2 TKIP

**WPA (draft) IEEE 802.11i** (Wi-Fi Protected Access)

**TKIP** -  Temporal Key integrity Protocol (changing it’s key sessions)

**RSN** - ****Robust Security Network ****

the WPA uses the RSN with two new protocols: The 4-way Handshake & Group Key Handshake.

---

**WPA2-Personal (WPA-PSK Pre-Shared Key)**

**Personal-Mixed** - means that we can income WPA and WPA2 Clients on the same seed.  

---

**WPA-Enterprise (WPA-802.1X mode)**

requires a Radius Authentication,

Extensible Authentication Protocol (**EAP**) - 

**WPA/WPA2 Handshake Issue Password Cracking Attacks** 

**CowPatty** - Tool for Brut-force & Dict attacks on a **WPA/WPA2**.   

**SSID** - Network Name 

---

**WPA/WPA2 Salt Issue Common SSIDs**

the more common SSID used, the more vulnerable they are. 

## Wi-Fi Weaknesses - WPS | Rouge AP | Evil Twin

**WPS** - Wi-Fi Protected Setup, uses WPS PIN to access to the network instead of a chosen password, the PIN code usually is placed on the sticker on the router. 

![Untitled](The%20Complete%20Cyber%20Security%20Course%20Network%20Securit%20efce7a2a28f54820831b68235fe51e1b/Untitled%201.png)

because the PIN was the same for every-one, and usually was the default way to gain access to the network in many routers, an attacker can use a Brut-Force attack and in a few hours get the WPS PIN, and if you have the WPS PIN you can essentially get a full access of the network. 

**Evil Twin AP** -  a network that has the same SSID as your regular network, so all of you devices that are usually connected to this network, will connect to the Evil Twin if the signal is stronger. (**the attacker is basically a MITM**)

## Wi-Fi Security Testing

USB Network Adapter the most recommended **Alfa,** [the best one](https://www.amazon.com/Alfa-AWUS036NHA-Wireless-USB-Adaptor/dp/B004Y6MIXS).

**AirCrack-ng** - network software suite consisting of a detector, packet sniffer, WEP and WPA/WPA2-PSK cracker and analysis tool for 802.11 wireless LANs.

**Cowpatty** - a tool that automates offline dictionary attacks to which WPA-PSK networks are vulnerable.

**Rever** - performs a brute force attack against an access point’s WiFi Protected Setup pin number. Once the WPS pin is found, the WPA PSK can be recovered and alternately the AP’s wireless settings can be reconfigured.

**Fern Wi-Fi Hacker** - is able to crack and recover WEP/WPA/WPS keys and run other network-based attacks on wireless or Ethernet-based networks. This is one of the best GUI-based WiFi crackers for Linux available in the market today. So by popular demand, we are going to see how to hack WiFi using FERN WiFi cracker on Kali Linux. 

[LiveCD of tools for network security](https://securitystartshere.org/page-training-oswa-assistant-download.htm) 

## Wireless Security - Secure Configuration & Network Isolation

Wireless Devices are less trusted because Wireless Connections are less secure.  

You can isolate different devices to connect to different network based on different level of trust.

**AP Isolation** (wireless isolation)-  ****is a feature of wireless routers that enables you to create a separate virtual network for each wireless client that is connected to a network name or SSID.  When this feature is enabled, all wireless devices in the network will not be able to communicate with each other, preventing unwanted hacking.

if the SSID of your network is more common, it will be more available to Brut-force attacks. 

when you using WPA2-Entrprise enable the RADIUS Authentication.

**RADIUS Authentication** (Remote Authentication Dial-In User Service) - 

![Untitled](The%20Complete%20Cyber%20Security%20Course%20Network%20Securit%20efce7a2a28f54820831b68235fe51e1b/Untitled%202.png)

when you are using WPA2-Personal you can use WPA-PSK (Pre-Shared Kay), CCMP / AES Encryption, CBC-MAC, Never USE WEP/WPA, Avoid TKIP as mush as you can.

Brut-Fosse attack works in WPA2/WPA networks

Disable WPS (Wi-Fi Protected Setup)

Use a service against ARP Spoofing if you can.

[The OSWA-Assistant(tm) - standalone wireless auditing software for both IT-professionals and End-Users alike](https://securitystartshere.org/page-software-oswa-assistant.htm)

if you don’t need don’t use Wi-Fi.

## RF Isolation & Reduction

**RF** - Radio Frequency

put the access point in the middle of the house, and limit the areas of connection to the network, by changing the location and the power output.

## Who is on my Wi-Fi

**Wi-Fi inspector** 

**Fing** - Netwrok tool (mobile) 

NMAP

# Network Monitoring for Threats

## Syslog

*Definition* - It allows separation of the software that generates messages, the system that stores them, and the software that reports and analyzes them. Each message is labeled with a facility code, indicating the type of system generating the message, and is assigned a severity level. 

**rsyslog** - software implementation of the syslog (RFC5424), and more advanced options.

the syslog is listening on the 514 UDP by defalut, and if configured can also listen in the 514 TCP (if it’s possible use the 6514 TCP port that communicates over TLS)

### Severity

![Untitled](The%20Complete%20Cyber%20Security%20Course%20Network%20Securit%20efce7a2a28f54820831b68235fe51e1b/Untitled%203.png)

### Facility

A facility code is used to specify the type of system that is logging the message.

![Untitled](The%20Complete%20Cyber%20Security%20Course%20Network%20Securit%20efce7a2a28f54820831b68235fe51e1b/Untitled%204.png)

## Network Monitoring

**Wireshark**

**tcpdump** 

you can install the Network Monitoring software in the device or on the router, the biggest advantage of the software running on the router, you’ll be are able to see of the traffic on the network, unlike an device installation that you’ll be able too see the traffic that is related to this device, and if there is a malware on the device the malware will be able to hide traffic info from the software, but in the router it couldn't.

### Network Monitoring - Router

you can use the Firewall function inside of the Router. 

[TCPDump Doc](https://packetlife.net/media/library/12/tcpdump.pdf)

if you want to capture packets using wireshark in router, you can use IPTables mirroring function. 

if you have a SSH Connection to your router, you are able to capture the traffic on it and save it in a pcap file.

For Example `ssh root@192.168.1.1 — “tcpdump -w - -s 65535 ‘not port 22’ “> capture.pcap`

you can see that we are ssh to the router, and after the `—`, we are issuing a command which is in the `“”` and saving this all in the pcap file called `capture`. 

if you don’t want to wait for the data, you can scan the traffic of the router, and see it in wireshark in live on the chosen device. 

For Example `ssh root@192.168.1.1 tcpdump -U -s 65535 -w - ‘not port 22’ | wireshark -k -i -`

## Wireshark - Finding Malware & Hackers

to find something unusual activity in wireshark, you need to scan the network and filter out the packets based on traffic that you know about and you are familiar with.

 

## Network Monitoring - Tools

WinPcap - For windows, Remote network analysis.

**[Network Security Toolkit](https://sourceforge.net/projects/nst/)**

Network Miner - protocol analyses, for forensics 

# How we are tracked online

## Types of Tracking

- Login Tracking
- Sites Visited
- 3rd party sites
- Ad Network
- e-mail provider
- ISP (DNS)
- Cell provider -
- Gov
- Work - School
- Public Wi-Fi
- Anyone that have Access into the Machine
- Local Network
- Radio - WiFi

## 3rd Party Connections

**Burp Suite Proxy** 

 

## HTTP Referrer

*Definition* - in the HTTP packet you can see that referrer field, has the URL of the site that referred to the current site that you are in, or in case of services you can see the referrer field id filed with the current URL site. 

most of the HTTP Referred, are visible but, there are some services that are putting a 1x1 pixel on a site that is a tracker but you can’t see it.  

there also HTTP referrers on Emails 

## Cookies & Scripts

**Cookies** - are text files with small pieces of data — like a username and password — that are used to identify your computer as you use a computer network.

if you have a Facebook or Google, things in the website, For Example Facebook button, if ad from google branch, the company has scripts and store cookies about this.

## Super-Cookies

*Definition* -  methods to permanently track a user by placing something in the browser. 

- **Evercookie**

![Untitled](The%20Complete%20Cyber%20Security%20Course%20Network%20Securit%20efce7a2a28f54820831b68235fe51e1b/Untitled%205.png)

**Injected super cookie** - this is a cookie that is injected to from one side to the other, the sender can’t know of the cookie is added, because he can’t see the packet after he send it. any MITM can inject super cookies to a HTTP Packet. (ISP’s, and more..)

[https://www.accessnow.org/cms/assets/uploads/archive/AIBT-Report.pdf](https://www.accessnow.org/cms/assets/uploads/archive/AIBT-Report.pdf)

## Browser Fingerprinting & Browser Volunteered

the computer is sends a info about the computer about the that is receiving the info, but if the info is unique enough the receiver of the info that you sent can identify you. 

if you want to be less Fingerprinted you have to be less unique. You can test yourself and see if you’re common enough 

[https://firstpartysimulator.org/](https://firstpartysimulator.org/)

[https://ipleak.net/](https://ipleak.net/)

## More Tracking

![Untitled](The%20Complete%20Cyber%20Security%20Course%20Network%20Securit%20efce7a2a28f54820831b68235fe51e1b/Untitled%206.png)

## Browser & Internet Profiling

VPN 

Tor

# Search Engines & Privacy

## Search engines tracking censorship & Privacy

nowadays search engines aren’t just a search engines, for example google have a lot of other products like maps, chrome, ads and many more.

when a company have a code embedded inside of another website, the company that has the code is tracking you.

google have a mass surveillance, it has code or other services on 92 of the top 100 website in the world. 

![Google is having the data it’s collecting in the cloud un-encrypted.](The%20Complete%20Cyber%20Security%20Course%20Network%20Securit%20efce7a2a28f54820831b68235fe51e1b/Untitled%207.png)

Google is having the data it’s collecting in the cloud un-encrypted.

# Browser Security & Tracking Prevention

## Browser Hacking Demo

Disable JS, J and F

## Browser Isolation & Compartmentalization

kasm

Portable Software

VM’s

  

# Passwords & Authentication Methods

## Password Attack

 the biggest the company, the better the security, the smallest the weaker.

password can be stolen is transit from you to the destination, Phishing, Spyware. Malware, hacking to the password manager, hacking to the email, and many more...

## Password Cracking

### Hashing

Types of Passwords attack :

**Dict Attack**

**Brute Force Attack**

**Hybrid Attacks** - combination of both Dict attack, Brute Force Attack and Social Engineering. 

**Contaminator Attack** - when each word in the dict appends to each word in the dict. 

Input : pass 12345 omg Test

output : passpass pass12345 passomg passTest 12345pass ...

**Rule-Based Attack** - based on a words of a dict and rules, the words in the dict will be changed. For Example Lower Case, Upper Case and more...  

**Password-Patterns** -  after cracking a percentage of passwords, this function will represent statistics on this websites passwords. For Example Length, Character-set, Password Complexity and much more...  

**Custom Rules** - based on the website or the person itself, you can create custom rules for that maybe representing in the password. 

**Leet** - LEET → 1337, the “L” is 1, the “E” is 3 and the “T” is 7.

**Markov Chains** -  it’s a probability distribution that states that the Uppercase letters are comes at the beginning, the lower case latter are in the middle, and the numbers and the symbols coming at the end. 

### Online & Offline Cracking

Cracking can be done Online & Offline, in an Online attack the cracker is interacting with the crypto system, usually a dict attack on a network based service, For Example, ssh login of website login.

 the best took for online cracking in Kali is **Hydra**.

for the most part online attack are very slow because you are interaction with the crypto system, and if the internet is also slow the cracking is also will get slow. Nowadays a lot of the website services are aware about this kind of attack and after a number of tries just don’t accept login requests from this IP Address. 

in the offline attack, the cracker has access to the password hashes, there’s no interaction with ht crypto system, so the system can’t defend itself, it’s only a if the hacker can crack the hashes.

**Hash Function** - is a one-way function that gets a string and returns a fixed length string. the hash function is a fixed-function that means that if i use a string and a hash function and get a hash string, every one who is gets the string and know that hash function that I use will get the same out-put string that I got.   

### Rainbow Tables

it’s a table of a lot for words and there hash value on a specific hashing algorithm, so the hacker can take the data base of the hashing passwords and get a rainbow table and run the table on the database to get the passwords, but to get over this you need to add something to the password plain-text and the hash result will be different from the hash of the hash plain text. 

### Salting

*Definition* - it’s a random data that us used as an additional input to a one-way function that hashes data. 

the **PBKDF2** is a hash function that contain salt to add to the string, and than preform the hashing function on that combination and uses a key stretcher that means running multiple times while adding the salt to each result. Because the hash is preform from a combination of the string and the salt, if I change the salt the hash will come different. But salting isn’t that useful, because if you have a lot of password at a website, by the human nature a percentage of them will be poor designed, and crackable, which you can.

to make the password more secure you can get the result of the key stretcher with the salt and run it trough another different hashing algorithm with another key, which this “master key” you will store in a different server that isn’t connected to the DB server (that server can be a **HSM** (Hardware Security Module)).

## Hashcat

**SQL Injection Attack** - is an attack that can extract a hashes from a database, usually happens when a website isn’t validate the data it receives. 

**Hashing From the OS** - if you have local access to the drive you can mount the drive in another OS. (in windows the hash for the user are stored in the **SAM** file(Security Account Manager)). 

**pwdump7** - tool to extract the hashes of the Windows OS.

[Video Explaining Each Kali Password Tool](https://www.youtube.com/watch?v=fPHkO6T_g8A)  

## OS Passwords

OS password is having 0 protection from outside, all you have to do is to have access to the OS drive by a live OS or get the drive out and connect it to another machine.

in Ubuntu or Debian you can replace the password for the root user instead of crack the hash of the existing password ([https://www.maketecheasier.com/reset-root-password-linux/](https://www.maketecheasier.com/reset-root-password-linux/)) 

in windows you can pick the software of your choice and run it. (**Active@ Password Changer**)([https://www.makeuseof.com/top-windows-10-password-reset-tools/](https://www.makeuseof.com/top-windows-10-password-reset-tools/))

## Password Managers

**Master Password** - is a password manager that doesn't store the passwords it generating a password using your name and the name of the site and other variables in the manager and gives the same password every time.

**KeePassX** (for linux) can be adding to itself plugins and making it a online in the cloud.

## Creating a Strong Password that you can remember

[ZXCVNB](https://lowe.github.io/tryzxcvbn/)