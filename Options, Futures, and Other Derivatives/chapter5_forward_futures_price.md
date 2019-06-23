# Chapter5 Determination of Forward and Futures Prices

**Forward and Futrues Prices：是标的资产的定价，确定执行价格**
**Forward and Futures Value：是合约自身的价值，源于标的资产价格不确定性带来的价值**

小目录：

+ Forward and Futrues Prices
+ Forward and Futures Value
+ Index arbitrage


### Forward and Futrues Prices

<a href="https://www.codecogs.com/eqnedit.php?latex=F_{0}&space;=&space;S_{0}\cdot&space;e^{rT}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F_{0}&space;=&space;S_{0}\cdot&space;e^{rT}" title="F_{0} = S_{0}\cdot e^{rT}" /></a>

+ **When an Investment Asset Provides a Known Income**

<a href="https://www.codecogs.com/eqnedit.php?latex=F_{0}&space;=&space;\left&space;(S_{0}-I&space;\right&space;)\cdot&space;e^{rT}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F_{0}&space;=&space;\left&space;(S_{0}-I&space;\right&space;)\cdot&space;e^{rT}" title="F_{0} = \left (S_{0}-I \right )\cdot e^{rT}" /></a>

where I is the present value of the income during life of forward contract

+ **When an Investment Asset Provides a Known Yield**

<a href="https://www.codecogs.com/eqnedit.php?latex=F_{0}&space;=&space;S_{0}\cdot&space;e^{\left&space;(r-q&space;\right&space;)T}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F_{0}&space;=&space;S_{0}\cdot&space;e^{\left&space;(r-q&space;\right&space;)T}" title="F_{0} = S_{0}\cdot e^{\left (r-q \right )T}" /></a>

where q is the average yield during the life of the contract (expressed with continuous compounding)

+ **The Cost of Carry and Convenience Yield**

The cost of carry, c, is the storage cost plus the interest costs less the income earned.

For an investment asset
<a href="https://www.codecogs.com/eqnedit.php?latex=F_{0}&space;=&space;S_{0}&space;\cdot&space;e^{c&space;T}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F_{0}&space;=&space;S_{0}&space;\cdot&space;e^{c&space;T}" title="F_{0} = S_{0} \cdot e^{c T}" /></a>

For a consumption asset 
<a href="https://www.codecogs.com/eqnedit.php?latex=F_{0}&space;\leq&space;S_{0}&space;\cdot&space;e^{c&space;T}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F_{0}&space;\leq&space;S_{0}&space;\cdot&space;e^{c&space;T}" title="F_{0} \leq S_{0} \cdot e^{c T}" /></a>

The convenience yield on the consumption asset, y, is defined so that 
<a href="https://www.codecogs.com/eqnedit.php?latex=F_{0}&space;=&space;S_{0}&space;\cdot&space;e^{\left&space;(c-y&space;\right&space;)&space;T}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F_{0}&space;=&space;S_{0}&space;\cdot&space;e^{\left&space;(c-y&space;\right&space;)&space;T}" title="F_{0} = S_{0} \cdot e^{\left (c-y \right ) T}" /></a>

+ **Consumption Assets: Storage is Negative Income**

<a href="https://www.codecogs.com/eqnedit.php?latex=F_{0}&space;\leq&space;S_{0}&space;\cdot&space;e^{\left&space;(r&plus;u&space;\right&space;)&space;T}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F_{0}&space;\leq&space;S_{0}&space;\cdot&space;e^{\left&space;(r&plus;u&space;\right&space;)&space;T}" title="F_{0} \leq S_{0} \cdot e^{\left (r+u \right ) T}" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=F_{0}&space;\leq&space;\left&space;(S_{0}&plus;U&space;\right&space;)&space;\cdot&space;e^{rT}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F_{0}&space;\leq&space;\left&space;(S_{0}&plus;U&space;\right&space;)&space;\cdot&space;e^{rT}" title="F_{0} \leq \left (S_{0}+U \right ) \cdot e^{rT}" /></a>

where u is the storage cost per unit time as a percent of the asset value, U is the present value of the storage costs.


+ **Forward vs Futures Prices**

When the maturity and asset price are the same, forward and futures prices are usually assumed to be equal.

When interest rates are uncertain, they are slightly different.

倘若利率和标的资产价格同向变动，则futures price is slightly higher than the forward price。倘若负相关，则相反。

+ **Futures Prices & Expected Future Spot Prices**

Suppose k is the expected return required by investors in an asset, r is the risk-free rate.

<a href="https://www.codecogs.com/eqnedit.php?latex=F_{0}\cdot&space;e^{-r&space;T}&space;e^{k&space;T}=&space;E\left&space;(S_{T}&space;\right&space;)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F_{0}\cdot&space;e^{-r&space;T}&space;e^{k&space;T}=&space;E\left&space;(S_{T}&space;\right&space;)" title="F_{0}\cdot e^{-r T} e^{k T}= E\left (S_{T} \right )" /></a>

if no systematic risk（k=r）: <a href="https://www.codecogs.com/eqnedit.php?latex=F_{0}=&space;E\left&space;(S_{T}&space;\right&space;)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F_{0}=&space;E\left&space;(S_{T}&space;\right&space;)" title="F_{0}= E\left (S_{T} \right )" /></a>


if positive systematic risk（k>r）: <a href="https://www.codecogs.com/eqnedit.php?latex=F_{0}<&space;E\left&space;(S_{T}&space;\right&space;)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F_{0}<&space;E\left&space;(S_{T}&space;\right&space;)" title="F_{0}< E\left (S_{T} \right )" /></a>

if negative systematic risk（k<r）: <a href="https://www.codecogs.com/eqnedit.php?latex=F_{0}>&space;E\left&space;(S_{T}&space;\right&space;)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F_{0}>&space;E\left&space;(S_{T}&space;\right&space;)" title="F_{0}> E\left (S_{T} \right )" /></a>


### Forward and Futures Value

+ A forward contract is worth zero (except for bid-offer spread effects) when it is first negotiated
+ Later it may have a positive or negative value

K: delivery price (market price), and F0: contract's delivery price (exercise price)

<a href="https://www.codecogs.com/eqnedit.php?latex=V(long&space;forward&space;contract)&space;=&space;\left&space;(&space;F_{0}-K&space;\right&space;)\cdot&space;e^{r&space;T}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?V(long&space;forward&space;contract)&space;=&space;\left&space;(&space;F_{0}-K&space;\right&space;)\cdot&space;e^{r&space;T}" title="V(long forward contract) = \left ( F_{0}-K \right )\cdot e^{r T}" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=V(short&space;forward&space;contract)&space;=&space;\left&space;(&space;K-F_{0}&space;\right&space;)\cdot&space;e^{r&space;T}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?V(short&space;forward&space;contract)&space;=&space;\left&space;(&space;K-F_{0}&space;\right&space;)\cdot&space;e^{r&space;T}" title="V(short forward contract) = \left ( K-F_{0} \right )\cdot e^{r T}" /></a>

### Index arbitrage

The index arbitrage strategy attempts to profit from the differences between actual and theoretical prices of a stock market index. This is done by simultaneously buying, or selling, a stock index futures contract while selling, or buying, the stocks in that index.