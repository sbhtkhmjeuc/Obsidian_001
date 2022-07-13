# AWS Certified Cloud Practitioner Certification Course (CLF-C01)
Type : #t/YouTube
Time Created : 2022-06-07 16:43
Last Modified : 2022-06-07 16:43
Subjects: #s/AWS 
Progress: #p/🟠 
URL: https://www.youtube.com/watch?v=SOTamWNgDKc
Publisher: #psh/FreeCodeCamp
Priority: #i/🟥 

 ![[Pasted image 20220607164536.png]]

## Cloud Concepts
![[Pasted image 20220607173339.png]]
##### CSP 
**Cloud Service Provider**, 
- it's a company that provides multiple cloud services
- those cloud services can be chained together to create different **cloud architectures** 
- those cloud services are accessible vie using Single API (in our case it's **AWS API**) 
- utilized metered billing based on time of usage
- rich monitoring built in, which you can enter through **AWS CloudTrail**
- providing IAAS (infrastructure as a service) which means that the have Networking, Storage all the things the Normal computer have\
- offers a automation via IAC (infrastructure as code)
- ![[Pasted image 20220607175631.png]]
##### Landscape of CSP's
![[Pasted image 20220607180643.png]]
##### Common Cloud Services 
there are hundreds of cloud services out there but there are 4 main ones:
1. **Compute** - Virtual Computer that can run code, programs and applications
2. **Storge** - Virtual Hard-Drive
3. **Networking** virtual network defining internet connections or network isolations between services or outbound connections to the internet
4. **Databases** - Virtual Database
AWS have above 200+ different cloud services.
##### AWS Technology Overview
![[Pasted image 20220607182041.png]]
##### The Evolution of Compute
there are 4 kind of compute services:
1. **Dedicated** 
	- ![[Pasted image 20220607183629.png]]
	- the physical server utilize only one single costumer
	- you have to guess your capacity
	- <mark style="background: #FF5582A6;">you'll overpay for underutilized server</mark> 
	- replacing a server is very difficult
	- <mark style="background: #52B788;">you have guarantee of security, privacy, and full utility of underlying resources.</mark>     
	- you're limited by Host OS (meaning just one OS)
2. **VM's**
	- ![[Pasted image 20220607185138.png]]
	- you can run multiple VM's on one physical machine using a **Hypervisor**
	- you're able to pay for a fraction on the server 
	- physical server shared by multiple costumers
	- <mark style="background: #FF5582A6;">you'll overpay for underutilized server</mark>
	- You are limited by your Guest OS
	- Multiple apps running on a single VM can result on conflicts in resource sharing
	- Easy to import / export images for migration
	- Easy to scale horizontally / vertically
3. **Containers**
	-   ![[Pasted image 20220607185200.png]]
	- VM that running multiple containers 
	- **Docker Deamon** - software that lets you run multiple containers
	- you can maximize the utilize of the available capacity which is more cost-effective <mark style="background: #FFF3A3A6;">Docker</mark> 
	- your containers share the same underlying OS so containers are more efficient than multiple VM's 
	- Multiple apps can run on the same time without being limited to the same OS Requirements and will not cause conflicts during resource sharing. <mark style="background: #FFF3A3A6;">Docker</mark> 
4. **Functions**
	- ![[Pasted image 20220607193936.png]]
	- Managed VM's running a Managed Containers
	- Knows as Serverless Compute
	- you upload a piece of code, choose the amount of memory and duration to run 
	- only responsible for code and data **Nothing Else**
	- very cost-effective, only paying when your code is running
	- Cold-starts is a side-effect of this setup (<mark style="background: #FF5582A6;">takes time</mark>)
##### Types of Cloud Computing
**SaaS** - Software as a Service, a product that is run and managed by the service provider, For Example : Gmail, Salesforce, office 365. (**for Users**) 
**PaaS** - Platform as a Service, focus on the deployment and management of your apps, For Example : Heroku, Google cloud provider. (**For Developers**)    
**IaaS** - Infrastructure as a Service, the basic blocks for cloud IT, provide access to networking features, computers and data storage space, For example : Azure, AWS, Oracle and more.(**For Admins**) 
##### Cloud Computing Deployment Models
1. **Public Cloud** - Everything (meaning Workload or Projects) is built on the CSP AKA Cloud First / <mark style="background: #FF5582A6;">Cloud Native</mark>.![[Pasted image 20220607203901.png]]
2. **Private Cloud** - Everything built on company's data centers AKA **On-Premise** / Open-Stack.![[Pasted image 20220607204027.png]]
3. **Hybrid** - using both On-Premise and a CSP.![[Pasted image 20220607204713.png]]
4. **Cross-Cloud** - using multiple Cloud Providers AKA **Multi-Cloud**. ![[Pasted image 20220607204826.png]]
![[Pasted image 20220607205030.png]]

## Digital Transformation
##### Innovation Waves
*Definition* - are hypothesized cycle-like phenomena in the global world economy, the phenomena is closely connected with Technology life cycles.![[Pasted image 20220607211718.png]]
##### Burning Platform
*Definition* - is a term for when a company abandons old tech for new tech with the uncertainty of success and can be motivated by fear that the organization future survival hinges in it's Digital Transformation.
##### Digital Transformation Check-List
[AWS Check-List](https://d1.awsstatic.com/whitepapers/digital-transformation-checklist.pdf)
##### Evolution of Computing Power
![[Pasted image 20220607212621.png]]
##### The Benefits of the Cloud
- Agility
- Pay-as-you go pricing
- Economy of scale
- Global Reach
- Security
- Reliability 
- High Availability 
- Scalability 
- Elasticity
##### The Six Advantages on Cloud
![[Pasted image 20220607213339.png]]
## AWS Global Infrastructure
![[Pasted image 20220607213605.png]]
you can go to [here](https://aws.amazon.com/about-aws/global-infrastructure/) and look for all of the regions and zones that AWS was servers on.
##### Regions
![[Pasted image 20220607213940.png]]
- Each region generally has three Availability Zones 
- New services almost always become available first in **US-EAST**
- Not all AWS services are available in all regions
- all you billing info appears in **US-EAST-1** (**North Virginia**)
- the cost of AWS services vary per regions
##### Regions vs Global Services
**Regions Services**
- You generally don't explicitly set the region for a service at the time of creation.

Global Services 
- those are services that operates across multiple regions and the region will be fixed to "Global" in the dashboard.
- Services like : Amazon S3, CloudFront, Route53, IAM and more.. 
- for those services at the time of creation:
	- there's no concept of region (i.e. IAM User)
	- A Single region must be explicitly chosen (i.e. S3)
	- A Group of regions are chosen (i.e. CloudFront)
##### AZ (Availability Zones)
*Definition* - is physical location made up of one or more datacenters

*Datacenter*  - is secured building that contains hundreds of thousands of computers.

<mark style="background: #ABF7F7A6;">a region will generally contain 3 AZ's</mark> 

the Datacenters within a region will be isolated from each other (different buildings), but they will be close enough to provide low-latency (<10ms). it's common practice to run workloads in at least 3 AZ's to ensure services remain available in case one or two datacenters fail. (High Availability)

AZ's region code `us-east-1a` (the `a`)

 you can choose a subnet which is associated to an AZ.
![[Pasted image 20220608114339.png]]
![[Pasted image 20220608114510.png]]
##### Fault Tolerance
**Fault Domain** - is a section of a network that is vulnerable to damage if a critical device or system fails. 
The Purpose of the fault domain is that if a failure occurs it will not cascade outside that domain, limiting the damage possible.

the scope of a fault domain could be:
- specific servers in a rack
- an entire rack in a datacenter
- an entire room in a datacenter 
- the entire data center building 
usually it's up to the CSP to define the boundaries of a domain.
	![[Pasted image 20220608175737.png]]
##### AWS Global Network
![[Pasted image 20220608181525.png]]
##### Point of Presence
![[Pasted image 20220608181746.png]]
##### Tier 1
*Definition* - is a network that can reach every other network on the internet without purchasing an IP transit or paying for peering.
![[Pasted image 20220613105023.png]]
the AWS AZ's are all connected to multiple tier-1 transit providers
##### AWS Services that using PoP's
![[Pasted image 20220613105203.png]]
##### AWS Direct Connect
![[Pasted image 20220613105321.png]]
##### Local Zones
![[12 AWS Local Zones.png]]
##### Wave Length Zones
![[13 Wavelength Zones.png]]
##### Data Residency
![[14 Data Residency.png]]
##### AWS For Governments
![[15 AWS for Government.png]]
![[16 GovCloud.png]]
##### AWS in China
![[17 AWS in China.png]]
##### Sustainability
![[18 Sustainability.png]]
##### AWS Ground Station
![[19 AWS Ground Station.png]]
##### AWS Output
![[20 AWS Outpost 1.png]]![[20 AWS Outpost 2.png]]

## Cloud Architecture
![[1 Cloud Architecture Terminologies.png]]
##### High Availability
![[2 High Availability.png]]
##### High Scalability
![[3 High Scalability.png]]
##### High Elasticity
![[4 High Elasticity.png]]
##### High Fault Tolerance
![[5 High Fault Tolerance.png]]
##### High Durability
![[6 High Durability.png]]
##### Business Continuity Plan
![[7 Business Continuity Plan.png]]
##### Disaster Recovery Options
![[8 Disaster Recovery Options.png]]
##### RTO Visualized
![[9 RTO Visualized.png]]
##### RPO Visualized
![[10 RPO Visualized.png]]
## Management and Development
##### AWS API
![[1 AWS API 1.png]]
![[1 AWS API 2.png]]
##### AWS Management Console
![[2 AWS Management Console.png]]
##### Service Console
![[3 Service Console.png]]
##### AWS ID
Allow that root user to create policies
![[4 AWS Account ID.png]]
##### AWS Tools for PowerShell
you need to access to the CloudShell and type `pwsh` and it's will switch to PowerShell you will be able to run commandlets.
[PowerShell AWS DOC](https://docs.aws.amazon.com/powershell/latest/reference/index.html)
![[5 AWS Tools for Powershell.png]]
##### ARN (Amazon Resource Name)
![[6 Amazon Resources Names 1.png]]
![[6 Amazon Resources Names 2.png]]
##### AWS CLI
![[7 AWS CLI 1.png]]
![[7 AWS CLI 2.png]]
##### AWS SDK
![[8 AWS SDK.png]]
##### AWS CloudShell
![[9 AWS CloudShell.png]]
##### AWS CLI
![[10 Infrastructure as Code.png]]
##### CloudFormation
![[11 CloudFormation.png]]
##### AWS CDK (Cloud Development Kit)
[Construct Hub](https://constructs.dev/)
![[12 CDK.png]]
##### AWS ToolKit for VS
![[13 AWS Toolkit for VS Code.png]]
##### Access Keys
![[14 Access Keys 1.png]]
![[14 Access Keys 2.png]]

# Jump to Google keep and fill the list first