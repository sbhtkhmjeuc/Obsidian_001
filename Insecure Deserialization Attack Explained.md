# Insecure Deserialization Attack Explained**
Type : #t/YouTube
Time Created : 2022-05-31 08:16
Last Modified : 2022-05-31 08:16
Subjects: #s/Cybersecurity #s/InsecureDeserialization
Progress: #p/🟡 
URL: https://www.youtube.com/watch?v=jwzeJU_62IQ
Publisher: #psh/PwnFunction 

**Serialization** - is the process to move object from the memory (RAM) into a storage.
**Deserialization** - the Opposite process from Serialization. (⬇️)
![[Pasted image 20220531082009.png]]

website use serialization to store usually cookies in the storage of the client computer, instead of doing to the websites server to pull the sessionID from there.

Insecure Deserialization occurs when the Deserialization stage is happening <mark style="background: #FF5582A6;">inside the server-side</mark>. when the server is Deserialization to an object, we can under a code that will run as soon as the Deserialization occurs.

To see the example click [here](https://youtu.be/jwzeJU_62IQ?t=346) (the Python Library for this is <mark style="background: #FF5582A6;">Pickle</mark> and the primary method used is `__reduce__`)