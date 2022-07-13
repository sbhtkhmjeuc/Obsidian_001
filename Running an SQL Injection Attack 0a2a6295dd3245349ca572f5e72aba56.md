# Running an SQL Injection Attack

Channel: Computerphile
Priority: MEDIUM
Progress: Done
Subject: Cybersecurity
Type: YouTube
URL: https://www.youtube.com/watch?v=ciNHn38EyRc

SQL injection happens trough a way that the attacker is able to talk SQL DB and get result from him. 

If the website have some kind of a search bar that communicate the DB and I type in the word “**hammer**” and the website shows me products that have the word “**hammer**” in them, we can assume that the SQL Query have to look some what like this `SELECT ? FROM ? WHERE ? LIKE '%hammer%'` (%hammer% → a product name that contain the word “hammer” in it)

now we can manipulate that for example and just type in `‘` if would to do that in the PHP BTS the query will be :

```sql
SELECT ? FROM ? WHERE ? LIKE '%'%'
```

 you can see that the first `%` is colored in green which means that it’s a part of the string and the other `%` just sits there and doesn’t do nothing, so essentially the PHP only got on `%`, we can add to that a `;` which representing the end of the query and after that adding `--` which tells to the SQL that all the words after that are a comment. You need to add those two characters because you need to disable the PHP query completion if you don’t the DB won’t return anything because I won’t make much sense. Because you are in charge of the end of the query you can add things that you want and close it, you can add things with the `ADD`and `UNION`.

**Blind query** - based on the time you set to wait, this kind of query usually won’t return anything, but base on the time you’ll be able to tells of something is correct or not