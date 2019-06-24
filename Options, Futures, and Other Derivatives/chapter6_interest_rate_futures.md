# Chapter6 Interest Rate Futures



### Day count convention（单利）

Treasury bonds: actual/actual, e.g. 4% is earned between coupon payment dates
Corporate bonds: 30/360 
Money Market Instruments: actual/360, e.g. 8% is earned in 360 days


### Treasury bill prices

<a href="https://www.codecogs.com/eqnedit.php?latex=P&space;=&space;\frac{360}{n}\cdot&space;\left&space;(&space;100-Y&space;\right&space;)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?P&space;=&space;\frac{360}{n}\cdot&space;\left&space;(&space;100-Y&space;\right&space;)" title="P = \frac{360}{n}\cdot \left ( 100-Y \right )" /></a>
where Y is cash price per 100, P is quoted price 

Cash price = Quoted price + Accrued Interest

Cash price received by party with short position = Most recent settlement price × Conversion factor + Accrued interest

The conversion factor for a bond is approximately equal to the value of the bond on the assumption that the yield curve is flat at 6% with semiannual compounding.


### Eurodollar Futures

A Eurodollar is a dollar deposited in a bank outside the United States

Eurodollar futures are futures on the 3-month Eurodollar deposit rate (same as 3-month LIBOR rate)

One contract is on the rate earned on $1 million. A change of one basis point or 0.01 in a Eurodollar futures quote corresponds to a contract price change of $25.

A Eurodollar futures contract is settled in cash. When it expires (on the third Wednesday of the delivery month) the final settlement price is 100 minus the actual three month Eurodollar deposit rate. i.e. deposit rate = 100 - Quoated price.

If Q is the quoted price of a Eurodollar futures contract, the value of one contract is 10,000[100-0.25(100-Q)].

Eurodollar futures contracts last as long as 10 years. For Eurodollar futures lasting beyond two years we cannot assume that the forward rate equals the futures rate: (1)Futures is settled daily whereas forward is settled once; (2)Futures is settled at the beginning of the underlying three-month period; FRA is settled at the end of the underlying three- month period.

So we need a “convexity adjustment” :
<a href="https://www.codecogs.com/eqnedit.php?latex=Forward&space;Rate&space;=&space;Futures&space;Rate&space;-&space;0.5\cdot&space;\sigma&space;^{2}T_{1}T_{2}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?Forward&space;Rate&space;=&space;Futures&space;Rate&space;-&space;0.5\cdot&space;\sigma&space;^{2}T_{1}T_{2}" title="Forward Rate = Futures Rate - 0.5\cdot \sigma ^{2}T_{1}T_{2}" /></a> WhereT1 is the start of period covered by the forward/futures rate; T2 is the end of period covered by the forward/futures rate (90 days later that T1); sigma is the standard deviation of the change in the short rate per year

### Extending the LIBOR Zero Curve

Eurodollar futures can be used to determine forward rates and the forward rates can then be used to bootstrap the zero curve.

<a href="https://www.codecogs.com/eqnedit.php?latex=F&space;=&space;\frac{R_{2}T_{2}-R_{1}T_{1}}{T_{2}-T_{1}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F&space;=&space;\frac{R_{2}T_{2}-R_{1}T_{1}}{T_{2}-T_{1}}" title="F = \frac{R_{2}T_{2}-R_{1}T_{1}}{T_{2}-T_{1}}" /></a>

### Duration Matching

Hedging against interest rate risk by matching the durations of assets and liabilities. It provides protection against small parallel shifts in the zero curve.

Duration-Based Hedge Ratio = <a href="https://www.codecogs.com/eqnedit.php?latex=\frac{P&space;\cdot&space;D_{p}}{V_{F}\cdot&space;D_{F}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\frac{P&space;\cdot&space;D_{p}}{V_{F}\cdot&space;D_{F}}" title="\frac{P \cdot D_{p}}{V_{F}\cdot D_{F}}" /></a> where VF is contract price for interest rate futures, DF is duration of asset underlying futures at maturity, P is value of portfolio being hedged, and DP is the duration of portfolio at hedge maturity.

limitation: Assumes that only parallel shift in yield curve take place.














