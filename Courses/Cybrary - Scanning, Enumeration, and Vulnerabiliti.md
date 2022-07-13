# Cybrary - Scanning, Enumeration, and Vulnerabilities

Last modified: May 25, 2022 8:25 AM
Priority: Important
Progress: Done
Subject: Cybersecurity

# Check for Live Hosts & Open Ports

## Checking for Live hosts

before you’re scanning, you need to see in which network the current machine you are in right now is. You can scan for live hosts with `nmap` and `hping3`, 

with `nmap` you can run `nmap -sn 192.168.0.1/24`, which will scan the whole network and return the whole hosts that are alive on the network that you specified, with out doing port scanning on all of them (thanks to the `-sn`).

with `hping3` you can do that by `hping3 -1 192.168.0.1`, which will ping the host that you typed. (the `-1` says that you are sending a ICMP Packets)

 

## Scanning for Open Ports

scanning ports using `nmap`, you need to type `nmap 192.168.0.1` ,you can also use number of IP Addressed on one command (`nmap 192.168.0.1 192.168.0.13`) 

scanning port using `hping8`, you need to type `hping3 -8 0-5000 -S 192.168.0.1` 

`-8` is for moving to SCAN Packets

`0-5000` - the port numbers to scan

`-S` - send a SYN Packets (to “start” a conversation with the machine)

# Sniffing

## **Scanning with with NMAP Half Connect Scan**

**Half-Connect** - it’s when the machines that started the communication sent a SYN packet and the second computer can send one of two possibilities:

1. the first one is **SYN+ACK** which means that it want to establish a connection
2. the second one **RST+ACK** which means that the machine that got the packet has the port that specified **closed**

The `nmap` command for Half Connect Scan is `nmap -sS 192.168.0.1`, `-sS` - to specify that we want the TCP SYN Half Connect Scan scanning (the Half Connect Scan uses that logic from the Half-Connection (👆) to determine the status of the specified ports.) 

`nmap` scans the 1000 most communicating ports.

## **Scanning with NMAP Full Connect Scan**

In this scan we are trying to make a full TCP connection with the other computer with a three-way handshake in TCP. You can do that with `nmap` by typing `nmap -sT 192.168.0.1` (`-sT` - making a full TCP connection) 

## **Scanning with XMAS Scan**

you can use **Zenmap** (GUI Version of `nmap`)

**XMAS Scan** - it’s a scan that light up the **PSH FIN URG** flags in the packet, and sends it to the dst machine, you can get three possibilities in return:

1. the first one **RST+ACK** which means that the machine that got the packet has the port that specified **closed**
2. the second is the computer send nothing, in this case the machine doesn’t want to create a connection with the first machine but the port that was specified was **open.**
    
    to run a XMAS Scan in `nmap` you need to type `nmap -sX 192.168.0.1`, (`-sX` - to specify that we need a XMAS scan).
    
    you can run the same command with the option `--reason`, that will give a little more info about **why that port is open.**
    

## **Scanning with NMAP ACK Scan**

**ACK Scan** - a scan that send a TCP packet with the ACK flag on to detect if the firewall on the victim computer is up or not. the idea behind that it the that attacker sends a packet to the victim’s machine, but the machine don’t have any connection open with attacker’s machine, so now two things can happen :

1. if the firewall is working on the victim’s machine, so the computer see that there isn’t no connection to the attacker’s machine and just drop the packet and won’t response to it.

to tun this scan will need to type `nmap -sA -p 80 192.168.0.1` 

1. if the firewall is down the machine will get the packet and respond with a **RST packet** (meaning that the there ware a initiation of a connection), because there were not an active TCP connection.

`-sA` - switching to an ACK Scan

`-p` - scan a specified port 

## **Scanning with hping3 and SYN Scan**

if you want to see the explanation behind just go up to **Scanning with hping3 and SYN Scan** above**.**

you need to run `hping3 -8 0-5000 -S 192.168.0.1` (this command will return a lot of port number, those are **Not Responding**)

`-8` - SCAN mode

`0-5000` - range of port to scan

`-S` - switch to SYN flags 

## **Scanning with hping3 and ACK Scan**

if you want to see the explanation behind just go up to **Scanning with NMAP ACK Scan** above.

to run this scan you need to type `hping3 -c 1 -V -p 80  -s 5555 -A`

`-c` - packet count 

`-V` - Verbose

`-p` - port number 

`-s` - the source port 

`-A` - ACK flag is on

## **Scanning with hping3 and XMAS Scan**

if you want to see the explanation behind just go up to **Scanning with XMAS Scan** above.

the command for that is `hping3 -c 1 -V  -p 80 -s 5555 -M 0  -UPF 192.168.0.1`

`-c` - packet count 

`-V` - Verbose

`-p` - port number 

`-s` - the source port 

`-M` - sets the TCP seq number

`-UPF` - turn on the **FIN PSH URG** flags in the packet

# Fingerprinting & Banner Grabbing

## OS Fingerprinting (nmap)

`-O` - enables the OS detection

you need to run `nmap -sS -O 192.168.0.1 192.168.0.4` (the command scans the OS for two machines, via SYN TCP scan)

## **Banner Grabbing**

to use banner grabbing in `nmap` you need to use the `-A` (**aggressive mode**) with you command.

For Example you can run `nmap -sS -p 80 -A  192.168.0.1`

# Enumeration Tools

## Zenmap (GUI for nmap)

`-T<0-5>` - the running speed of the process (**slow → fast**)

## **Dig and Finger Commands**

### Dig (Domain Information Groper)

*Definition* - tool to DNS Zone Transfer, dig is a flexible tool for interrogating DNS name servers. It performs DNS lookups and displays the answers that are returned from the name server(s) that were queried.

Example for a command : `dig axfr practice-labs.com 192.168.0.1`

### Finger

*Definition* - returns info about the OS users

Example command : `finger -s root`

# Vulnerabilities

## **Vulnerability Scanner Setup and Configuration of Core Impact**

we used the CORE IMPACT tool in windows, we did **Network Info Gathering** that returned to use info about the machines in the selected network.

## **Vulnerability Scanner Setup and Configuration of OpenVAS**