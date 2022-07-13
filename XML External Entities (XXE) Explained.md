# XML External Entities (XXE) Explained
Type : #t/YouTube
Time Created : 2022-05-30 13:04
Last Modified : 2022-05-30 13:04
Subjects: #s/Cybersecurity #s/XML
Progress: #p/🟡 
	URL: https://www.youtube.com/watch?v=gjm6VHZa_8s&t=388s
Publisher: #psh/PwnFunction
## XML
**XML** - Extensive Markup Language
in charge of the Transport and Storage 
![[Pasted image 20220530130817.png]]

**Entities** - like Variables for XML, the Entities are defined in a separate location in the document the called **Document Type Definition** (DTD)
there are three kind of entities: <mark style="background: #FF5582A6;">**General, Parameter & Predefined**</mark> 
**General** - man made and have a value that is refereed somewhere else (⬇️)
![[Pasted image 20220530131146.png]]
**Parameter** - Only allowed inside a DTD, they are much more flexible, For Example you can make an entity that is inside another entity.
Predefined - that comes predefined with the program, a lot of them are a ASCII value for symbol because you can't put symbol like that in an XML file.

Entities can also store a value from an external source, For Example TEXT file on an image from google. And that what is broken the XML to attacking.
Declaring a <mark style="background: #FF5582A6;">External Entity</mark> (⬇️).
![[Pasted image 20220530132215.png]] 
the name of the file can be any URI (HTTP, Image, Text, FTP ...)

this in the heart of the XXE attack, because if you are able to change the location from where the XML taking the data, you can look at any data that you want.

there are three kinds of XXE attacks: <mark style="background: #FF5582A6;">Inband, Error, Outband</mark>
Inband (⬇️)
![[Pasted image 20220530132735.png]]
Error Based (⬇️)
![[Pasted image 20220530133535.png]]
OOB (Out Of Bound) (⬇️)
![[Pasted image 20220530133501.png]]
## SSRF
**Definition** - is a web security vulnerability that allows an attacker to induce the server-side application to make requests to an unintended location.
you can ask for pages that are not visible to you, or scan the network for another vulnerable machines.

beside the SSRF attacks you can run another attack that can display content of a file and much more.

## DTD
the DTD is the part of the file in the head of the XML file, gets defined in the `DOCTYPE`, but another vulnerability is that you can load up the DTD from a separate file (⬇️)
![[Pasted image 20220530141233.png]]

what you can do with DTD is using the DTD variables inside of the markup declaration itself (⬇️)
![[Pasted image 20220614061733.png]]
Example (⬇️) :
you can see the the variable `parameter_entity` is being created inside of the DTD, and referenced again inside of the DTD, <mark style="background: #FFB86CA6;">because the parameter entities has to be referenced only in the DTD</mark> (basically creating a variable inside a variable)
![[Pasted image 20220614061907.png]]

you can't reference an parameter-entity reference within a markup declaration (⬇️)
![[Pasted image 20220614062651.png]]
but you can use <mark style="background: #FF5582A6;">external DTD</mark> and this will work. (⬇️)
![[Pasted image 20220614062809.png]]
