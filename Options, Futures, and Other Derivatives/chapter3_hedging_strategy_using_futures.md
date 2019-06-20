# Chapter3 Hedging Strategies Using Futures

小目录：

+ 1. Long & Short Hedges
+ 2. IF Hedge : Choice of Contract
+ 3. Stack and Roll Hedge  v.s. Strip Hedge

---

### 1. Long & Short Hedges

> If you want to lock in the price of the assst you are gonna to buy, **a long futures hedge is appropriate**, and if you are gonna to sell, then **a short futures hedge** is appropriate.
> 
> 如果你知道未来要买入一个资产，而且你想减少价格不确定性（锁定交易价格），可以成为期货合约的多头，反之亦然，你想在未来以确定价格卖出一个资产，那样可以成为期货合约的空头。

事实上，将不确定性对冲掉，既有好处也有坏处。

+ 利：可以专注于主要的业务，使其不受利率、汇率波动的影响（比如在当下谈成了一单三个月后的跨国交易）。
+ 弊：将不确定性对冲掉，虽然可以避免unexpected loss但是也失去获得unexpected gains的机会。存在unexpected gains的情况下，业绩就会比没有进行对冲的竞争者差很多。


**Basis risk**

> 基差(basis)即现货成交价格与交易所期货价格之间的差(Spot price minus futures price)
> 
> 基差风险(basis risk)是指保值工具与被保值商品之间价格波动不同步所带来的风险(Basis risk arises because of the uncertainty about the basis when the hedge is closed out)

*下面我们将F1与F2看作是保值工具的期货价格，S1与S2是被保值商品的现货价格（下面会说到保值工具与被保值商品之间必须是highly correlated那样对冲策略才是有效的）*

Tips for **区分long postion与short position**:如果是long position那么会在标的物的对应数值上升时获得收益，short position则相反，如：对于股票，多头会在股票价格上升时获得收益。

**Long Hedge for Purchase of an Asset**

F1: Futures price at time hedge is set up; F2: Futures price at time asset is purchased; S2: Asset price at time of purchase; b2: Basis at time of purchase

Cost of asset: S2 （现货市场交割）

Gain on Futures: F2-F1 （期货市场交割）

Net amount paid: S2−(F2−F1) = F1 + b2

*b2是在签期货合约的时候不能确定的，这就是basis risk*

**Short Hedge for Purchase of an Asset**

F1: Futures price at time hedge is set up; F2: FFutures price at time asset is sold; S2: Asset price at time of sale; b2: Basis at time of sale

Price of asset: S2

Gain on Futures: F1-F2

Net amount received: S2+(F1−F2) = F1 + b2

*一份futures contract的long position和short position就像是硬币的两面，long的pay = short的receive*


### 2. IF Hedge : Choice of Contract

#### Timing
Choose a delivery month that is as close as possible to, but later than, the end of the life of the hedge

#### Cross Hedging
When there is no futures contract on the asset being hedged, choose the contract whose futures price is most **highly correlated** with the asset price

Optimal Hedge Ratio : h = rho * (std.ds)/(std.df)

where:

std.ds: standard deviation of ds(the change in the spot price during the hedging period)

std.df: standard deviation of df(the change in the futures price during the hedging period)

rho: the coefficient of correlation between ds and df

### 3. Stack and Roll Hedge  v.s. Strip Hedge

> Stack and Roll: roll futures contracts forward to hedge future exposures
> 
> Initially enter into futures contracts to hedge exposures up to a time horizon; Just before maturity we close them out an replace them with new contract reflect the new exposure

来个栗子：接下来的一年，每个月要买150桶油，想通过long futures对冲风险。

Stack and Roll Hedge （滚动对冲）是这样做的：在第0月，long第1月到期的期货150×12=1800（把整年的量都long掉）；在第一月结束时交割150，剩下的150×11不交割，要Roll——在期货交割日之前把这剩下的期货合约卖掉，再买入等量的第二个月到期的期货合约；在第二个月结束的时候同样操作，以此类推。事实上只对冲了最近一笔的风险。

Strip Hedge （条式对冲）是这样做的：分别long一个月、两个月、...、十二个月后到期的期货，也就是直接一次性买好1-12月的期货合约按期交割，事实上对每一期都进行了对冲。

对比利弊：由于每次roll都产生手续费，所以stack and roll的transction cost比strip高。但是，因为roll的都是短期合约（以上例子一个月的合约），所以相比上来就买12个月的合约 bid-ask spread要小。

















