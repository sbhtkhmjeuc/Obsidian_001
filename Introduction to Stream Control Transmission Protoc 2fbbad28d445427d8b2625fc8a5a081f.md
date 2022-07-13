# Introduction to Stream Control Transmission Protocol(SCTP) & Wireshark Analysis
Type : #t/Article 
Subjects: #s/Cybersecurity #s/Wireshark
Progress: #p/🟡 
URL: https://www.f5.com/pdf/white-papers/sctp-introduction-wp.pdf
Publisher: #psh/F5

**SCTP** is a hybridization between TCP and UDP, it’s reliable like TCP and can send data in chunks  like UDP.

## Multi-Homing

The benefit of multi-homing associations is that it makes the association more fault-tolerant against physical network failures and other issues on the interfaces. 

This can be done with adding another address and communicate with it in the meanwhile that the primary IP address is down. 

the protocol can notice whenever the primary IP address is down (Heartbeat/Heartbeat ACK and [RTT Calculations](RTT%20Calculations%20e52aa109df984bb5abfb51e33d286f5f.md) ) and choose an IP for communicate with.    

## Multi-Streaming

unlike TCP when you have one stream per connection, in SCTP you can have multiple stream per connection, that means that you can send for example images in one stream, video in another and text in another one, which can speed up the surfing on the internet for example.

Each message sent to a data stream can have a different final destination, but each must maintain message boundaries :

1. systems cannot send parts of the same message through different streams
2. one message must go through one stream.
3. When running an ordered data delivery system, if one of the packets is out of order or missing, the stream is blocked pending resolution to the order

**With the use of multi-streams, only the stream that is affected would be blocked; the other streams would continue to flow**

# SCTP Benefits over TCP

## Allow Half-Closed Connections

Half-closed connections can occur when one side of the conversation believes the connection is closed, but the other believes it is still open. TCP uses a four-way finish command consisting of bidirectional FIN and FIN-ACK messages. The half-open connection could exist if the reds messages are not sent. SCTP removes this possibility by using a three-way shutdown consisting of SHUTDOWN, SHUTDOWN-ACK, and SHUTDOWN-COMPLETION. Once this is initiated, both sides immediately cease communications.

![Untitled](Introduction%20to%20Stream%20Control%20Transmission%20Protoc%202fbbad28d445427d8b2625fc8a5a081f/Untitled.png)

## Preservation of message boundaries

With SCTP and UDP, the message’s boundaries are maintained and the application does not have to split the messages.

![Untitled](Introduction%20to%20Stream%20Control%20Transmission%20Protoc%202fbbad28d445427d8b2625fc8a5a081f/Untitled%201.png)

## Protect against SYN flooding attacks

A SYN flood attack occurs when a client or multiple clients send SYN packets to a server. This causes the target to commit resources and will usually overload the server, causing it to reboot or worse.  Using SCTP, the servers do not commit resources for the connection until the COOKIE-ECHO is received. This means that the SCTP client must initially commit resources in order to be able send information.

![Untitled](Introduction%20to%20Stream%20Control%20Transmission%20Protoc%202fbbad28d445427d8b2625fc8a5a081f/Untitled%202.png)

## Selective acknowledgements

In standard TCP, every message, or packet of information must be accounted for, resent as necessary, and processed in the order they were sent. SCTP has the ability to selectively acknowledge receipt of missing, disordered, or duplicated messages. Due to the nature of telecommunications most applications would end up discarding any unsynchronized messages. Therefore, the need to send and receive the information is forgone.

## Unordered data delivery

SCTP allows for unordered data delivery and since it has multiple streams, only the one affected is temporarily blocked. SCTP would process the messages in the order they arrived, not waiting for them to be numerically ordered With SCTPs reliable transfer, many networked disk solutions already provide ordering service.

![Untitled](Introduction%20to%20Stream%20Control%20Transmission%20Protoc%202fbbad28d445427d8b2625fc8a5a081f/Untitled%203.png)