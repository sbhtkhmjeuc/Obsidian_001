# Uniswap Smart Contract Breakdown
Type : #t/Article
Subjects: #s/Uniswap #s/DeFi 
Progress: #p/🟠 
URL: https://betterprogramming.pub/uniswap-smart-contract-breakdown-ea20edf1a0ff
Publisher: #psh/Medium
Priority: #i/🟥 

## How Uniswap Works at a High level
*Definition* - **Uniswap is just a decentralised exchange.**

Exchanges can be implemented in two ways :
- **Order Book** - Buyers and sellers file orders. And the centralized system matches the buy orders to the sell orders. This is how the traditional stock exchange works.
- **AMM** (Automated Market Maker) - **There is no centralized matchmaker**. There are people who provide both tokens (Dogecoin and Shiba). They are called liquidity providers. These liquidity providers create a pool of Dogecoin and Shiba tokens. Now traders can come and deposit Dogecoin and get Shiba in return. This is done automatically, without a centralized entity. (Traders pay a small percentage fee for the trade which goes to liquidity providers for their services.)

<mark style="background: #BBFABBA6;">Uniswap uses the AMM technique.</mark> 

![](https://miro.medium.com/max/1400/1*VcZyp1TBYtZrYi47ozJxRw@2x.png)

## How Uniswap Code is Oregenized
there are 4 contract in total which are devided between two groups :
- **Core** - is storing the funds (The Tokens) and exposing for swapping tokens, Adding Funds, Getting Rewards and Etc...
- **Periphery** - is for interacting with the Core.
![](https://miro.medium.com/max/1400/1*WbCK5HMsPexKYuZxujx1Rg.png)

the Core of the following smart contracts :
1. **Pair** - a smart contract that implements the functionality for swapping, minting, burning of tokens. This contract is created for every exchange pair like _Dogecoin ↔ Shiba_.
2. **Factory** - creates and keeps track of all Pair contracts 
3. **ERC20** - <mark style="background: #BBFABBA6;">for keeping track of ownership of pool.</mark> Think of the pool as a property. When liquidity providers provide funds to the pool, they get “pool ownership tokens” in return. These ownership tokens earn rewards (by traders paying a small percentage for each trade). When liquidity providers want their funds back, they just submit the ownership tokens back and get their funds + the rewards that were accumulated. The **ERC20** contract keeps track of the ownership tokens.

the Periphery consists of just one smart contract, **Router** is for interaction with the core, provides functions such as `swapExactETHForTokens`, `swapTokensForExactETH`, etc...

## Uniswap Functionality
1. **Managing the Funds** - (How tokens such as Dogecoin and Shiba are managed in the pool)
2. **Function for LP's** - deposit more funds and withdrawal the funds along with the rewards
3. **Functions for traders** - swapping 
4. **Managing Pool ownership tokens**
5. **Protocol Fee** - Uniswap v2 introduced a <mark style="background: #CACFD9A6;">switchable protocol fee.</mark> This protocol fee goes to the Uniswap team for their efforts in maintaining Uniswap. At the moment, t<mark style="background: #CACFD9A6;">his protocol fee is turned off but it can be turned on in the future.</mark> When it’s on, the traders will still pay the same fee for trading but 1/6 of this fee will now go to the Uniswap team and the rest 5/6 will go to the liquidity providers as the reward for providing their funds.

there another Functionality that isn't a Core but it help for other contracts in the Ethereum Ecosystem:
6. **Price Oracle** -  Uniswap tracks prices of tokens relative to each other and can be used as a price oracle for other smart contracts in the Ethereum ecosystem. Due to arbitrage (which we will learn about later in the article), Uniswap prices tend to closely follow the real market prices of tokens. So the Uniswap price oracle is a pretty good approximation of the real market prices.
![](https://miro.medium.com/max/1400/1*FJYa-2urZHLwLJ8Sap1ozw.png)

## Core - Pair
Full Code of the Contract - https://github.com/Uniswap/v2-core/blob/master/contracts/UniswapV2Pair.sol

Imports :
![](https://miro.medium.com/max/1400/1*oLntXr5KxvEHYf5tMlUFYQ@2x.png)

![](https://miro.medium.com/max/1400/1*q3vmNeyBiiHdtsvKapTXOg@2x.png)
the contract name is `UniswapV2Pair`, implements `IUniswapV2Pair` (which is the interface for this contract) and also extends the `UniswapV2ERC20` (for managing the pool ownership tokens).
`SafeMath` is a library for dealing with overflow/underflow. `UQ112x112` is a library for supporting floating numbers.

### Managing funds
a Uniswap Pair is an exchange between to ERC-20 Tokens, in this case `token0` and `token1`. 
`reserve` variables store how much of the token we have in this pair.
![](https://miro.medium.com/max/1400/1*PMakgpkYwY_yTpfIJ6m9nA@2x.png)

The `reserve`'s variables are getting the balance from the `ERC20` contract which is holding the tokens.
 ![](https://miro.medium.com/max/1400/1*j4T8KVmNZhDekIC8O_zNtw.png)
 