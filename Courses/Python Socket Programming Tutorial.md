# Python Socket Programming Tutorial

Last modified: March 7, 2022 2:51 PM
Priority: Important
Progress: Done
Subject: Networks, Programming
URL: https://www.youtube.com/watch?v=3QiPPX-KeSc

# Python Socket Programming Tutorial

`threading` - allowing to the server to handle multiple client at once, or without client waiting to other client to finish. 

`IP Address` - ip address is like an address to a spacific building. (IP Address : `127.0.0.1` is the LocalHost) 

`PORT` - a port is the address to a spacific Appartment in the buiding.

for a socket to be created we need both the `IP Address` and the `PORT`, back to copmuters, to say to the server to which computer to send, for this there is the `IP Address`, and to which entrance walk from, for this there is the `PORT`.

to set the LocalHost as the server you can find the `IP Address` in the CMD, or just type in python : `socket.gethostbyname(socket.gethostname())`, as the server.

`socket.AF_INET` - means that the `IP Address` that we are looking for is IPv4. 

`socket.SOCK_STREAM` - that means that the protocol that we are going to use it `TCP`.

These two Commands above are used in the Socket defenition (**they are optional**).

`socket.bind(("SERVER",PORT))` - binding the socket to a server (the SERVER and the PORT have to be in a TUPLE).

`socket.listen()` - the computer is listening for a new connections.

`client_socket, Address = socket.accept()` - the server needs to accept a new connection, this method is saving the `client_socket` and the `address` of the client, to know to where to send the answer. (`.accept()` is a blocking line, it’s going to wait for a new connections, until than the program is in pused.)

`msg = client_socket.recv(NUMBE_OF_BYTES).decode()` - this method is going to revice from the other side of the socket data (in bytes), and save in the the `msg` veriable. The `decode()` function is decoing the mesaage from bytes to string.

`cilent_socket.send(msg).encode()` - this function is sending data to the other side of the socket. The `encode()` is converting the message to bytes in order to send it in the socket.