Tools:
**Gobuster** - used to find private of hidden website pages

### Web Application Security: 
**Identification and Authentication Failure** - Identification refers to the ability to identify a user uniquely. In contrast, authentication refers to the ability to prove that the user is whom they claims to be: 
- Allowing the attacker to use brute force, i.e., try many passwords, usually using automated tools, to find valid login credentials.
- Allowing the user to choose a weak password. A weak password is usually easy to guess.
- Storing the users’ passwords in plain text. If the attacker manages to read the file containing the passwords, we don’t want them to be able to learn the stored password.
**Broken Access Control**: Access control ensures that each user can only access files (documents, images, etc.) related to their role or work.
**Injection**
**Cryptographic Failures**:
- Sending sensitive data in clear text, for example, using HTTP instead of HTTPS. HTTP is the protocol used to access the web, while HTTPS is the secure version of HTTP. Others can read everything you send over HTTP, but not HTTPS.
- Relying on a weak cryptographic algorithm. One old cryptographic algorithm is to shift each letter by one. For instance, “TRY HACK ME” becomes “USZ IBDL NF.” This cryptographic algorithm is trivial to break.
- Using default or weak keys for cryptographic functions. It won’t be challenging to break the encryption that used `1234` as the secret key.
### OS Security
1.  Authentication and Weak Passwords
2.  Weak File Permissions
3.  Malicious Programs
### Network Security
##### Hardware Solutions
- **Firewall appliance**
- **Intrusion Detection System (IDS)** - detects system and network intrusions and intrusion attempts. It tries to detect attackers’ attempts to break into your network.
- **Intrusion Prevention System (IPS)** - detected intrusions and intrusion attempts. It aims to prevent attackers from breaking into your network.
- **Virtual Private Network (VPN)** - ensures that the network traffic cannot be read nor altered by a third party. It protects the confidentiality (secrecy) and integrity of the sent data.
##### Software Solutions
- **Anti-Virus Software**
- **Host firewall**
### Introduction To Digital Forensics 
*Definition* - Forensics is the application of science to investigate crimes and establish facts.
1.  **Public-sector investigations** refer to the investigations carried out by government and law enforcement agencies. They would be part of a crime or civil investigation.
2.  **Private-sector investigations** refer to the investigations carried out by corporate bodies by assigning a private investigator, whether in-house or outsourced. They are triggered by corporate policy violations.
##### Digital Forensics Process
1. **Acquire the evidence**: Collect the digital devices such as laptops, storage devices, and digital cameras.
2. **Establish a chain of custody**: Fill out the related form appropriately, The purpose is to ensure that only the authorized investigators had access to the evidence and no one could have tampered with it.
3. **Place the evidence in a secure container**: You want to ensure that the evidence does not get damaged. In the case of smartphones, you want to ensure that they cannot access the network, so they don’t get wiped remotely.
4. Transport the evidence to your digital forensics lab.
###### At the Lab
1.  Retrieve the digital evidence from the secure container.
2.  Create a forensic copy of the evidence: The forensic copy requires advanced software to avoid modifying the original data.
3.  Return the digital evidence to the secure container: You will be working on the copy. If you damage the copy, you can always create a new one.
4.  Start processing the copy on your forensics workstation.
### Security Operations
#### SOC
1. Find vulnerabilities on the network
2. Detect unauthorized activity
3. Discover policy violations - A _security policy_ is a set of rules and procedures created to help protect a company against security threats and ensure compliance. What is considered a violation would vary from one company to another; examples include downloading pirated media files and sending confidential company files insecurely.
4. Detect intrusions - One example scenario would be an attacker successfully exploiting our web application. Another example scenario would be a user visiting a malicious site and getting their computer infected.
5. Support with the incident response
##### Data Sources
1. Server Logs 
2. DNS Activity - The SOC can gather information about domain names that internal systems are trying to communicate with by merely inspecting DNS queries.
3. Firewall logs 
4. DHCP logs
5. Database logs
##### SOC Services
###### Reactive Services -
- **Monitor security posture**: This is the primary role of the SOC, and it includes monitoring the network and computers for security alerts and notifications and responding to them as the need dictates.
- **Vulnerability management**: This refers to finding vulnerabilities in the company systems and patching (fixing) them. The SOC can assist with this task but not necessarily execute it.
- **Malware analysis**: The SOC might recover malicious programs that reached the network. The SOC can do basic analysis by executing it in a controlled environment. However, more advanced analysis requires sending it to a dedicated team.
- **Intrusion detection**: An _intrusion detection system_ (IDS) is used to detect and log intrusions and suspicious packets. The SOC’s job is to maintain such a system, monitor its alerts, and go through its logs as the need dictates.
- **Reporting**: It is essential to report incidents and alarms. Reporting is necessary to ensure a smooth workflow and to support compliance requirements.
###### Pro-Active Services
- **Network security monitoring (NSM)**: This focuses on monitoring the network data and analyzing the traffic to detect signs of intrusions.
- **Threat hunting**: With _threat hunting_, the SOC assumes an intrusion has already taken place and begins its hunt to see if they can confirm this assumption.
- **Threat Intelligence**: Threat intelligence focuses on learning about potential adversaries and their tactics and techniques to improve the company’s defenses. The purpose would be to establish a _threat-informed defense_.