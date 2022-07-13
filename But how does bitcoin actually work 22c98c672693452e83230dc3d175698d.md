# But how does bitcoin actually work

Type : #t/YouTube 
Progress: #p/🟡  
Subject : #s/Blockchain 
URL : [But how does bitcoin actually work? - YouTube](https://www.youtube.com/watch?v=bBC-nXj3Ng4&ab_channel=3Blue1Brown) 
Date : Saturday 30th October 2021, Sat 
Last Modified : Saturday 30th October 2021 09:29 
# But how does bitcoin actually work 
## Block-Chain in a shellnut the Block-Chain is a system of a Decentralized trustless verifiction that uses the math of Cryptography, 
## Ledgers & Digital Signaturing for example, if a group of people are exchanging money between them, so they agreed to start a “Ledger”, a form that records all the trasactions between them. so the protocol for the Ledger is: - Anyone can add lines to the ledger - Settle Up with real money each month

but there is a problem, if anyone can add a line, there can be a scam of people that right trasaction that were not happening. so poeple became with the idea of “Digital Signatures” that means that every transaction is will be signed to stop fraud. but if a digital signaturing is only a string of bits that means that it can be copyied over and over again to sign any trasaction. the solution is that every one generates two keys : a private (or secret) key and a public key. to sign is basiclly a function that depends on the Message itself and the secret key, the secret key says that only you can produce this signature, and the Message means that you can’t just copy this signature to sigh more than one transaction with it. and now the Verafication comes into play, think of it like a function that takes the Message, Signature and verify the if the Signature is valid acoording to the public key that connected to the Secret key. (the only way to trick this system is to try one by one Signatures that are conatines 2 to the power of 256.) there is another loophole, because the Signature is based on the Message ans the Secret key, what if none of them are changes, or in other words we can multiply the line as many times as we want and it still be valid, the answer to this problem is that the signature is taking into account also the number of the line. that means that a signature will be unique to a single line.

if for example one of the people are owes a lot of money and suddenly runs away and never pays the bill, the answer to this problem is everyone gives a money first and than spends it away, and can’t spend more than what they have in. this action is actually removes the real money of the equation.

## Decentralized & Proof of Work

we said that to spand money using the ledger you need to first give money into the ledger that needs to be controlles and stored by someone, this is a “Centrallized System”, what if we give every one there own copy of the Ledger and Brodcasting it’s next lines to every one to add themselves. but how do we know what ledger is the right one, if everyone gets their’s own copy of the ledger how can we know that this copy is exactly like everyone’s else. the answer that Bitcoin seggested is to belive to which ledger has more work put into or “Proof of Work”, using Cryptographic Hash Functions, that means that the amonut of work (Computational power) that a Fraud needs is a lot more than the Real Thing, if were a numbers a the end of the list and you are Hshing the whole ledger the hash will start with 30 0’s at the start (the probabilty of this things to happend is 1 to 1 bil, that means that if any one try to fake a ledger he would need to try 1 bil options every time a new transaction is been put.)

## Block Chain & The Ledger is the Currency

so the idea is that a ledger is consists of blocks, and every block have a Proof of Work, (the same ways that every transaction has it’s own signature), to see if it’s Hash is starts with 30 0’s, and to keep an order every block has to contain the hash of the previous block, so if anyone want and changes one block’s hash he needs to change the block that comes after it, and the one comes after it and so on.

From now on we will call this ledger a “Block-Chain”, now everyone can add transactions sum them up to a block and give them a hash, the people that are summing the transactions up and calculation every block’s hash called “Minors” and they get a reward for every block, this reward gets registered at the top of every block. that means that the total number of LD is increasing with each new block.

for the Minor every Block is like a lottary, who ever gets the valid Hash first gets the Reward. we talked about always go get the Block-Chain with the most work put into it, that means that if you listening to two block chains update so should always take the onw with the most work put into it (usually the logest one).

---

to Fraud someone in this system you will need to exceed the other minors in block creation, for example if someone trys to fool someone and build a block that never actually happend, this person will need to find a vaid hash before the other minor to make his block-chain continuation longer (Vaild at the time), and he would need to do it atleast to keep up with the other minors that the would not exceed him.