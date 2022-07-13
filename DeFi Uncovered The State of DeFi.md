# DeFi Uncovered The State of DeFi
Type : #t/Article
Time Created : 2022-07-07 09:19
Last Modified : 2022-07-07 09:19
Subjects: #s/DeFi 
Progress: #p/🟡 
URL: https://insights.glassnode.com/defi-uncovered-the-state-of-defi/
Publisher: #psh/
Priority: #i/🟥 

![[defigrowth-1.png]]
User growth since the early days of DeFi experiments has been explosive, exceeding 2.1M unique addresses that have interacted with Ethereum DeFi in some way since early 2018.
![[defiusers.png]]
As Ethereum adoption grows, so too does the potential TAM for DeFi applications.
![[addersses.png]]
A metric called Total Value Locked (TVL) has been popularized to describe the total assets deployed in smart contracts. Locked, deposited, stored, sent, lent, provided, all meaning the same thing in the context of TVL. In exchanges we can think of these assets directly as liquidity and in lending protocols as collateral.
![[totallocked.png]]
Utilization describes how much of the supply side liquidity is being used productively by the demand side of a protocol.
## Adoption by DeFi Protocol Type
### Borrow and Lending Markets
Lending protocols have exploded in interest as users are attracted by:

-   earning interest on their tokens
-   getting access to leverage and the ability to short on-chain
-   accessing liquidity for other tokens without needing to sell their current holdings

![[lending4.png]]

Utilization = 1 - (free liquidity / market size). If there is $1B deposited and $100M borrowed then utilization would be ~10%.

![[markets22.png]]
<mark style="background: #FFB8EBA6;">Rates change in these markets against utilization curves.</mark> 

As utilization of a total market increases, so too do interest rates to encourage more lenders to enter the market and borrowers to exit.
In reverse, as utilization decreases, so too do interest rates to encourage more borrowers to enter.

![[moneymarkets2.png]]
We see in the following chart that stablecoins command a healthy balance of borrowing and lending, with average utilization rates in excess of 75% in most cases. Volatile assets like ETH and wBTC are commonly collateral rich but borrower poor.

![[moneymarkets11.png]]

A risk premium exists for participating in lower liquidity markets.
New liquidity mining programs and other governance impacts can introduce new rate volatility.

![[lending_summ.png]]

### DEX (Decentralized Exchanges)
![[totaluserslend.png]]
The users are attracted to the platform by market depth and availability of their tokens of interest.
A positive feedback loop is created where more users create more fees and more fees attract more liquidity.(⬇️)
![[feedbackloop.png]]
![[dailydexvol.png]]
The holy grail of adoption is when a DEX can both attract strong persistent liquidity and volume over an extended period of time.

![[dexs.png]]

We can also measure the health of an exchange by user retention. Some exchanges persistently keep strong liquidity with incentive programs, but they leave a bit to be desired on user retention.
![[Pasted image 20220709195334.png]]

### Collateralized Stablecoins
![[stablesss.png]]
![[softpeg.png]]
![[daistabl.png]]
In lending markets, DAI is the stablecoin with the 2nd most collateral in Compound and a close third in Aave. This is quite healthy considering the total outstanding supply of DAI is <10% the total supply of USDC, USDT, and DAI.
![[Pasted image 20220709200352.png]]
In decentralized exchanges, a look at the DAI supply side shows healthy liquidity, with DAI claiming about 19% of stablecoin liquidity on Uniswap.

![](https://lh4.googleusercontent.com/sW-7N60vQfE3Q-YUcpBIKDdCOEHxsANfFMev3nNdeyAW7H7WZN6JOpadohxfc9adROc9TYjO7gyXsIE7F5VoFk-VY02DP00_4O36t84997kV_q0uHPL97NHRyVhI0ErUNbW-i2H5)

On the demand side, DAI’s volume takes about 15% daily volume of Uniswap volume in pairs that include DAI. USDC and USDT each take about 43%.
![](https://lh4.googleusercontent.com/KB-tYIxUJ-XOnxQm19KXQaoBWkZZbAfTSFW8fA0SOmuiIxznCM21hHuSs-RE2fiBtuHkYaSmSjy2AZR-1ElXR1qdzXpFvh6jcPK3rhEUj6nFU5hqDMgnuX9AlBcTT_tvfaJ1bldT)

<mark style="background: #FF5582A6;">DAI maintains a peg and growing adoption without needing a USD-backed reserve</mark> 

### Yield Aggregators
This is a competitive sector of DeFi with a clear winner thus far in Yearn Finance.
![[yearntvl.jpg]]

The basis of the strategies :
- Use any asset as liquidity.
- Use liquidity as collateral and algorithmically manage collateral to avoid default.
- Borrow stablecoins.
- Put the stablecoins to work liquidity mining and/or earning fee revenue.
- Reinvest returns to create compounding growth.
![[yearnstrat.png]]