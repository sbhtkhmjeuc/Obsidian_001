# DeFi Tutorial
Type : #t/Course
Time Created : 2022-07-14 16:56
Last Modified : 2022-07-14 16:56
Subjects: #s/DeFi #s/Solidity #s/Blockchain #s/SmartContract 
Progress: #p/🟠 
URL: https://www.youtube.com/watch?v=M576WGiDBdQ 
Priority: #i/🟧 
GitHub Link for the Itinerary : https://github.com/smartcontractkit/full-blockchain-solidity-course-py
Cheat Sheet Solidity : 
	https://github.com/manojpramesh/solidity-cheatsheet
	https://docs.soliditylang.org/en/v0.8.15/cheatsheet.html

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
(because the Time to Mine one Bitcoin Block is 10 min, it will take a lot of time to re-calculate the blockchain, which by design meant to be impossible for hacker to not temper with the Blockchain.)

<mark style="background: #CACFD9A6;">The Bigger the Network, the More Secure it is</mark> 

<mark style="background: #CACFD9A6;">Mining</mark>  - the process of finding the "solution"  to the Blockchain "Problem", the entities that find the Solutions called **Nodes**. 

<mark style="background: #CACFD9A6;">in the Blockchain the Majority Rules.</mark> [[51% Attack On Blockchain]]

in the block there are transactions, to verify a transaction the Blockchain uses Private & Public Keys 
(**Private Key** - only known to the key owner, it's used to "Sign" Transactions, **Public Key** - it's a key that everyone can see but it's assigned to you and connected Mathematically to your Private Key), Ethereum and Bitcoin both use the **ECDSA** (Elliptic Curve Digital Signature Algorithm), to make the Private and Public keys. 
once you make a transaction (**You send Someone Money**) you need to sign it with your private key, because you private key is mathematically connected to you public key and assuming your private key is only in the original owner, any one can just get the public key and the hash of the transaction and if the message that got out is readable you can assume that the person who's the public keys is signed it with a private key and the transaction made by him.

<mark style="background: #CACFD9A6;">the address of the Account is a some derivative of the Public Key</mark> 
<mark style="background: #BBFABBA6;">Private Key > Public Key > Address</mark> 

### How the Ethereum Blockchain Works
<mark style="background: #CACFD9A6;">Node</mark> - is **a computer running Ethereum client software**. A client is an implementation of Ethereum that verifies all transactions in each block, keeping the network secure and the data accurate.
<mark style="background: #CACFD9A6;">Consensus</mark> - is the mechanism used to agree on the state of Blockchain.
the Consensus Protocol is built from pieces: 
<mark style="background: #CACFD9A6;">Chain Selection</mark> - is a rule to determine which blockchain is the real Blockcain.
in Ethereum and Bitcoin uses the <mark style="background: #BBFABBA6;">Nakamoto Consensus</mark> which says that the Longer Blockchain (the one that has the most "work" in Computational power put on it) is the real one. (This is assuming that the most of the nodes are writing the "Good & Right" Blockchain and if one of the nodes tries to mess up, his Computational power compare to the rest of the Nodes that exist is very Minimal so he can't over calculate the Real Blockchain).

<mark style="background: #CACFD9A6;">Block Confirmation</mark> - refers to the number of blocks that were created on a Certain Block, <mark style="background: #BBFABBA6;">in the Longest Chain</mark>.  

<mark style="background: #CACFD9A6;">Sybil Resistance Attack</mark> - (**PoW** / **PoS**) is defending against one person or entity attempts to get an unfair advantage in a system or network by creating many identities or nodes cheaply by using the **Pow** (Proof of Work) and **PoS** (Proof of Stake).
<mark style="background: #CACFD9A6;">51% Attack</mark>  - [[51% Attack On Blockchain]]

<mark style="background: #CACFD9A6;">Proof of Work</mark> - (**Miners**)is a Mathematical process that a Miner needs to go through to find the hash that is right for a certain block, PoW works because no matter how much nodes you created each one needs to go this process of finding the "Nonce" of the block. In PoW all of the nodes going for a "Race" to find a right "Nonce" for the Block, the Node how finds the right "Nonce" being rewarded with a <mark style="background: #BBFABBA6;">Transaction Fee</mark> and in some cases with a <mark style="background: #BBFABBA6;">Block Reward</mark>, Because all of the nodes are racing for this one block each time a lot of computation power goes to waist. 

<mark style="background: #CACFD9A6;">Block Time</mark> - is the time between each block that is being created, the Longer the Block time the more secure the Blockchain from Sybil Attacks.

<mark style="background: #CACFD9A6;">Proof of Stake</mark> - (**Validators**) is also like PoW a Sybil Mechanism, but in this Protocol not everyone races to find the Block "Nonce", in this case each Node puts a Collateral (**Stake**) to be able to validate transactions, the Blockchain by a Pseudorandom Process selects each time that a new Block is created a Node which one he can Validate the Block, if the nodes succeeded and validated the Block he gets a <mark style="background: #BBFABBA6;">Transaction Fee</mark> which is added to their collateral, and if the Node can't validate the Block an amount of Tokens is taken from his Collateral and the Block gets a Different Node in Random again. Because the Validators are being chosen one at a time, there's a lot less Computational power going to waist, <mark style="background: #BBFABBA6;">PoS will be on ETH 2.0</mark> .

<mark style="background: #CACFD9A6;">Transaction Fee</mark> - is the "Gas" Price that the sender is paying for the transaction. (you can get Transaction Fee both in **PoW** and **PoS**)
<mark style="background: #CACFD9A6;">Block Reward</mark>  - is the reward that the Miners get from the Blockchain it self. (the Block Reward is increasing the circulation of the Block Reward (Bitcoin, ETH ...))

we said earlier that the Gas Price is a demonstration of the Demand in the market, and because there is a limit for computational power in the Nodes, and more people wants to make transaction the Gas Price will go up (because is will get more expensive to make a transaction in the block chain).
<mark style="background: #CACFD9A6;">Sharding</mark> - **Blockchain of blockchains** ,the horizontal spread of processing power instead of continuously adding it to one blockchain, in ETH 1.0 and Bitcoin you can use <mark style="background: #BBFABBA6;">Layer 2 Solutions</mark> ([[Ethereum LAYER 2 SCALING Explained]]) to do that, when ETH 2.0 will come out this problem will be treated because the blockchain can start multiple "Races" at once and create blocks faster. 
## Welcome to Remix
the Code is from the Video with personal notes: [[Solidity.sol]]

you can use in the version declaration `^`, which will mean that the contract will support sub-versions of what was written, For Example `^0.6.0` means that we can use `0.6.1`, `0.6.2` , `0.6.3` ... <mark style="background: #FF5582A6;">0.7.0</mark> (Not-included)., or you can also write the exact version of solidity (Example : `0.6.0`).

###### Things to Know 
- unit can't represent negative number
- all of the line ends with `;`
- If you don't initialize a variable, it will be 0 (`uint`, `int`)
- you can view a variable by adding the `public` keyword, this will automatically create a View Button in the contract, but you can create a function to do that. (Read more in "Function Visibility Specifiers" section of this page)
- State-Changing Function Calls are **Transaction**.
- when a variable is in a default Visibility Specifiers (the Visibility Specifiers isn't  written), **it's visible only it's scope**.
- public Variables automatically are also "View" Functions.
- you can create both **Dynamic & Fixed Size Arrays**. 
- add a license identifier (`// SPDX-License-Identifier: MIT`)

###### Types in Solidity
https://docs.soliditylang.org/en/v0.8.15/types.html

###### Function Visibility Specifiers
https://docs.soliditylang.org/en/v0.8.15/cheatsheet.html?highlight=Visibility%20Quantifiers#function-visibility-specifiers

###### Break Down of a Function 
Example - `function retrieve() public view returns (uint256)` : 
	`function` - declaring a function
	`public` - the new function is public (can be seen every where in the contract)
	`returns(TYPE)` - if you want the function to return things you needs to add this to the function, and inside of the `()` you need to add the type of the variable that is returns.
	`retrieve()` - in this case the name of the function, the name of the function is between the function declaration and the Visibility Quantifiers.
	
###### View & Pure
`view` - saying to the contract that we want to read content of the blockchain.
`pure` - can do a mathematical equation but don't store the outcome anywhere, **Does something but don't changing the state of the contract**. 

###### Memory & storage
`memory` - is a keyword used to store data for the execution of a contract. It holds functions argument data and is wiped after execution.
`storage` - can be seen as the default solidity data storage. It holds data persistently and consumes more gas.
![[Pasted image 20220717163044.png]]

## Storage Factory
<mark style="background: #BBFABBA6;">StorageFactory.sol</mark> - https://github.com/PatrickAlphaC/storage_factory/blob/main/StorageFactory.sol

<mark style="background: #CACFD9A6;">Factory Pattern</mark> - we create object without exposing the creation logic to the client and refer to newly created object using a common interface.

you can do that in solidity be adding the contract that you want into the current contract that you are working on, <mark style="background: #CACFD9A6;">the contract that you're working on and the one that you want to import have to in the same folder</mark> to do this you type for example `import "./SimpleStorage.sol";`.(<mark style="background: #BBFABBA6;">when you import a Contract you're defining all of it's Function.</mark> )
but to use that contract you need to create one inside for the current contract that you are working on, you can do this by typing for example `SimpleStorage simpleStorage = new SimpleStorage();` this creates a new contract, which you can after enter into an array. 
after you create a contract, you'll need to interact with his functions, to do that you need two things <mark style="background: #CACFD9A6;">Address of the contract</mark> and <mark style="background: #CACFD9A6;">ABI</mark>, you can type for example: `SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);`, you can see that we uses the `store()` function that is a part of the `SimpleStorage` contract on the `SimpleStorage` contract instance that we created before. (when you create a Factory pattern inside a contract, to use his function you'll have to use it like that `CONTRACT(address(NEW_CONTRACT_INSTANCE))`)

you can also like in Java use Inheritance in Solidity by typing in the contract declaration `is CONTRACT`, this will add of the `CONTRACT` functions and variables to the current contract.

## FundMe
the Code of this portion of the video : https://github.com/PatrickAlphaC/fund_me/blob/main/FundMe.sol
ETH Converter - https://eth-converter.com/

<mark style="background: #CACFD9A6;">payable</mark> - a key-word in solidity, you can add `payable` for a function which will make it **accept payment in ETH**, the amount that will be sent as payment is the amount that is appended to the transaction call, Example for a Function Header `function fund() public payable{...}` 

when you make a any kind of transaction there is an info that is sent with the transaction that you can view (https://docs.soliditylang.org/en/v0.8.15/units-and-global-variables.html?highlight=msg#block-and-transaction-properties), these attributes are relative to the function, which means that in every function or constructor, once you transact something, these attributes will change.

<mark style="background: #CACFD9A6;">The Block and Transaction Properties, in a constructor are those of the Deployer (the person how deployed the contract), because a constructor is a function that is running as soon as the contract deployed to the Blockchain and putting a contract on the network is kind of a transaction between the deployer and the Blockchain.</mark> 

once you sent funds for contract, the contract is now holding the funds. (and the developer who created the contract is also have access to the funds).

now we want to contribute to the funds, in amount of dollar (or other currency), you can do that by using Chainlink (<mark style="background: #FF5582A6;">Add Chainlink explanation</mark>)