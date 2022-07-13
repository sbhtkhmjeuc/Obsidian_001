# Cybrary - Splunk
Type : #t/Course
Time Created : 2022-06-01 06:33
Last Modified : 2022-06-01 06:33
Subjects: #s/Cybersecurity #s/Splunk 
Progress: #p/🟠 
URL: Cybrary (https://app.cybrary.it/immersive/12963129/item/51516/activity/8021)
Priority: #i/🟥 

*Definition* - Its software helps capture, index and correlate real-time data in a searchable repository, from which it can generate graphs, reports, alerts, dashboards and visualizations.

## Splunk Website
https://www.splunk.com/ - the official Splunk website
https://docs.splunk.com/Documentation - Official Documentation
https://www.splunk.com/en_us/training.html?sort=Newest - Training + Certification
https://splunkbase.splunk.com/ - SplunkBase 
[Splunk Training and Courses for SOC Analyst](https://www.splunk.com/en_us/training.html?sort=Newest&filters=filterGroup3SOCAnalyst)

## Splunk Products
<mark style="background: #FF5582A6;">Splunk Phantom</mark>  - Splunk Phantom is a Security Orchestration, Automation, and Response (SOAR) system
<mark style="background: #FF5582A6;">Splunk VictorOps</mark> - VictorOps is now Splunk On-Call — new name, updated product. With Splunk On-Call, developers, devops and operations teams make on-call suck less while reducing mean time to acknowledge and restore outages.

## Parts of Splunk
### Data Pipe Line
<mark style="background: #FF5582A6;">Input➡️Parsing➡️Indexing➡️Searching</mark> 

**Input** - getting in data.
**Parsing** - the data is getting transferred events, based on a certain rules.
**Indexing** - getting the parsed events and index them for a later use.
**Searching** - in the stage there's a interaction between search-heads and indexers.

Example : 
UF - Universal Forwarder
UF Can be an Agent that is installed on server and collects windows event logs, which after that moves them into an indexer which he than breaks into events and place than in a place that it would be nice for the search head to send requests for,   
![[Pasted image 20220601074937.png]]

**Search Heads** - Search management, Schedules Searches - Alerts - Dashboards, Distributes searches to indexers.
![[Pasted image 20220601075827.png]]
**Forwarders** (Filter) - sends data onwards, UF / Light forwarder / Heavy forwarder
![[Pasted image 20220601080038.png]]![[Pasted image 20220601080746.png]]
 <mark style="background: #52b788;">You need to install the UF on the machine that you wish to collect data from.</mark> 
### Check before you install UF
- You need to check of the UF can talk to the Splunk server.
- if the ports that the UF uses are clear and the UF can use them.
![[Pasted image 20220601082614.png]]
![[Pasted image 20220601082653.png]]
## Web Splunk interface
when you are restarting the Splunk interface, you need to enable **Boot start**, before you're starting Splunk you can check if Splunk is running and maybe you don't see it by typing in Linux `/opt/splunk/bin/splunk status` which will return the status of Splunk, back to Boot start, you can enable it by typing `/opt/splunk/bin/splunk enable boot-start`, after you typed this you still need to start Splunk manually by typing `/opt/splunk/bin/splunk start`. 
## Ways for Splunk to get data
![[Pasted image 20220601090047.png]]
