## Uniswap DOC V2
![](https://docs.uniswap.org/assets/images/anatomy-82d82239e5417e36ca9da17d14961434.jpg)

Anyone can become a liquidity provider (LP) for a pool by depositing an equivalent value of each underlying token in return for pool tokens.

when there is a lot of value in the pool, there will be less slippage, it will take a large movement to make a large slippage in the large pool. "To reduce slippage, it is important that these liquidity pools have as much liquidity as possible."   

## Swaps
![](https://docs.uniswap.org/assets/images/lp-c0b1b03ef921f1325971fa8ab6e9a4f1.jpg)

in swaps the user need to send tokens to get tokens, with Uniswap the user needs to specify how much token then want to give, and the AMM will calculate how much of the other token then can recive. Because of the equation that the AMM is working with (), the sending of the token needs to be first and after that you'll get the amount of the other swapped tokens. ("**tokens must be transferred to pairs before swap is called**" -Uniswap Docs).