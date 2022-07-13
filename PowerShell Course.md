# PowerShell Course
Type : #t/Course
Time Created : 2022-06-02 12:38
Last Modified : 2022-06-02 12:38
Subjects: #s/PowerShell
Progress: #p/🟡    
URL: https://www.youtube.com/watch?v=UVUd9_k9C6A
Priority: #i/🟨 

## Don't Fear the Shell
PowerShell can run Unix command (Basically the command points to a PowerShell command)
#### Aliases
shortcuts for command in PowerShell, you can run `gal` to get all the aliases.
## The Help system
every command has a `about` file that you can find and look in it.

you can use `*` in the searches to create a custom search, and it means anything.

the process of work with the Help system is to figure out what you want to do, and search of the right command for it inside the command shell.

the commands in PowerShell works in a template of `verb-noun` you can search all of the verbs by typing `get-verb` which will return all of the verb functions.

`-Detailed` - to get more detail about a command
`-Exmaples` - jumps you straight to the examples of the command 
`-full` - give you a full explanation of the command 
`-online` - opens the command in the official Microsoft help pages online.
`-ShowWindow` - shows the result in a new window, for easy workflow.

each command can get parameters that are specified in the Help of the document, and the parameter usually gets values, the types of values that they get is specified also in the  help page of the command. (the the type of the data has `[]` with it that means that this can be multi valued)

there are parameters in the commands that doesn't require to type them to use their values, you can spot that parameter by seeing that he has `[]` just around him. 

you type `Tab` and work your way around the parameters of the command, or to complete it automatically (`Shift+Tab` to go backwards).

`;` - statement separators (do this and after this is done do this)

if a command gets a category but you don't know what is was, you can type `COMMAND -Category sdfsdf (Gibrish)` and get an error with the paraments that the command is supporting.
### Copy & Paste
you need to mark the text and hit the left click on the mouse to copy, and to paste you click the right click on the mouse.
## The Pipe line `|`
the pipe line is a connector between multiple of commands, the right side if the pipe line is getting fed with the results of the command that is in the left side command.

if you unsure on running a command, you can type `-whatif` after it, and it will print out what this command will do.

`-confirm` - will send a Q-box about the command if the command need to run multiple times, the Q-box will pop every time to get a answer from you about the command on that option.

## Objects for the Admin
Objects (like in Java) has methods and properties

to see all of the methods and properties that a Object has you can pipe in to `gm` (get-member), the command also returns a TypeName at the end of it you can see the command's Object type.

`Select-Objects` - command can select the specific properties of an object (i.e. `select -Property PROPERTY_NAME`)  

you can create object with the `$` sign, for example in the video the person `cat` the content of the file and cast it into XML by typing `[xml]` .
`$_` - creates a temporary variable that holds the current item (usually object) holding the pipeline.
which you can also type as `$PSItem`

when using the XML you can use the `.` syntax to go inside if the file.

the PowerShell language don't uses operators (=,+,-,...) to know them all you need to can search for the Operators in the `get-help` and get the about pages that have in them the commands that are equal for the operators.  
#### Where
Example : `where {$_.PROPERTY OPERATOR 1000}`, you have to have the `{}` and the temp variable, and if the item is returns true on all of the if's it will be printed in the screen.

you can write the `where` command like always with out `{}` and temp variable.
## The Pipeline (Deeper)
let's take for example the `get-service | stop-service` command and break it down.
first you have a the `get-service` command that got the service and then the `stop-service` comes into play and stop it, but the Question is <mark style="background: #FFB86CA6;">How the two commands talk to each other ?</mark>, to understand that you need to breakdown the connection between them, let's first look at the giving end, in this case `get-service`, by typing `get-service | gm` you'll get an list of all of the properties and methods of the object and the **TypeFile** which is Object-Type, for the current example we can see that `get-service` gives `ServiceController`, now you need to check if the `stop-service` can get a `ServiceController` through the pipeline, you can do that with typing `get-help stop-service -full` which returns all of things that the help system has on the current command, now you can see that the `stop-service` object help page that the input that he need to get are or `String` Type or `ServiceController` Type (⬇️):
![[Pasted image 20220603114332.png]]
and we are answering on this options because we're giving `ServiceController` type, but we can see that the property that get the `ServiceController` gets it **by Value** (⬇️)
![[Pasted image 20220603115022.png]]
there are two ways that something can travel trough the pipeline <mark style="background: #ABF7F7A6;">by Value</mark> or <mark style="background: #ABF7F7A6;">by PropertyName</mark>.
the statement that needs to be true in order for to commands to work with a pipeline:
- <mark style="background: #ABF7F7A6;">by Value</mark>
	- the Object type of the giving command needs to be the same as the input command of the other command.![[Pasted image 20220603114332.png]]
- <mark style="background: #ABF7F7A6;">by PropertyName</mark>
	- the name of the property from the giving command need to by the same property from the getting command.
	- need to get value type of a <mark style="background: #BBFABBA6;">String</mark>

<mark style="background: #52B788;">every command that can give an object or property that the other command can accept will work.</mark> 

but there ways to change the property name of an Object, if you want to get a property from a object you'll type `COMMAND | select -PROPERTY`, but you can create a new property by typing a new property name that doesn't exist, that way you create a temporary property that you can connect to the property that you want to change, and you have a new property that is has a new name.
to do that you need to type `COMMAND | select -PROPERTY, @{PROPERTY='NEW-PROPERTY_NAME';expression={$_.PROPERTY}}`
- the `expression` if the property that I would like to get from the giving command in the pipeline 
- the `$_` is because the COMMAND will return an object/s and we only want the PROPERTY from the whole object, so we specified that here.
the aliases doesn't work only on command, but also on properties of objects as well 

you can type this like that `COMMAND | select -PROPERTY, @{P='NEW-PROPERTY_NAME';e={$_.PROPERTY}}`, and it will still will work.

if you can pipeline into a command, you can type `get-help` and see all of the parameters that it gets and move them through `()`, when you do that you may will need to change the type of the giving info (in our case is to **String**) which you can do with the `-ExpandProperty`.
Example : 
```powershell 
Get-WmiObject -class win32_bios -ComputerName (Get-ADComputer -filter * | select -ExpandProperty name) 
```
you could make that simpler (for PowerShell V3):
```powershell
Get-WmiObject -class win32_bios -ComputerName (Get-ADComputer -filter *).name 
```

### Script Parameters 
to give an object trough a pipeline to a command that doesn't get object trough pipeline, what you can do is in the getting command you can create a temp variable that will get the object from the giving command and store it so you'll are able to run this on that object.
Example :
```powershell
Get-ADComputer -filter * | Get-WmiObject win32_bios -ComputerName {$_.Name} 
```
the `$_` hold the current object from the first command.
## Remoting in PowerShell
to connect into a PowerShell in another computer you need to enter `Enter-PSSession COMPUTER`.

when you want a command to run on multiple computer simultaneously, you need to specify the computers and add `{}` which will have that command inside of them.
Example:
```powershell
invoke-command -ComputerName dc,s1,s2 {Get-Eventlog -LogName system -new 3}
```
what happened here is that we create a connection to the remote machine, move the commands over the connection, the command create Objects which we narrowing down the types into popular types like integers and strings and more (you need to do that to be able to display this in other machines that maybe don't support windows) ,after that we serializing and moving back into the main machine and deserializing them in the main machine and display them. 

when you have a deserializing object you can see that it won't have any methods, because it isn't the original object but a deserializing copy of that object.

From [here](https://youtu.be/UVUd9_k9C6A?t=13688) you can see how to setup the PowerShell remoting will allow you to run PowerShell on your computer from your browser. 

## Automation
the Security of running scripts in PowerShell, tells us that when I save save a script in the computer (`.ps1`) and I type on it to run from, the file explorer for example it will open the default code editor, or from the PowerShell by typing the the full path of to CD into the directory and run the script, it will show and error that tells me that I can't run scripts because I didn't enabled it.

you run scripts you have to do two things:
- sign the script with a certificate - you can do that creating a self-signed certificate (`New-SelfSignedCertificate`) which will be saved in the Cert Drive (which you can see by typing `get-psdrive`), to see how to create a cert to [[How to create a self signed cert using Powershell in Windows Server 2016|here]].
- change the Execution policy that will allow in some way to run scripts which you can examine by typing `Get-ExecutionPolicy`, and to change it you need to type `Set-ExecutionPolicy "EXECUTION_POLICY"`
these are all of the Execution policies that you can apply:
![[Pasted image 20220604153043.png]]
the best two are **AllSigned** (which means that everything must be signed) and **RemoteSigned** (everything that it's made on your computer needs to be signed)

now to run the script you have to sign it with the cert which you can do by typing `Set-AuthenticodeSignature -Certificate CERT -FilePath .\SCRIPT.ps1`, now you can open the script from the notepad and see the digital signature embedded in it. 

PowerShell is very secure which means that if I mess around with the digital signature of the file, PowerShell will know that and will notify me about that.  

#### Creating Variables
type `$VARIABLE = SOMETHING` you can store anything in the variable.
if you are storing a object you can use the dot notation to access methods on it.

you create a a variable that is a sentence by using `{}` , For Example `${sbhtkhmjeuc} = "sbhtkhmjeuc"`  

you can show a contents of a file with variables, Example `${C:\Desktop\file.txt}` will show to contents of `file.txt`  

#### Write Commands
there is `Write-host` which will print that things on the screen and lets you control the coloring in the output, but if I were to pipeline it it won't work, but I were to use `write-output` I will able to pipeline it and work methods on it and more, but you can control the color they will the defaults.
## PowerShell Sessions
when you create a remote connection to another machine, and you run a command that creates a variable after the session will end that variable will get deleted, we want to start a session and keeping it up until we want to close it.

to create a continuing-session you need to create a variable that has the session in it, type `$sessions=new-pssession -computername dc`, after you typed that you can see if the session in running by typing `get-pssession`

now to get a continuing-session you need to create a connection through that session by typing `icm -Session $session {COMMAND}`

session remoting commands are much faster than remoting connections command without sessions

you can also create an array of computer names and run a command on every one of them, For Example : 
```powershell
$servers='s1','s2'
$servers | foreach {start iexplore http://$_} 
```
in this example the computer will run through all of the names and open them in iexplore by creating a temp variable (`$_`)

#### Importing Modules with sessions
to import modules from another computer using sessions you need to type:
```powershell
import -pssession -session $s -module ActiveDirectory -prefix remote
```
this will import the `ActiveDirectory` module and add to each of his command-lets the word `remote` before it.

when you do that you don't actually have those commands on your machine there are from the other computer that you just got it from.  

## Scripting
when you're typing in a long command with a pipeline you can hit `enter` after the pipeline and continue to write and the PowerShell will know that what you're writing in connected to the first line.

when you are writing a script you can create parameters that the user ca address when he runs the script,
For example, to set a parameter in the script you have to write :
```powershell
param(
	[string]$ComputerName
)
```
the `[string]` tells us that the `ComputerName` parameter takes a string, and you can change it to whatever you want. 

now when you run the script on the CMD window, and you want to assign to `ComputerName` value you need to type :
```powershell
.\SCRIPT.ps1 -ComputerName VALUE
```

you can change the rules of the script, For example:
```powershell
	[CmdletBinding()] <# Turns on Parameter atrributes (the Mandatory below)#>
param(
	[Parameter(Mandatory=$True)] 
	<# means that the variable in the line after that is Mandatory, which you can see in using the Get-Help command on th script#>
	[string]$ComputerName
)
```

you can create a "Help Page" using the comments in the script by typing before each title `.`

when you want a template to work with on ISE with empty script, you hit `Ctrl+J` this will open snippets for you that you're able to enter info to and run the script.

instead of typing `.\SCRIPT.ps1` all the time, you want to write it like a command, which you can do, by typing in the beginning of the script :
```powershell
function Get-Something{...}
```
you have to run the command like that `. .\SCRIPT.ps1` this is tells the computer to save all of the variables, created commands from that script after it stopped running.  
after you run the script the command will be in the commands to use and you can use it. 

`-OutVariable` - saves what the command returned into a variable, For Example: `get-help * -OutVariable a` and to see the content you need to write `$a`.

#### Modules
to create a module you need to save your script that you create in as `psm1` format.

instead of importing a module every new time that you want to use it you need to move your module into a special place that will run than automatically every time you start the new session in PowerShell, the place is `C:\Users\sbhtk\Documents\WindowsPowerShell\Modules`

## Personal Notes
<mark style="background: #BBFABBA6;">when you run a script raw, after it finished the memory it will remove itself from it.</mark> 