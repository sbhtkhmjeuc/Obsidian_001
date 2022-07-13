# Cross-Site Scripting (XSS) Explained
Type : #t/YouTube
Time Created : 2022-05-30 15:27
Last Modified : 2022-05-30 15:27
Subjects: #s/Cybersecurity 
Progress: #p/🟡 
URL: https://www.youtube.com/watch?v=EoaDgUgS6QA
Publisher: #psh/PwnFunction 

**SOP** - Same origin policy, a security feature that stops one site to read or write into or from an9other website.
the SOC checks 3 thing to allow Read or Write: <mark style="background: #FF5582A6;">Protocol, Host and Port</mark> 
in this example (⬇️) we can see that the the protocol is the same, but the host is different, so the SOP blocks.
![[Pasted image 20220530153454.png]]

We can inject JS into another website and take control over the HTML Files (via DOM API's), and steal CRSF tokens and read cookies to use them.
<mark style="background: #FF5582A6;">that is basically is XXS</mark>

### Example 
let's take for example a text box that when you type your name it's changes the name above (that is HTML). Let's see what comes after we clicked on the button, the client sends a GET Request with the name, the server checks that and sending back a HTML code for the browser to present. Because we know that the server sends the info in HTML code, we can add things and manipulate the system and get back a lot more things.
For example, if we'll type a script line (that let's us run JavaScript inside an HTML) we'll be able to set something to jump up (⬇️)
![[Pasted image 20220530155012.png]]
## Types
<mark style="background: #BBFABBA6;">Reflected XSS</mark> - occur when a malicious script is reflected off of a web application to the victim’s browser.
<mark style="background: #BBFABBA6;">Stored XSS</mark> - the output can be also stored, and viewed on the attacker side. (for example a Comment in YouTube, the comment is stored in a database and every one who sees that will be effected)
<mark style="background: #BBFABBA6;">DOM XSS</mark> - it's when a user's input lands in the JS Code. (happens entirely on the client side)
<mark style="background: #BBFABBA6;">Mutation XSS</mark> - the user input gets changed by the browser before getting into the DOM, which can lead into a Crash.
## Prevention
**DomPurify** - is a library the sanitizes the unsafe JS and spits out the safe JS.