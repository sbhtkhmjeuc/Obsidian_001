# Top 50+ AWS Services Explained in 10 Minutes
Type : #t/YouTube
Time Created : 2022-06-09 11:57
Last Modified : 2022-06-09 11:57
Subjects: #s/AWS #s/Cybersecurity 
Progress: #p/🟡  
URL: https://www.youtube.com/watch?v=JIbIYCM48to&t=8s
Publisher: #psh/Fireship
Priority: #i/🟥 

1. **Robot Maker** - used to create a robot, helping with simulate and test you robot
2. **IOT Core** - can be used to collect data from the robots , update software and manage them remotely  
3. **Ground Station** - used for communication with stellates 
4. **Braket** (Quantum Computing)
#### Compute 
5. **EC2** (Elastic Compute Cloud) - allows you to create VM's  
6. **Load Balancer** - allows you to distribute your app / website into multiple EC2 instances  
7. **Cloud Watch** - can collect logs and metrics from each instance
8. **Auto Scale** - the info from Cloud Watch can pass to here and you can create rules that can manage your instances (Create of Delete Instances).
9. Beanstalk - **PaaS** (Platform as a Service), it's a services that deploys manages and scales web apps for you based or pre-determined rules that the user sets  
10. **Lightsail** - easily deploy a site from the options without worrying about (the servers will be always running)
11. Lambda - **Faas** (Function as a Service), Serverless computing
12. **Serverless Repos** - library for serverless functions 
13. **Outposts** - allows you to run AWS API's on your own servers
14. Snow - it's a devices that acts like a cloud for in extreme environments 
15. **ECR** (Elastic Container Registry) - helps you create a docker image and storing it or uploading it.  
16. **ECS** (Elastic Container Service) - pulling the images from the ECR and run them.  
17. **EKS** (Elastic Kubernetes Service) -   
18. Fargate - Container service is AWS 
19. App Runner - allows developer to build a app, and the service will take care of all the noise around (deploying servers, Security (E2EE), Load Balancers)
#### Storge
20. **S3** (Simple Storage Service) - can store any file, mostly images and videos   
21. **Glacier** - used for archives, for files that you don't use too much (higher latency, but lower price) 
22. **Block Storage** - the opposite from Glacier, extremally fast, used for files that you are constantly using.
23. EFS (Elastic File Systems) - it's a shared File System what works with EC2, EFS automatically Adjust it self for you needs s you add or remove files,  
#### DB
24. SimpleDB - the very first No-SQL that AWS has launched  
25. DynamoDB - a DB Service in AWS  
26. DocumentDB - just like MongoDB, 1:1 same API 
27. ElasticSearch - a managed service that makes it easy to deploy, operate, and scale Elasticsearch in the AWS Cloud 
28. **RDS** (Relations DB Service) - support multiple SQL flavors  
29. **Aurora** - AWS's SQL Flavor (has a Serverless option)
30. Neptune - fast, reliable, fully-managed graph database service 
31. ElasticCache - is a fully managed in-memory data store and cache service by Amazon Web Services. The service improves the performance of web applications by retrieving information from managed in-memory caches, instead of relying entirely on slower disk-based databases. 
32. TimeStream - DB for things that are timed like Stocks market Data, that has built-in queries  
33. QLDB (Quantum Ledger DB) - a fully managed ledger database that provides a transparent, immutable, and cryptographically verifiable transaction log.  
#### Analytics 
34. **Redshift** - warehouse for storing your data form multiple sources, because this is a warehouse you can treat it like SQL using queries.  
35. Lake Formation - a service that makes it easy to set up a secure data lake in days. A data lake is a centralized, curated, and secured repository that stores all your data, both in its original form and prepared for analysis.  
36. Kinesis - used to visualized real-time data   
37. EMR (Elastic Map Reduce) - a managed cluster platform that simplifies running big data frameworks, such as Apache Hadoop and Apache Spark , on AWS to process and analyze vast amounts of data.
38. MSK - Amazon Managed Streaming for Apache Kafka (Amazon MSK) is a fully managed service that enables you to build and run applications that use Apache Kafka to process streaming data.  
39. Glue - AWS Glue is an event-driven, serverless computing platform provided by Amazon as a part of Amazon Web Services. It is a computing service that runs code in response to events and automatically manages the computing resources required by that code.    
#### ML
40. **Data Exchange** - marketplace for ML DATA
41. **Sagemaker** - workshop that allows you to create ML Models  
42. **Rekognition** - ML to Image Analysis built-in in AWS 
43. **Lex** - ML for Conversational bot built-in in AWS   
44. **Deep Racer** - used with a bit from Amazon to explore ML 
#### Developer Essentials 
45. **IAM** (Identity & Access Management) - managing users 
46. **Cognito** - privileges for user in website or app 
47. **SNS** (Simple Notifications Service) - Push notifications for your users
48. **SES** (Simple Email Service) - sends emails for your users
49. CloudFormation - a service that gives developers and businesses an easy way to create a collection of related AWS and third-party resources, and provision and manage them in an orderly and predictable fashion.  
50. Amplify - a set of purpose-built tools and features that lets frontend web and mobile developers quickly and easily build full-stack applications on AWS
51. **Budget** - for your user