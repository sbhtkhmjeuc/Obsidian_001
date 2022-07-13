# OS Injections Course
Type : #t/Course
Last modified: May 26, 2022 11:19 AM
Subjects: #s/Cybersecurity #s/OSInjections 
Progress: #p/🟡 
URL:https://www.youtube.com/watch?v=9XY2abdWADQ
Priority: #i/🟨
Next: [[2022-06-04]]

OS Injections tools : **[Commix](https://github.com/commixproject/commix/wiki/)**
## Creating a BackDoor
**Weevely** (weaponize web shell) / **Metasploit**
you need to create a exposed file using Weevely, and upload in into the server / host that you want a backdoor to, after that we access to the server trough the weevely backdoor that we setup.
## Defending at the application layer
### Avoid calling OS Commands directly
use API calls instead of shell commands 
### Escape values added to OS commands specific to each OS
Disarm Potentially harmful commands from user-input, you can use two functions that checks the text that the user is inputting and doesn't let him pass more than one command / parameter.
### Parameterization & Input Validation 
when you build the website you know the input that you're expecting from the user, based on that info you can build a program in your code that will check for bad input that can cause a hacking into the systems.

https://cheatsheetseries.owasp.org/cheatsheets/OS_Command_Injection_Defense_Cheat_Sheet.html
