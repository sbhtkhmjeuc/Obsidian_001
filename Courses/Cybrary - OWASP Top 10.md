# Cybrary - OWASP Top 10

Last modified: May 25, 2022 12:51 PM
Priority: Important
Progress: #p/🟡 
Subject: Cybersecurity, OWASP


*Definition* - **Open Web Application Security Project**, exist to improve application security. 

**OWASP Risk Rating Methodology**

![Untitled](Cybrary%20-%20OWASP%20Top%2010%207821bf8a6e79427b89959135c4017923/Untitled.png)

# Injection

**Injection Rating**

![Untitled](Cybrary%20-%20OWASP%20Top%2010%207821bf8a6e79427b89959135c4017923/Untitled%201.png)

## Vulnerabilities & Attacks (SQL Injection)

**Types of SQL Injections :**

[[SQL Injections]]

- **Unoin-based** - uses the UNION statement (Union SELECT queries), each SELECT query have to be the same columns and with similar data types
- **Error-based** - the goal is to change the DB’ tables that they will return an error statement that will have info that we can exploit later.
- **Blind** - they are Time & Boolean based which means that they isn’t an error message to go out form the DB.
- **Stacked Queries** - terminates a the original query and starts other one.

**How to Check** :

- There is no way how to validate
- the queries from the SQL Injection, will be mostly Dynamic with context-aware escaping

**Impact** :

- Data Loss
- Data Corruption
- Disclosure to unauthorized parties
- Denial of access

**Prevention** :

- Source code review
- Input validation
- Sanitize
- Safe API
- Parameterized queries
- Automated Testing
- whitelisting (server-side)
- LIMIT - limit that amount of info that lives that DB in one time

## Command Injection
[[OS Injections Course]]

also called **OS injection Attacks**

# Broken Authentication
*Definition* : un-correct implementation of the authentication, when broken authentication is implemented the attacker will be able to get passwords, keys, session tokens and many more.
![[Pasted image 20220529140135.png]]
### How to Check 
if the website is vulnerable to Broken Authentication attacks :
- Permit Automated attacks
- Permit Weak Passwords
- Weak Credential Recovery
- No MFA (Multi-Factory Authentication)
- Session ID's in URL
- Rotation of Session ID's 
### Impact 
- Identity theft 
- SS Fraud
- getting access to sensitive information 
- M
- Money laundering
### Prevention
- 2FA/MFA
- Rate Limiting - limiting the number of trying to login into an account
- Idle session timeouts
- secure cookies
- Change Default - passwords, anything that can make use to authentication 
- strong passwords 
### Lab 
in the lab the website didn't have secure cookies, which lead us to be able to change the `uID` and login as admin.

# Sensitive Data Exposure
**Tools:**
[[Cybersecurity Continuation|DIRBUSTER]]
[[Cybersecurity Continuation|Nikto]]
	 
![[Pasted image 20220529181150.png]]
*Definition* - any piece of data that can identify you as a person both in the digital and real world.
Very Prevalence because of weak encryption (MD5) or lack of encryption.
## How to Check (as Attacker)
- Clear text data transmission (HTTP, SMTP, FTP ,...)  
- Weak Algorithms
- Storage - storing sensitive data 
- No Encryption
- Server certificates - to know if we communicating with the right server
## Prevention
- Apply Encryption
- Don't store ant unnecessary data that is sensitive
- Strong Password
- Monitor - logs on the important things
### Sensitive Data Exposure ERROR MESSAGES
from the error message you can see a lot of info about the server side. 
from the current error message we can understand that we can run an SQLi attack in the DB. 

# XML External Entities (XXE)
[[XML External Entities (XXE) Explained]]
![[Pasted image 20220529191338.png]]
<mark style="background: #FF5582A6;">Works on Very Old XML Processors</mark> 
## Impact
- Disclose internal files
- Port Scanning
- Remote code execution
- DoS Attack
## How to check
- XML or XML uploads accepted directly
- DTD Enabled
- Older SOAP versions (<1.2)
- SAST - 
## Prevention 
- Using less complex data formats (JSON)
- Avoid Serialization 
- Patching
- Disabling DTD Processing
- White list server-side input
- SAST
## Lab
in the lab the attacker exploit the `/etc/passwd` file in to the screen, using XXE.

# Broken Access Control
**Definition** - it's when a user has more privileges than he needs to. In this kind of attack we can see by the Risk rating that Exploitability are low because for this attack the attacker is already in the system.   
## Risk Rating
![[Pasted image 20220530144001.png]]
## How to check
- Modify URL
- Key changing
- Privileges escalation
- Metadata changes
- Authenticated Pages
## Impact
- editing things that should not be edited
## Prevention
- Deny By Default
- Access Control 
- Disable web server directory listings
- Log failures
- Invalidate JSON Web Tokens 
## Lab
in the lab the attacker knew the name of the file that he was trying to exploit and send the request to see it trough and got the page, because maybe there's broken access control on the site, and the file is able to look at to every user in the site.

# Security Misconfigurations
**Definition** -  failing to implement all the security controls for a server or web application, or implementing the security controls, but doing so with errors.
## Risk Rating
![[Pasted image 20220530145930.png]]
## How to check
- Unnecessary Features
- Default Credentials
- Error Handling too verbose
- Security Features disabled
- old Software
## Prevention
- Harden Systems
- Remove Unnecessary features 
- Patching
- Segmentation
- Verification

# Cross-site Scripting (XSS)
the User Supplied data isn't getting validated, which lets the user enter malicious code 
[[Cross-Site Scripting (XSS) Explained]]
## Risk Rating
![[Pasted image 20220530155934.png]]
## How to check 
- Using Burp Suite
- and other Automated tools
## Impact
- Remote Code Execution
- Session Hijacking 
- Stealing Credentials
- running malware on the server
## Prevention
- Separate un-trusted Data
- Using frameworks that escape XSS
- Escaping Un-Trusted HTTP requests
- Content S
- ecurity Policy 
# Insecure Deserialization
[[Insecure Deserialization Attack Explained]]
## Risk Rating
![[Pasted image 20220531075029.png]]
## How to check
- Manual Review
- Proper sanitation of the data
- Data validation (by the server-side)
## Impact
- Object / Data Structure related attacks
- Data tempering Attacks
- Replay, Injection, Privilege Escalation .etc...
## Prevention
- Integrity checks in on objects 
- Isolated Code
- Log Failures
- Monitoring Deserialization
- Encrypt serialized Data
# Using Components with Known Vulnerabilities
## Risk Rating
![[Pasted image 20220531084336.png]]
## How to check
- Old Versions
- Not preforming vulnerability scan 
- No patching
- Compatibility scanning
- [Shodan](https://www.shodan.io/)
## Prevention
- Regular patching
- Remove unneeded items
- Monitor Vulnerabilities (CVE)
- Use Trusted Sources
## Lab

# Insufficient Monitoring & Logging Overview
- Failed Logging  Attempts
- Suspicious Activity
## Risk Rating
![[Pasted image 20220531143255.png]]
## How to Check
- Logs Stored only locally
- No monitoring of applications and API's
- No alerts on auditable events
- No Real-Time Monitoring
## Prevention
- Alerts
- Monitor Login failures
- Effective monitoring
- 