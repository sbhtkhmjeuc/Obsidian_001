# SQL Injections

Last modified: May 26, 2022 10:03 AM
Priority: Important
Progress: #p/🟡 
Subject: #s/Cybersecurity, #s/Injections, #s/SQL
URL: https://www.youtube.com/watch?v=fiq59DuhY68&list=WL&index=1

# SQL Crash Course

![Untitled](SQL%20Injections%2081bb49fb01dc4743a202bcf4649153e2/Untitled.png)

![Untitled](SQL%20Injections%2081bb49fb01dc4743a202bcf4649153e2/Untitled%201.png)

# SQL Injection Explained

**Type of attacks:**

1. **In-band** - Classic, attackers can launch the attack and obtain results through the same communication channel. The two popular techniques are : 
    1. **Error-based** - can get info about the database from error messages. 
    2. **Union-based** - combine the results from a legitimate query with those from out attack to extract data.
2. **out-of-band** - Exfiltrate data using a different channel than the request was made with, For example making an HTTP connection to send results to a different web server. but you execute this kind of attack you need some requirements:
    1. you have to have vulnerable app and data-base
    2. the network need to allow the targeted DB to initiate and outbound request without restriction 
    3. you need to gain sufficient privilege escalation to initiate that request.
    
    ![Untitled](SQL%20Injections%2081bb49fb01dc4743a202bcf4649153e2/Untitled%202.png)
    
    1. **Blind** - rely on a change of behavior with the database in order to re-construct info, used when the data isn’t get transferred back to the attacker, uses time delays and boolean conditions.
        
        ![Untitled](SQL%20Injections%2081bb49fb01dc4743a202bcf4649153e2/Untitled%203.png)
        
        ![Untitled](SQL%20Injections%2081bb49fb01dc4743a202bcf4649153e2/Untitled%204.png)
        
    

# Info Gathering

when we gathering info we need to send SQL injection attacks to get info from the DB about it self, the SQL version, the SQL software, the name of the tables, the names of the columns table’s and many more, you can use the **OWASP ZAP** software that will capture every traffic between the computer and the DB server. 

# Defense

1. **Network Level (Firewall)**
    
    **WAF** - Web Application Firewall, there are a lot out there that uses ML and other technologies to filter the SQL injections attack query that they don’t even going to go to the DB, a lot of then lets you customize the rules yourself that you can make more custom.
    
    but there is always a hack, for example maybe some of the WAFs that are out there won’t capture any SQL queries that have comments in them, and some only looking for upper case or lower case latter.
    
    [SQL Injection Bypassing WAF](https://owasp.org/www-community/attacks/SQL_Injection_Bypassing_WAF)
    
2. **Application Level**
    
    there are two rules that came into conclusion after the SQL Injection Attacks happened :
    
    1. Stop writing dynamic queries
    2. Prevent user-supplied input contains SQL injection Attacks text from affecting the logic of the executed query.
    
    **Primary Defenses:**
    
    - **Use of Prepared Statements (with Parameterized Queries)**
        
        advantages of prepared statements : 
        
        1. the coding style helps distinguish between code and data
        2. prepared statements define the intent of the query, preventing injected SQL commands from changing that intent
        
        ![An SQL Query that get prameters](SQL%20Injections%2081bb49fb01dc4743a202bcf4649153e2/Untitled%205.png)
        
        An SQL Query that get prameters
        
    - **Use of Properly Constructed Stored Procedures**
        
        stored procedures are pre-prepared SQL queries that are saved in the database, and the application calls them when needed.
        
        ![Untitled](SQL%20Injections%2081bb49fb01dc4743a202bcf4649153e2/Untitled%206.png)
        
    - **Allow-list Input Validation (Whitelist)**
        
        Whitelist are preferred to blacklists because blacklists can be circumvented but they can also block legitimate values, even if not used as a primary line of defense, whitelists can be used as a secondary line of defense (in addition to Prepared Statements)
        
    - **Escaping All User Supplied Input**
        
        regarded as a last resort because it cannot guarantee to prevent all SQL injections in all situations, can be useful for legacy applications where implement input validation wouldn’t be cost-effective.
        
    - **Extra** : Input Validation
    
    [SQL Injection Prevention - OWASP Cheat Sheet Series](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html)
    
3. **DB Level**
    
    Ways to defending DB SQLi :
    
    - Minimize privileges of DB accounts
    - update your DBMS
    - Implement proper monitoring & logging
    - NoSQL DB are also  vulnerable