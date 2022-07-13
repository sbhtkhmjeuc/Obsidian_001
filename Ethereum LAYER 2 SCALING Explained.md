# Ethereum LAYER 2 SCALING Explained
Type : #t/YouTube
Time Created : 2022-07-05 19:21
Last Modified : 2022-07-05 19:21
Subjects: #s/DeFi 
Progress: #p/🟠 
URL: https://www.youtube.com/watch?v=BgCgauWVTs0
Publisher: #psh/Finematics
Priority: #i/🟥 

*Definition* - layer 2 is a scaling option for the main blockchain (layer 1), layer 2 can be more fast, cheap  and speed compering for the to main blockchain (with layer 2 you can run 2K-4K TX/s instead of the regular 15 TX/s with layer 1). Layer 2 does that by handling the transactions off-chain.

## Channels
[Ethereum.com Explanation for State Channels](https://ethereum.org/en/developers/docs/scaling/state-channels/)
are allowing the participants to make transactions off-chain and make only two transactions on the main chain, that way you can make transactions more cheap, and more fast. But there are downsides to this, to participate you we need to set some money that will be locked up, this option is application specific which means that we can't run general prepose smart contract on them.  
![[Pasted image 20220705200250.png]]
![[Pasted image 20220705200750.png]]

## Plasma
## Side Chains
are independent block of that are compatible with Ethereum, the side chain can has it's own rules for block parameters. Because the EVM (Ethereum Virtual Machine) is also the one that the side chain is using that means that any smart contract that can be uploaded into Ethereum public Blockchain can be used in the side chains, each Side Chain can have it's own consensus models (for example : Proof-Of-Stake) and at the end getting uploaded to the Ethereum Public Blockchain.

## Rollups
Rollups are a combination of Channels and Side Chains, bringing the general purpose aspect and the full security of the Ethereum Public Blockchain.
in on sentence **Rollups are executing transactions outside of layer 1 but posting transaction data in layer 1.**
to ensure safety each rollups posts set of smart contracts that are responsible for setting deposits, withdrawals and verifying proofs.
there are two main verifying proofs methods **Optimistic rollups** (which uses fraud proofs) and **ZKRollups** (which uses Validity proof).

### Optimistic Rollups
means that it thinks that everyone is telling the truth, once there is an invalid transaction the system needs to identify it, recover the state of the chain and penalize the party that made this transaction. you can see that the parties that are involved need to set some collateral for the system to take incase of an invalid transaction. 
for the system to know that there was a invalid withdrawal other parties in the system need to send a fraud proof, because of that some times it takes a lot of time (sometime up to a week) for a party to get there withdrawals.  

### ZKRollups
Stands for Zero-Knowledge Rollups, 