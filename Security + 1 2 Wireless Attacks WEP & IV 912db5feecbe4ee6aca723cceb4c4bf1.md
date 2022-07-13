# Security + 1.2 Wireless Attacks WEP & IV

Channel: Cyber-Recon
Priority: MEDIUM
Progress: Not Started
Subject: Cybersecurity
Type: YouTube
URL: https://www.youtube.com/watch?v=Fr84Y1ur5dc

**Symmetric Encryption Keys** - a key of initially 64 bits, but later got longer to 128 bits. For example of the WEP Key was “**Tuna-Can**”, every one that want to communicate with the WLAN Network needed to use the key “**Tuna-Can**”, and because the key was a session key is meant that when of of the users left or another one joined the overall key (also the session key) was needed to be changed for everyone on the network.    

**Initialization Vector** - was added to protect the Encryption Key, the size of it was 24 bits, and the IV was part of the original key. There are 16,777,216 Different IV possibilities.

### WEP Process

let’s take Alice for Example, if she wants to send info across the Wireless network she will need to make this **Data** and it’s **CRC** together. (like in the image below)

![Untitled](Security%20+%201%202%20Wireless%20Attacks%20WEP%20&%20IV%20912db5feecbe4ee6aca723cceb4c4bf1/Untitled.png)

and to encrypt the packet, she needs to use a **Keystream**, that is build with the **IV** and the **WEP Key** that was generated in a **RC4 Encryption mechanism**.  

![Untitled](Security%20+%201%202%20Wireless%20Attacks%20WEP%20&%20IV%20912db5feecbe4ee6aca723cceb4c4bf1/Untitled%201.png)

and after we got both the Data and the Keystream, we can **XOR** them together, which will result a an **Encrypted Message**.

but there are couple flaws with that process, first because the IV is a part of the key and the key always changes (because people are leaving and joining the network), the IV needs to be sent with the Ciphertext for the receiver to decrypted it.

if someone is sending a lot of data across the network, using Mathematics, you can find the original WEP key.