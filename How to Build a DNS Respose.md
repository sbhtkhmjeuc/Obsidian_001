# How to Build a DNS Respose
Type : #t/YouTube
Date : Sunday 30th January 2022 Sun 
Last Modified : Sunday 30th January 2022 15:25 
Subjects: #s/DNS - #s/Networks - #s/Python 
Progress: #p/🟡 
URL: [Make your Own DNS Server - YouTube](https://www.youtube.com/playlist?list=PLBOh8f9FoHHhvO5e5HF_6mYvtZegobYX2)

`.sendto(r, addr)` - the function to send the data back to the client.

**Transaction ID** - the Transaction ID is usually the first 2 bytes of the DNS Request.

you can get the Transaction ID by acting to the request to a string and get the first 3 bytes: `TransactionID = data[:2]` - getting the first 2 bytes (this will print the ASCII value). `for byte in TransactionID: TID += hex(byte)[2:]` - this will take each byte and convert it into a hex value and print it, the rande at the end is because the Transaction ID is converted to Hex so it’s printing `0xbb`, it’s first printing the `0x` to indicate that this is a Hex number, so we remove it by setting this range.

**Flags** - There are 8 flags, which are indicates on verius things in the Query. we need to create a new string which will be the flags all together, the first flags is `QR` it’s indicates if the packet is a query (0) or a response (1)