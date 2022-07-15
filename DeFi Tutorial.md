# DeFi Tutorial
Type : #t/Course
Time Created : 2022-07-14 16:56
Last Modified : 2022-07-14 16:56
Subjects: #s/DeFi #s/Solidity #s/Blockchain #s/SmartContract 
Progress: #p/🟠 
URL: https://www.youtube.com/watch?v=M576WGiDBdQ 
Priority: #i/🟧 
GitHub Link for the Itinerary : https://github.com/smartcontractkit/full-blockchain-solidity-course-py

## Welcome to Blockchain
Smart Contracts are self executing sets of instructions, without 3rd parties. But they have a big problem, <mark style="background: #CACFD9A6;">The Oracle Problem</mark>, the blockchain itself is a deterministic systems which means that everything that is happening in and doesn't connecting to the whole world, but for the smart contracts to have a more capabilities and to do more stuff they have to connect to the outside world, that's where <mark style="background: #CACFD9A6;">Oracles</mark> comes into play, oracles are connecting the world with the smart contract. (but because the Blockchain is Decentralized and the data that they get has to be Decentralized for the Blockchain to continue to be Decentralized).
the Connection between the rest of the world into these smart contracts creates new smart contracts that called <mark style="background: #CACFD9A6;">Hybrid Smart Contracts</mark>.(the large majority of the smart contracts in the world are Hybrid SC's)
<mark style="background: #CACFD9A6;">Chainlink</mark> - is a Oracle protocol that helps you to create Hybrid SC's.

### The Advantages of Blockchain & SC
#### Decentralized
#### Transparency & Flexibility
everybody has to play by the same rules, and everybody can see the whole thing, there are nothing hiding from the users.
#### Speed & Efficiency
the speed of the blockchain, which it gets from it's decentralized entities, so the transactions on the blockchain can be down to 10 min or couple of seconds, depends on the Blockchain that is being used.
#### Security & Immutability
The idea of the blockchain saying that the blockchain it self need to be in all of the members that using it, which means that if you computer is goes down all of the data is held by the other members of the blockchain.
because of the usage in high cryptography and math it's almost impossible to hack the blockchain.
#### Removal of Counterparty Risk
#### Trust Minimized Agreements 
you don't have to trust anyone all you have to look at is the math that is behind all of the agreements because this is a SC which is written in code what you'll get in it's what you'll get out every single time.

### DAO's
*Definition* - Stands for <mark style="background: #CACFD9A6;">Decentralized Autonomous Organizations</mark>, are organizations that live on the blockchain.

- <mark style="background: #CACFD9A6;">Testnet</mark> are free and for testing SC.
- <mark style="background: #CACFD9A6;">Mainnet</mark> cost money and are considered "Live".

<mark style="background: #CACFD9A6;">Faucet</mark> - is an application that gives us free test tokens, like test Rinkeby Ethereum.(https://faucet.rinkeby.io/), to look at the Rinkeby Blockchain you can visit, https://rinkeby.etherscan.io/.

Gas is a unit of Computational Measure. The more computation a transaction uses the more "Gas" you'll have to  pay for. Every Transaction that happens on-chain pays a "Gas Fee" to node operators.

The Amount of "Gas" used and how much you pay depends on on how "**Computationally Expensive**" your transaction is. Sending ETH to 1 address would  be "Cheaper" than sending ETH to 1000 Address. 
**The more Complicated the Transaction means the more stops of SC functioning the more expensive it will be.**
**The sender is paying the "Gas Fee"**.

when you use Metamask, when you send tokens, you can set a "Gas Limit" which the transaction won't execute if the Gas is above the "Gas Limit", and you can set a "Gas Price" in GWEI. 
to
the Blockchain can process a number of transaction at a time, if you change the "Gas Price" for a bigger one the transaction will become more attractive for the Mainers because they will get a bigger reward, which will get the transaction to be completed faster.
you can visit, (https://ethgasstation.info/) to get more info about the Gas Price. 

**You can say that the Gas Price is based off the "Demand" of the Blockchain, the more people want to make transaction the higher the Gas Price, and therefore the higher the transaction fees.**

### How the Blockchain Works
<mark style="background: #CACFD9A6;">Hash</mark>  - a Unique fixed length string, meant to identify a piece of data, They are created by placing said data into a "Hash Function".
the miners are basically trying to find a hash for the data that they got provided (in the Example : Block Number & the Data in the block), by adding a **Nonce** (which in this example is a number), and the hash of the data and the Nonce at the end need to follow a cretin rule (in the Example the Hash need to start with 4 0's). 

<mark style="background: #CACFD9A6;">The Genesis Block</mark> - is the first block ever.
<mark style="background: #CACFD9A6;">Tx</mark> - Transaction 

in the real Blockchain, to create a Block-Chain, the Previous Hash is also a part of the current Block and also getting into the Hash Function,  so if the someone is to change something in the data of the block, the data of the current block will get invalid, and the next block all the way down to the latest block, and because of the large scale of Ethereum to re calculate all of the Block will take a lot of time which the hacker won't be able to outran the real Ethereum network.     
for the Blockchain to be tampered you need to ran all of the blocks hash's that is being created from the moment and on, and you have to have the majority of the Blockchain peers (**51% or more**) to agree with you on the transactions. 
(because the Time to Mine one Bitcoin Block is 10 min, it will take a lot of time to re-calculate the blockchain, which by design ment to be impossible for hacker to not temper with the Blockchain.)

<mark style="background: #CACFD9A6;">The Bigger the Network, the More Secure it is</mark> 

<mark style="background: #CACFD9A6;">Mining</mark>  - the process of finding the "solution"  to the Blockchain "Problem", the entities that find the Solutions called **Nodes**. 

<mark style="background: #CACFD9A6;">in the Blockchain the Majority Rules.</mark> [[51% Attack On Blockchain]]

