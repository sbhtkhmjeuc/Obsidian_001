# Networks Course (Jakov)

Last modified: May 22, 2022 6:19 PM
Priority: Important
Progress: Done
Subject: #s/Programming
URL: https://data.cyber.org.il/networks/networks.pdf

# Introduction to Networks

when you are want to go to some website, you need to enter it’s domain on the search bar and there you go. Us the clients don’t see what is happening behind the scenes, so to simplify the client’s website is sending a request and the website’s server is pick up and responding to the request with all the things that the computer needs to load up the website in the browser.

### Key Concepts

- Server - the website that suppling a service, that why he is the **Server**
- Client - the Browser
- Request
- Response

### IP Addresses

every computer in the world have an IP address. the IP Address is including 4 numbers, each between 0-255.

### Exercise : Finding an IP Address

to do that we need to type in our CMD : `ping WEBSITE`.

the `ping` command is not meant for finding IP Addresses, but to check connectivity and how much time it takes for a message from the computer to the server and back. (the less time it takes for the message to go over and get back, the better connection we have)

### GeoIP

How can we know where all computer is based on their IP address ? there a organization that called “**IANA**” (internet Assigned Numbers Authority), that is in charge of Spreading the IP Addresses all over the world. Below the IANA there is another organization called “**RIR**” (Regional internet Registry), which is in charge of spreading IP Addresses all over the continent, below them there are “**ISP**” (Internet Service Providers), which are in charge of spreading IP Addresses in a spacific country, the ISP is filling a table of all the IP addresses with their GEO location and giving it back to the RIR.

### Routing

after we found that the location of the IP of the website, now we can trace the Routing of our request from our computer to the server and back to us.

this action is called **Routing**, because the internet is a bunch of computer that are connected to each other, when we make a request and getting a response they are moving through them. with routing we can see the exacts way that our request move along, and which exact IP’s it’s moving through and where they are in the world.

Every transferring of info between to computer called “**Hop**”.

### Communication Protocol

Protocol - it’s collection of rules the allows two interties, or more, to exchange info.

### DNS

we know that messages in the internet is sent to IP Addresses, but when you are typing a websites domain in the search bar how the computer know which IP Address to sent the request to ?

for this there is “**DNS Protocol**” (Domain Name System), it’s a Protocol that translate Domains into IP Address.

by using the `nslookup` command in the CMD, you can write a domain and get it’s IP Address your DNS Server. Example :

![Pasted image 20220119160012.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220119160012.png)

# Socket Programming

[Python Socket Programming Tutorial](Python%20Socket%20Programming%20Tutorial.md) 

### Client - Server Communication

the most common of Communication on the internet, the server is providing some service for the client, their Communication is being executed by “**Socket**”

### What is a Socket

Definition - socket is the end point of a connection between two components. to transfer data between computers they are need to be connected, just like info-transfer between programs that run in the same computer.

### Sockets Addresses

for the socket to move info we need to define it’s end point. to define an End-Point you need 2 things :

**IP Address** : to identify the IP Address you need to use the Compunent-Idenfiter, he basically asks “With which computer we are Communicating ?”

**Port** : to identify the Port we need to use the Process-identifier, the question he asks is “with which program on the computer you are communicating ?”. (the port number is between : 0 -65535)

Socket Address in a combinations between the IP and the Port. Localhost : `127.0.0.1` 

# Wireshark & The Module of 5 Layers

### The Module of 5 Layers

this module built the “**ISO**” (International Organizations for Standardization), for all tech manufacturing to stay in the guided line of how needs to be a communications between two computers, regardless of there manufacturing company.

Every Layer is not depended in Implementation of other Layer Every layer is doing it’s job, but don’t show how it’s done.

When a certain Layer is wants to talks to another layer (with the same number), they are doing it with **Protocol**

### Protocol

it’s a set of rules, that determinacy how communications between two sides will be.

going back to the layers, when a layer is going to send info to another layer in another entity, it’s need to eventually go to through any physical connection between them, and than go up to the relevant layer in the new entity.

### Packet

is a package of info the transfers from one place to another. the Packet is contains info of all the layers from the Module of 5 layers that included in the communication process.

every time that there is a packet that being sent, the info is sending and every layer is adds it’s info and basically raps it (Encapsulation), when it’s coming to it’s destination, every layer in the destination getting it’s info at the time (Decapsulation). the info that every layer adds called “Header” and it contains info to control on the packet. (you can see that every layer is getting the packet form the layer above and just add to it it’s own header)

![Pasted image 20220123151550.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220123151550.png)

**The First Layer - The Physical Layer** the job of this layer is to transfer bits from one point to another with minimum amount of errors. this layer is transferring 1 and 0, the layer doesn’t know the sequence of the bits, it’s job is to transfer one bit at a time.

**The Second Layer - The Data-Link Layer** this layer is allowing us to communicate with other entities that are next to us. this layer is adding couple of methods that can be used : - organizing the info in Frames, for the higher level to take care of. - avoiding collisions, when number of entities are trying to send info on the same physical transfer. - First aid for errors, of at least indenting them, to re-send then header.

**The Third Layer - The Network Layer** the job for this layer is to find the best Route between two entities (toward and from), this is happening using **Routers**, that are routing the packets between the different networks.

**The Fourth Layer - The Transport Layer** this layer is giving the ability to get number of services in the same entity (using Ports).

**The Fifth Layer - The Application Layer** using Different Protocols to do something, for example the HTTP protocol for surfing in the internet.

![Pasted image 20220123155721.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220123155721.png)

**The advantages of Packets**

1. **Identifying Errors Better** - when a packet is having a problem, instead of sending and whole info again, only the problematic part can be send and the packet will be fixed. 

2. **Multiple Streams** - programs will need to wait for program to finish using the computer in order of using it. 

3. **Sync Is better** - for the computer is more easy to organize info when it’s cut into little pieces.

### Wireshark

[Wireshark Packet Analysis and Ethical Hacking](Wireshark%20Packet%20Analysis%20and%20Ethical%20Hacking.md) 

# The Application Layer

the application layer is the collection of protocols that the apps are using in a direct way, and it simplifying on the communication of data in the internet.

### HTTP - Request and Response

Today the HTTP Protocol is hardly use, it’s place took the HTTPS (the S is stands for “Secure”).

the HTTP Protocol is acting in a “Request and Response” kind of way, for example when you want to go into some webpage, the computer is sending a request, and if the page is exists, the server is going to responded back with the webpage.

### The Request and the Response

![Pasted image 20220124133952.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220124133952.png)

### What is inside of the “Request & Response” (Header of HTTP)

in the header we can find a Header-Fields, these have info about what the request or the response does, For example : `Accept-Languge:he/r/n` - this Header-Language is List of acceptable human languages for response. the `/r/n` right after is to sperate between lines. `sp` - space `cr` - `/r` `if` `/n`

**HTTP Request**

![Pasted image 20220124143106.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220124143106.png)

**HTTP Response**

![Pasted image 20220124143141.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220124143141.png)

### The Data in the HTTP Reponses

when the app is requesting a new resource, the app will check if the response code is valid, for example `200 OK` , it means that the response is good. after the app will check if the content that it got is matching for the content that it was asking for. and Finally the if all is OK the app will show what she got.

### URL

Definition : Stands For **Universal Resource Locator**

![Pasted image 20220124145226.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220124145226.png)

there are Two kinds of URL’s Now a days, **Path URL** and **Query URL** the Example for Path URL is in the Image above. a Query URL has a `?` after the Path, and the Parameters, For Example : `google.com/search?q=application` you can see that the parameter `q` is equal to `application`.

### POST Requests

the `POST` request is for transferring information from the **APP to the SERVER** (amount of info that you can’t move in a `GET` request).

in addition of the URL parameters, in a `POST` request you could add content (there the image or different content will be transferred), usually for using this request you’ll need some kind of data base to store all the info.

## Advanced Subjects & Research Exercises

### Cache

Cache Memory us designed for “speed up” the process of loading certain web pages. it doing in by understanding which resources are being requested again and again with no change, and just saves them on the client’s device. For Exmaple, When ever the client is requesting the site again the things that are in the cache memory are going to be load faster becasue they are on the local memory of the device. it does this becasue requesting the same things over and over again is a waste of trasport.

**How does it Actually works :** the Cache mechanism is setting a “Conditional-Get”, that means that the `GET` request is going to initislise only if where is no local copy and updated in the memory of that resource.

to know if the client has the updated verison of the resource, the clint will send a `GET` request with the time when the resource last been saved in the memory, if the time is right the the server will reponse with “use you own copy”, but if the resource is not updated the server will send to the client the latest version of the resource (in this way the server will not need to send the resource over and over again, which is saving a lot of trasport).

### Cookies

in t’s core the HTTP Protocol is “stateless” (any request is being fulfilled by itself, without any connections for past requests.)

let’s take Wikipedia for Example, the HTTP protocol is perfect for this kind of service, because the site does need to know who we got to the spacific page that the user is in right now. But for websites like Amazon, the idea of “Sessions” are critical, you need to add to your own cart things that you want to buy, and then maybe even get discount prices on items that you have in your cart, But unlike Wikipedia Amazon need to seperate it’s cosumers for giving them each his own shopping cart.

Thinking Exercise: Q: How to implement a Shopping Cart ? What needed in the client ? What is needed in the Server ?

A : the server need to remember every session of every client, for Every `GET` request the server need to add the cart with the updated list, and for every `PORT` request the server need to update the cart accordingly.[[Pasted image 20220128130137.png]]

Thinking Exercise: Q: How it can be done, when a HTTP request is being gotten, how the server would know to which session it’s part of?

A: the Answer to this is by using “**Cookies**”, Cookie is a string that both the client and the server have, The server is determining the string in the beginning of the session and through all the session the client will attach this string to each of his requests in the future (the client and the server are transfering the request in a **HTTP Header Fields**).

the Cookie is going to be saved in the local storage of the Client and in the Server, Every Cookie has a Expiration date, after a session is expired the server will detenime a new Session identifier (New Cookie String).[[Pasted image 20220129154004.png]]

### DNS Protocol

DNS, Stands for Domain Name System, is a very popular protocol in the Application layer. His main job is to trasnlate between domain names and their IP Address. For Example : for `www.google.com` the DNS Protocol will give `173.194.39.19`. The DNS Protocol is also works in “**Request - Response**” Kind of way. after the client gets the IP Address he can proceed to the HTTP Protocol. [[Pasted image 20220129154908.png]]

**How the DNS Protocol Works** the DNS uses hirracy structure of **Zones**, For Example: `www.facebook.com` - Means that the `www` server, inside `facebook` server that inside the `com` server. [[Pasted image 20220129161350.png]]

The Main area in the internet is the **Root Area**, and he is represents by a `.`, so the Full Domain for Google is `ww.google.com.` (Notice the Dot after the `com`.)

**DNS Query**[[Pasted image 20220129165133.png]]

You can see that the DNS Query is above the UDP Protocol in the Fifth layer. the First field in Yellow, is the **Transcation ID**,this field is includes the idenfitier of the current query in order to seperate it from other Queries and making it easy for the computer to know which resopnse is for which Request. the Second , In Blue, is the Flags Field, this field is constructed from 8 differant flags with diffrant meanings. THe Third, In Green, is telling us how much Records is this DNS Packege is holding (in Wireshark they are called **RR** for Resource Records). and in the nest Fields we can see those Records, in the purple field there is the name that include the full domain, in the orange field there is the Type of the address it can be seen that the type is host address and finally the Class.

### SMTP Protocol

STMP was a protocol for email sending. the IP where the sniffing is occuring from is : `194.168.42.32`

the server `213.165.64.42` is listening, the client is writing a command `EHLO` that the server response (to indicate that the server is alive), the client is writing a command for the server to log him in, you can understand that because the command start with `AUTH` for Authentication, after running the code and decoding the text in base64 the client wrote : `￹frusta@gmx.com￹Password1!`, as you can see this is it’s mail address and it’s password for it. than the server is responding to the client with `235 Go ahead`, to indicate that the login was successful and the client can write new emails. The client start with sender email, and get a response from the server to continue, so on with the getter of the email, then the client writes `DATA` to write the content of the email, the client sends to the server every new line of the email, to indicate thhe end of the email writing, the client writes the subject of the email, and to quit the session he writes `QUIT`. 

# Scapy

### Sniffing

to run scapy you need to write in the CMD `cd spacy` to enter to the scapy folder and than `run_scapy` to run it.

to sniff packets you need to use the method `sniff()`, For example : `packets = sniff(count = 2)`, all the packets that is sniffed, are being stored in the packets array. to see than you need to enter the name of the array again, and scapy will tell you which packet from which protosol there are in the the array, and how much.

you can a little more info on the packets by using the `summary()` method. For example : `packets.summary()`

you can use the `.show()` method on individual packets to get more info on them.

**Ex. 5_3** `def http_get_filter(packet): return (TCP in packet and Raw in packet and bytes(packet[Raw]).startswith(b'\x47\x45\x54'))`

### Creating Packets

to create a packet you need to use the protocol you want, that the packet will have, For example : `my_packet = IP()`, now `my_packet` has the IP Protocol in it, you can open the packet and see that it has all the things that a IP packet have.

to change a property in the protocol you just need to call it and redefine it, For Example : `my_packet.dst = '10.1.1.1'`, this command changed the IP Destination of the packet.

you can define those parameters when you are initiate the protocol on the packet.

### Layers

you can built a packet with other kinds of protocol from different layer on the OSI Model, For Example : `my_packet = Ether()/IP()/TCP()` (the place of the layer just like the OSI Model), this packet have 3 protocol form 3 different later in the OSI Model, Ethernet from the second layer, the IP for, the third layer and so on. You can see that the smallest layer is first, this because if the Encapsulation that each layer adding on the layer before it. [[Pasted image 20220201131433.png]] you can see that in the image above, the IP layer is wrapping the TCP layer because it’s layer is smaller in the OSI model.

### Sending Packets

to send packet you need to use the `send()` method.

### Using Scapy in Python Script

to import scapy to use in python you need to write : `from scapy.all import *`.

**Ex. 5_4** Note : ==When you want to access a property in any layer, you need to specify the layer. For Example : `packet[LAYER].property`.==

# The Transport Layer

**the Transport layer have 2 main important jobs :**

1. the ability to talk to another entity and using her multiple programs. 

2. Reliable Transformation of Data (optional, because on all of the protocols in this layer using it.)

### Ports

if a client is connected to a server who have two programs, Web program and a Mail program. The client wants to use both programs, how the server can know which request is for which programs, for this the server uses **Ports**, each programs gets a Port, and the programs know that every request that is getting through that port is her to work on.

`netstat` - CMD Command, that is going to open a table of all the ports that are working right now in your computer (Displays active TCP connections). 

![Pasted image 20220204122545.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220204122545.png)

`netstat -a` - CMD Command, just like the `netstat` command but it will also will present the ports that are listening for info and still didn’t got it (Displays all active TCP connections and the TCP and UDP ports on which the computer is listening).

in a computer there are 65,535 ports, all the ports uses between 0-1023 are determined by the IANA, the programmers are agreeing between them and themselves on the uses for the remain ports.

### Reliable Transformation of Information

the networks that the “Transform Layer” is using is not reliable, the packets can lost in the way and come up not in order or with missing parts. the layer above (Application Layer) isn’t want to deal with all of that, so the transport layer is in charge of transform all the info from one program to another.

**Transform –> Application** - Send and Receive info from Program in another location. - Allows to create a connection between different programs

**Network –> Transform** - the Network Layer is providing for the Transform layer some kind of a cloud, which means that Transport layer doesn't know how the Network ****layer works, as far as the Transport layer is interested the Network layer is some network that connects between computers.

### Connection Protocols & Non-Connection Protocols

**Connection Protocols** are protocols that insure that the other side is going to get the info,(TCP). But to insure that this kind of protocol uses a lot data that is uses in the protocol itself. For Example, first you need to create a connection and close it in the end, use different protocols to insure that the data is got into it’s destination, this ways is a lot more slower than use a Non-connection Protocol instead. We would prefer Connection Protocol in case that it’s important that the data will get to it’s destination.

**Non-Connection Protocols** these protocols are not checking if the data got to it’s destination,(UDP). because the data isn’t checking if the data recived in the other end, so it’s a lot faster to send data. We would prefer Non-Connection Protocol in case that the data is need to arrive fast to it’s destination.

### UDP

**Headers in UDP packet :** `Source Port` - the port that the data in come out of in the source computer. `Destination Port` - the port that the data is need to come in through in the destination computer. `Length` - the length of the header of the UDP packet and he Data (From the layer bellow it). `Checksum` - in the UDP Protocol issues can accrue, for this there is the “Checksum”, it’s an indicator for dst computer to know if the data that he is got is valid, he does this by using some calculation on the data which is outputs a words in hex which is than checked in the dst computer.

### TCP

is the most popular protocol for Connection based protocols. The problem with the UDP protocol is that we can’t know if the packet arrived at it’s destination, in the right order and in it’s full form. the **TCP** protocol is assuring to the Application Layer that the info will arrive with all the right conditions.

### Sequence & ACK

Every packet that is sending with TCP has a **Sequence Number**, when a packet won’t get to it’s destination the server will notice that. For Example : if i sent 3 Packet, and packet number 2 fall in the way, the server will know that because he got packet number 1 and number 3, which means that he needed to get also number 2, but he didn’t.

the client can know which packet he needs to send again if it’s didn’t got to it’s destination, by waiting for **ACK** (Acknowledgement) by the server. Every packet that has being sent the computer need to send ACK for the same packet.

![Pasted image 20220207082051.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220207082051.png)

the Client will send the massage again until he will get a ACK response. by numbering the packet, the server easily can set them by order.

**Usage of Sequence** every **Byte** gets his own Sequence Number, not Every packet. the next sequence number is the current + the TCP payload in. that means that the TCP has 2 Streams on info, first the bytes sequence and the sequence number for every byte.

**Usage of ACK** the ACK return the Sequence Number back to the client to indicate that he got the packet. If the client sending a lot of packet one after another, the ACK can send instead the Sequence number of the last byte sin the last packet, For Example : 

![Pasted image 20220207093950.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220207093950.png)

### Setting up a link in TCP

called “**Three Way Handshake**”, because there are 3 packets that being sending between the client and the server

**First - SYN** (**Client –> Server)**

the SYN is the way of the client to say to the server : “I want to create a link with you”, the SYN is the “Communication” flag in the header of the TCP. the Sequence number of this packet is called “**ISN**” (Initial Sequence Number)

![Pasted image 20220207095537.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220207095537.png)

**ISN** the initial thought with the ISN is that he will have a fixed value of “0”, to start the communication. But to avoid Collisions (sending or receiving packets to the wrong places) he Generating him self **randomly**.

**Second - SYN + ACK** (**Server –> Client)** 

in case the the server wants to create the link, he answers with with a packet that has 2 flags turn on the SYN and the ACK, the SYN because he indicating to the client that he got his packet that has the SYN flag in it, and the ACK because to Acknowledge the last packet. the ISN for this packets will be also generated randomly because of the reasons before. 

![Pasted image 20220207101024.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220207101024.png)

**Third** - **ACK**

for the link to be based successfully the server needs to know that the packet arrive successfully. so the client sending a packet with the ACK turned on. The ACK is the sequence of the last packet plus the payload, in this case 1 bytes for the SYN.

**SYN - Example** 

![Pasted image 20220207102352.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220207102352.png)

the text in the red border is the SYN, which has the number 0, but it’s the real number you can see it in the yellow border down in the window.

**SYN + ACK - Example** 

![Pasted image 20220207102739.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220207102739.png)

**ACK - Example**

![Pasted image 20220207102815.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220207102815.png)

### Moving info on the Link

![Pasted image 20220207105320.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220207105320.png)

## Stopping A Connection

 

![Untitled](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Untitled.png)

# The Network Layer

*the purpose of the Network layer is to transfer packet from one entity to another.*

**Challenges of the Network layer :** 

1. **Different Hardware** - the Network layer need to be able to move the packet through any kind of computer. 

2. **Different Devices** - maybe the Network the connecting two computer runs over Wi-Fi, Ethernet cable and A Satellite.

**Network –> Transport :** the Network Layer gives to the Transport layer some kind of a abstract look over the internet, in the case of the Transport layer the internet look like that :

![Pasted image 20220214132958.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220214132958.png)

**Line –> Network :** the network layer is not interested to know if or how the devices are connected, the Network only needs to figure out the best route to the destination.

### Routing

to see the Route between a your computer and one of Facebook computers, you can type in the CMD : `tracert -d facebook.com` - this command will show you in a table all the devices that it’s meet in the way to the Computer of Facebook.

**What the Network layer needs to know in order of decided on a route ?** - the structure of the Network - if there is even ant connection between the source computer and the Destination computer. - which route is the fastest route.

**IP Protocol** the IP Address are for the Network layer, the network layer uses them to identify each entity.

the IP Address is structured with 4 bytes, that why it’s would look like a string of 4 numbers and each number needs to be between 0 - 255, For example : `192.168.2.5`.

Each IP Address is divided into two ID’s, **Network ID & Host ID**. the Network ID helping use to know to which Network the device is part of, and the Host ID if to Identify Devices in the Network.

For Example, If we decided that the first 2 numbers of the IP Address are the Network ID and the Other 2 are Host ID, So we can know if any IP Address is in our Network or not. There is an IP Address : `200.100.0.1`, and another one : `200.100.0.2`, because we decided that the first 2 numbers of the IP Address will be Network ID, we can see that the Two IP Address over here are in the same network (because they have the same Network ID in there IP Address)

**Subnet Mask** to know how much bits in the IP Address are part of the Network ID, can be shown in two ways : 

1. `192.168.1.0/16` - you can an IP Address and a number after it, the number says how much bits are part of the Network ID, in our case 16 bites which are 2 bytes, which are the 2 first numbers 

2. `IP - 192.168.1.1 Subnet - 255.255.0.0` - we can see two parameters in this statement, first is the IP Address and the second if the Subnet Mask, you can see that the mask is only 0 or 255, the 255 indicate that this part of the ID is shown and the 0 is not.

![Pasted image 20220214142111.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220214142111.png)

these two ways here are making the same point.

**Special IP Address** [IANA IPv4 Special-Purpose Address Registry](https://www.iana.org/assignments/iana-ipv4-special-registry/iana-ipv4-special-registry.xhtml)

`255.255.255.255` - Broadcast Address, meaning that the packet that is sent is for all of the entities on the network. `127.0.0.0/8` - Loopback Address / Local Host, this Address in indicating that the packet don’t need to leave the computer, because the Network ID is 8, that means that the address `127.5.6.7` has the same meaning.

### Private Addresses & NAT

in the 80’s there was a problem, there were a shortage in IP Address. So people Came up with a Solution that was called **NAT** (Network Address Translation). For a Computer to Communicate with Another computer Before NAT, the computer would use his own “Private IP Address” and send packets to the other computer, Because there were a shortage in IP Address you won’t be able to do that for a very long time. So the answer was the NAT, the idea behind NAT is that for a group of computers communicate with the internet they need to move the packet through a Router (because he is also a device, He has it’s own IP Address), so instead of using the the Private IP Address for the internet to see, the router will show it’s own IP Address for the internet, and save space for IP Address by showing one IP Address for a group of multiple Computer that sits on the same network.

**Switching Destination** the Router will get a packet for some kind of website on the internet (which contains also SRC address and a SRC port), he will take the SRC Address and assign it to a port in to Router (that ways in the ways back from The internet server to the computer, the router will know which computer in the network to send the packet to. He does this be creating a Table with the ports number in the router and the computer IP in the Network), and switch the SRC Address to his Address of the Packet. For Example : 

`SRC Address : 192.168.0.1` —> `SRC Address : 1.1.1.1` 

`SRC Port : 34533`                       `SRC Port : 60`

**The Router IP Address is also called the Public IP Address**

### The Routing Process

Router - his job is to connect between computers on the IP Level.

**How Does the Router Know to Where to Send the Packet ?** to deiced when to where to send the packet, there is some thing that called “**Routing Table**” - Routing Table is a Dynamic Table, that changes accordingly to the Network status, the Table will be scanned from the Bottom up, when the First row will be `Dst Address : 0.0.0.0 , Subnet Mask : 0.0.0.0 , Router : ROUTER'S IP ADDRESS`.

For Example :

![Pasted image 20220215135920.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220215135920.png)

this above is a Routing Table, if a Packet that is sent to DST : `192.168.45.77` the Packet will need to start from the Button and go it’s way up, and will go to router with interface : `1.1.1.1`, because the Subnet mask it `255.255.0.0` and the DST IP Address is in the same Network.

To find out that is the Routing Table for your computer you need to type in the CMD: `route print`.

### ICMP

stands for : **Internet Control Message Protocol**, the most used tool in CMD using this protocol is Ping.

**How Ping is Working** 

![Pasted image 20220216142706.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220216142706.png)

this is the Header of the ICMP protocol. ([RFC 792 - Internet Control Message Protocol (ietf.org)](https://datatracker.ietf.org/doc/html/rfc792))

`Type` - the type of the packet (Example : Type 8 is a Ping Request and Type 0 is a ping replay) `Code` - Like a Sub-Type (Giving more info on the packet state) `Checksum` - the Checksum of the Data

using the ICMP protocol, usually the data will sent back in it’s pure form.

**How Trace Route Works** `TTL` - Time To Live, is basically diffuses the problem of looping between routers, the TTL is a number of hops that the packet allowed to do before getting expired, when the TTL expired, that router that has the packet will send a response to the clients computer indicated that the TTL is Expired.

Because the Router that is has the packet is sending the response back, we can always (until the packet will will reach to it’s destination) the TTL and get response from every router in the packets route.

### DHCP

Stands for **Dynamic Host Configuration Protocol**, is a protocol that assigns IP Address for new computers in the network.

First, the New Computer is send a **DHCP Discover**, this request is for all the computers in the network (Broadcast) and asking to know if someone if he is a DHCP Server that can help assign an IP Address.

Second, when a DHCP server gets the request he send back in broadcast (because the New computer has no IP Address) **DHCP Offer**, the IP Address that he can get and more Dits.

Third, the computer get all of the Offers and selecting one, after he selected he sends a **DHCP Request** on broadcast, to notify all the other DHCP servers which IP Address he selected.

Finally, the DHCP server needs to send a **DHCP ACK** to assign the IP Address to this computer.

![Pasted image 20220216152250.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220216152250.png)

# The Line Layer

the Line Layer is responsible for **all communication between 2 entities that are connected to each other directly**.

**Line –> Network**: interface to transfer data on to two directly connected entities. Which means that the Networks layer only needs to figure out the route to the destination and the Line Layer will get the info to the destination.

The implementation of the Line Layer is in every Ethernet card that is on any electronic Internet-connected device.

### Ethernet Protocol

your address in the Line layer in called **MAC Address** (Media Access Control) or **Physical Address**, the Mac address is Unique and burned on your Ethernet Card and can’t be changed. you can see the Physical Address by typing `ipconfig /all` in the CMD.

### How Does Ethernet address built ?

Every Ethernet address is built with 6 bytes, usually each bytes is separated with `:`. The MAC Address has two parts, **Vendor ID & Host ID** this Vendor ID are to identify the manufacturer, and the Host ID is for identify the Unique Ethernet card. You can enter you Vendor ID into this site (http://www.coffer.com/mac_find) and it will tell you to which manufacturer it is related.

**Broadcast Address** `ff:ff:ff:ff:ff:ff` - this address will mean that the message is broadcasted to all the computers on the network.

### Stature of Ethernet Frame

![Pasted image 20220218180158.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220218180158.png)

`Premble` - the fixed sequence of 8 bytes that meant to synchronize both sides that a new frame is starting. `CRC32` - is a Checksum mechanism for identifies errors, his length is 32 bytes.

**Note** - if you will sniff all the packets in the line layer you will be able to see that the destination and the Source is swapping between two address, that is because we said earlier that the Line layer is only responsible for forwarding between only two entities, the two address that we can see are the two entities, the first one is needs to be our computer, and the second needs to be our Router that is connecting us with the internet.

### ARP

stands for **Address Resolution Protocol**, it usage is mapping between logical address of the network layer and the physical address of the line layer.

First, for the ARP to run you need to find the IP Address for the computer that the ARP needs to get it’s MAC Address. After you have the IP Address, the ARP send a Broadcast question for all the computer on the network and asks : “**Who Here has a IP address X, and What is your Mac address ?**”, in case the computer is in the same network he answers : “**I’m X and my MAC address is Y**”.

**ARP Cache** our OS is saving Cache of IP Address and there MAC Address in order of not asking again and again that same question. You can view the Cache in the CMD by typing `arp -a`.

**ARP Query** 

![Untitled](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Untitled%201.png)

the first things you can see is that the Destination is Broadcast with the MAC Address `FF:FF:FF:FF:FF:FF`, because the computer asks every computer that is IP Address is matches his MAC Address. The source will be the MAC Address of your computer, the Type is `0x806`, which indicates on that this Query is an ARP.

inside of the ARP Segment : The Orange Border  - indicates that the mapping is from IP –> Ethernet, it’s important because the ARP can also mapping other logical address to other physical ones. `OPCODE` - the type of the packet, 1 –> Request. The Pink Border - all the address of the Sender and the Receiver of the info, you can see that the MAC Target is : `00:00:00:00:00:00`, because we don't know the MAC Address of the computer that we want to send the info too.

**For Who the ARP Question Sent ?** We said earlier that the Line layer is responsible for the moving data between two end points that connecting directly with one another. So because ARP is moving on the Line Layer, the computers that he asks on the network has to be Physically-Directly connected to him.

if any computer wanted to use ARP to fund others computers MAC Address, the ARP will check the Subnet of the destination computer (Even though the Subnet is not indicates on any physical location of the computer), if the destinate computer has the same subnet, the source computer will send the ARP Request to the destinate computer, But if the destinate computer don’t has the same subnet the source computer will send the ARP Request to the **Default Gateway** (The router in charge of all outgoing packet in the network), And if the IP address’s MAC Address is already in the Cache the request won’t send.

![Pasted image 20220219140033.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220219140033.png)

### Devices of LINE & NETWORK Layers

**Hub** is a device of the Line Layer, he doesn’t know how Ethernet frame looks like, what is MAC Address and doesn’t know how to calculate Checksum, the only thing he does is connecting Entities to each other. Every entry in the Hub is called **Port**, the hub isn’t smart which means that when a computer send a packet to another computer, the hub will copy the message and will send it to all of the computer on the network, besides the computer who sent the packet. Every computer will see if the packet is meant for him, if not he will drop it but if it does the computer will save the info and use it. This action is not every secure because all the computers in the network are able to see all the communications of all the computers in the network.

**Switch** is a device of the Network layer, the Switch is like the Hub, he’s also connecting computers to each other, but unlike Hub he has the ability to calculate Checksum, he knows what is a Ethernet frame and MAC Address.

one of the benefits of the switch is that he can remember Each MAC Address of every port. the switch does this usually when he is new and don’t have any data on it, the first packet will arrive and because the switch doesn’t any idea who is who now he will send the packet in broadcast for everyone, but now the switch noticed something, that the packet came from port 1 (for example) so he scans the packet and get the Destination MAC Address of the computer that sits on port 1, that way the switch fills up it table of port and MAC Address.

### Appendix A - Collisions

collisions happens in the network when computers are “talking” in the same time, this will mess-up all the info of the packet.

**Shared Branch** is a network branch that connects number of entities and allows them to exchange info, the info in this branch is distributed in Broadcast. For example, a network of computers that are connected in a Hub is a Shared Branch.

*Dead Time* - is when the line is empty from info, the responsibility of the Line layer is to minimize Dead Time a much as possible.

**Ways to Avoid Collisions** there are many ways to avoid collisions, one of the first protocols to do that is called **ALOHA**, when any entity will want to start sending info it will start immediately, the computer will listen to the message, of the message is the same one it sent it’s OK, but if not there were a collision. If there were a collision the computer will wait a random time and then try to send the message again.
another way you can avoid collisions is using a switch, switches nowadays are more smart and can know when the channel if free or packed, and it can manage the packet to avoid collision in the first place.

## The Network Devices

![Pasted image 20220219162445.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220219162445.png)

# The Physical Layer

the responsibility of the physical Layer is to transfer single bit between computer components, there are many ways to transfer a single bit but we are going to focus on the main three Medium that you can transfer from: **Air, Fiber Optics and Copper Wires**.

### Air as a Medium

Let’s take for example the TV remote, the remote communicates with the TV in Infra-red lights, with the agreement that no-light is 0 and light is 1.

**Encoding** - is a process when info is translates into an pre-agreed on signs. all the implementation process of the physical layer is to define a ways to translate the numbers 1 & 0 to a pre-agreed on signs on a medium.

the problem with the light info transfer method is timing, for example one time measure can seem long to one person and short to another. to solve this problem the sienites are starting to move to **Waves**.

### Info-Carry-Waves

**Wave** - is a forwarding of revolutionary interference in side a Medium. There are multiple important properties to a wave: Length - refers to the length of the wave when he makes 1 cycle. Cycle Time - refers to the time that the wave makes one cycle. Frequency - number of cycles that the wave makes in 1 second. Amplitude - the Max height of the wave.

**The Electromagnetic Wave** ([קרינה אלקטרומגנטית – ויקיפדיה (wikipedia.org)](https://he.wikipedia.org/wiki/%D7%A7%D7%A8%D7%99%D7%A0%D7%94_%D7%90%D7%9C%D7%A7%D7%98%D7%A8%D7%95%D7%9E%D7%92%D7%A0%D7%98%D7%99%D7%AA)) is the kind of wave that is moving through many kinds of Mediums by changing the electric and magnetic fields. let’s take for example the light from the sun, the light wave-length is between 400 - 800 Nanometers, the volume of the light is equal to the amplitude of the wave electromagnetic wave.

**What are the ways to Encode dot and line using Electromagnetic waves ?** the first answer to this question was to control the amplitude and the frequency of the wave and change it that a dot is a one second and line is 3 seconds, and between line and dot stop the broadcasting, but this answer is going to make moving info a lot longer. So for this there were made 2 Modulations: **Frequency & Amplitude**. 

*Amplitude Modulation* - in this modulation the wave will be in a fixed frequency, and the amplitude of the wave will change accordingly to the info wave. 

*Frequency Modulation* - in this modulation the amplitude of the wave will be fixed, and the frequency of the wave will change accordingly to the info wave.

![Pasted image 20220220085847.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220220085847.png)

### Copper as a Medium

in the late 19th century, the **Telegraph** was invented, and gave the ability to transfer info trough a Copper wire using a Current (זרם חשמלי).

**The Telephone Line & ADSL Modem** the same Copper wire was able to move also voice from a telephone and bits for the internet in the house, this was able because of the ADSL Modem. we can see that the Modem has two eateries one for internet and one for phone line, what will happened if we will connect the phone cable to the internet entry, there will many collisions and interference between the two channels.

![Pasted image 20220220091836.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220220091836.png)

**How Does the Telephone works ?** the regular telephone is converting human voice into Current and vice versa using a Microphone and a Speaker. **The Process**: 

1. when we are talking into the microphone we are making a wave of voice that moves in the air. 

2. the wave hits that microphone and vibrates the surface of the microphone in changing Volume & Frequency by the ton of the person who talking. 

3. the microphone is making a current which is volume and frequency matching the voice wave from the person, 

4. the current is transferring to the other telephone on the other side trough a simple Circuit. 

5. in the other phone the current is converts into voice which is put-out to the ear of the other person.

for the telephone to work, there’s need to have a Circuit, that is why the telephone cables are always in pairs, when the both telephones are picked there is a Circuit.

![Pasted image 20220220093638.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220220093638.png)

**How Does Modem works ?** 

it’s a device that modulates and recovering bits on a channel. the modem allows to move bits on a copper by understanding that the human voice is between 20kHz - 50Hz, so the modem uses current frequency to encode bits. 

![Pasted image 20220220132505.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220220132505.png)

at this time the speed of the modem was around 300bps (bits per second) which is very slow for a computer, there were couple of things that took place in order of speeding up the modem: 

1. enlarging the amount of frequencies that each side can broadcast in. 

2. enlarging the tempo of the bits broadcast from 300 bps to 60bps. 

3. **Cancellation of the Echo** - when the data is sent, there was echo which is Interferes with the messages in the two modems and the message came out crumbled, so in order of the two modems to “speak” in the same time each one needed to talk in different frequencies (can be seen in the table above), but because there were not any echo, the two modems are now able to talk in the same frequencies which opens up more frequencies to talk in. 

4. **Filter interference & Solving Errors** - would make the data go faster.

**ADSL Modem** 

the new Modem now was able to move info in **100Mbps**, because the telephone companies were now moving them selves closer to the clients houses which allows them to broadcast on frequencies which were a lot higher that 20KHz (which allows move a lot of info, without suffering the length on the cables).

**Analog & Digital Encoding** 

let’s take for example a record player and CD, in a record the wave that describes music is being graved in the record in the same way that it’s resembles in reality.

in CD, the music is encoded using bits, which means that after the recording of the audio, the audio needs to be convert into binary code that the computer will understand, there a lot of ways to encode music into binary, but one ways is to take a sample of audio and measure it and encode the measurement into binary code, which makes “dots” in the image, as more dots are in the more good the audio will sound.

![Pasted image 20220220150409.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220220150409.png)

**What happens when Telephone and ADSL modem are connected ?** 

when both of them connected, they can interfere one to another, that is why you need a filter in the telephone jack. the job of the filter is to filter and to separate frequencies, the filter knows that the human ear can one take frequencies between 50hz to 20khz, so the filter uses electronic components to separate all of the frequencies in the line to the telephone and the other to the modem.

**The Usual Ethernet Cable** 

this cable is also called **CAT5**, he has in it 4 pairs of wires, each pair in different color, there are many CAT wires they all look similar in the outside but in the inside they are differ in many ways.

the connection head of the Ethernet cable is called **RJ-45** and the standard that this cable is preforming on called **BASE-T10**.

**Duplex** - it’s a feature that allows two sides to “talk” in the same time, a system that is Half Duplex means that only one of the sides can “talk” in the same time, unlike waki toki, the telephone is a Full Duplex system which means that it allows to sides to talk simultaneously.

**Base-T10** 

![Pasted image 20220220152259.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220220152259.png)

this standard can show anything about the ways of transferring data, which duplex is the system, and much more.

**Why can't you connect two computers on the same cable ?** because the way that the cable is built the two computer will talk on the same wire which won’t make it possible to communicates. In order of the two computers to talk to each other on the same cable, the cable need to be **Crossed Cable**.

![Pasted image 20220220154055.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220220154055.png)

**Microwave Transmission** is a way of transmission info using wave length that can be measures in a ruler. this wave are in frequencies between 30gHz - 1gHz, this broad of waves is very good for this kind of way to move info: 

1. because of the small wave length it easier to build Directional Antenna 

2. the Microwave are moving trough the atmosphere without problem. 

3. the frequency of the microwaves allowing to modulate of them a lot of bits.

**Optical Fiber** it’s a fiber of glass of plastic, that allows light to move trough.

![Pasted image 20220220154932.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220220154932.png)

**Some of the Benefits of Optical Fiber** 

1. there is needed very little energy to pass on light trough the fiber. 

2. there are not interference in the optical fiber what allows to move bit at a very high speed.

the are a lot of ways to modulate bit in an optical fiber, usually it’s brighter light is 1 and dimmer is 0, but you can also use colors to move info simultaneously. because light can dimmer in the way the fiber uses a **Relay** to power up the light.

# Appendix A - Wireless Network

the WIFI is using the 802.11 protocol that set by the IEEE, this protocol has a lot of sub-protocol. The WIFI Network ain’t using the exact frequency but in one that close to it, a 2.4GHz is broadcasting on 2.5-2.4 because there are 14 channels in the WIFI each channel is using 22mHz range.

![Pasted image 20220220160202.png](Networks%20Course%20(Jakov)%207b2d2bbb2502408e90b18422d88b583e/Pasted_image_20220220160202.png)

between the channels there is a overlap that is why wireless network that are broadcasting on the same channel my cause interference to each other. another issue with the broadcasting frequency in that it’s Half Duplex which means only one side can broadcast info while the others are listening, that means that as more devices are on the network it’s broadcasting frequency in going to be divided by all of the devices.

# How it’s all connecting

our computer wants to connect to Facebook, let’s show that way from our computer to fakebook’s server.

1. First all we have is our MAC Address, we need an IP Address, we can get one using a DHCP Server which will hock us up with one, to send a request to DHCP server we need to send the request in broadcast which means that all of the computer including the DHCP server seeing the request and because he is a DHCP server, he will answer it.
2. now we got IP Address, MAC Address and Subnet. You now asking “How does the request got to the DHCP Server ?”, our computer is connected to a Switch which also connected to the DHCP server and our router (nowadays the Home router is also the DHCP of the house).
3. now we need to know what is the IP Address of facebook’s server to ask him for the page, so we can use DNS server to help us to answer it. just like the computer the DNS server has it’s own IP address, we know the DNS server of our ISP because we got it in the process of the DHCP.
4. the question is how does the computer is getting trough to the DNS server, first of all the we check if the DNS server is in our subnet, if the DNS server is in your subnet you the computer will just send the request straight to him, but in case the computer and the DNS server are not in the same Subnet, the computer know that he needs to give the request to the default gateway (the router that connects the computer with the rest of the world, we got it’s IP in the DHCP process).
5. to communicate with the router we need his MAC Address, so we are broadcasting an ARP query, which will give us the MAC address of the router, now we got the MAC Address of the router, we send him the packet, he will transfer it to another router using his routing table, until the packet gets to the DNS server, now we have the IP Address of facebook’s servers.
6. now we need to create a connecting with the Facebook server, because we want to get a internet page, with must create a TCP connation, the port which the Facebook server will get the packet will be 80 because most HTTP servers are in port 80, and the port which will send the packet from our commuter will be a random port, besides those that the computer uses for applications. the TCP connection with the server will be created using the Three-Way-Handshake.
7. after we created a TCP connection with the server, we can send a HTTP request for the page, which will eventually get us the Facebook home page.

if our computer uses NAT, the whole process is similar, but the IP Address of the computer will be the public IP Address of the router, and in the way back of the server, the router will need to check his table of ports and IP Address to know to which computer to send the packet back to.

# Socket Programming : Advanced

# Need to learn more about the *Application Layer in Page 135, in Scapy in Page 154, in Transport layer in page 213, in Network Layer in page 272*