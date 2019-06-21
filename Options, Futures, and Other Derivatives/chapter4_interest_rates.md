# Chapter4 Interest Rates

小目录：

+ 四个常见利率
+ 复利（compounding）
+ 零息利率（zero rates）与远期利率（forward rates）
+ Forward Rate Agreement
+ Duration 与 Convexity


### 四个常见利率

**国债利率、著名的基准利率如伦敦同业拆借利率（Libor）和美国联邦基准利率、回购利率。**

+ Treasury rate（国债利率）: Rate on instrument issued by a government in its own currency（由于有政府背书可算作无风险利率）

+ LIBOR(London Interbank Offered Rate 伦敦同业拆借利率)：Rate of interest at which a AA bank can borrow money on an unsecured basis from another bank 

+ Fed funds rate（联邦资金利率）：Unsecured interbank overnight rate of interest which allows banks to adjust the cash (i.e., reserves) on deposit with the Federal Reserve at the end of each day（各会员银行为调整准备金头寸和日常票据交换轧差而相互拆放联邦基金的利率，最主要是指隔夜拆借利率，联邦基金市场允许无法持有足够准备金的银行从其他有超额准备金的银行借得资金。）

+ Repo rate（回购利率）：Repurchase agreement is an agreement where a financial institution that owns securities agrees to sell them for X and buy them back in the future (usually the next day) for a slightly higher price, Y. The repo rate is calculated from the difference between X and Y.

### 复利（compounding）

+ EAR（effective annual return）与compounding frequency（复利频率）
+ continuous compounding（连续复利，频率最高，年利率最高）
+ 不同频率之间的EAR的转化

### 零息利率（zero rates）与远期利率（forward rates）

+ 零息利率zero rate，或称即期利率spot rate，可视作零息债券的到期收益率
+ bootstrap approach：从多个到期期限的债券定价中推导长期的零息利率
+ 远期利率forward rate：未来的零息利率（The forward rate is the future zero rate implied by today’s term structure of interest rates）如1y2y、1y3y、2y3y
+ 即期利率与远期利率（非连续复利的情况下）：Suppose that the zero rates for time periods T1 and T2 are R1 and R2 with both rates continuously compounded, then the forward rate for the period between times T1 and T2 is (R2T2-R1T1)/(T2-T1). 

**For an upward sloping yield curve: Fwd Rate > Zero Rate > Par Yield**
**For a downward sloping yield curve：Par Yield > Zero Rate > Fwd Rate**


### Forward Rate Agreement

A forward rate agreement (FRA) is an OTC agreement that a certain rate will apply to a certain principal during a certain future time period.

RK is exchanged for interest at the market rate.
RF is certain to be realized for the FRA contract.
The value of an FRA is the present value of the difference between the interest that would be paid at interest at rate RF and the interest that would be paid at rate RK.

### Duration 与 Convexity

久期(duration)是以每期现金流与债券现值之比作为权重的加权平均期限，修正久期反映债券价格随收益曲线的百分比变动，即dY对于（dB/B）的影响。

凸性(convexity)，描述债券价格与利率的非线性关系。对于同样的利率变动值，利率上升时价格下跌幅度小，但利率下降时价格下跌幅度大。

dB/B = -Duration·dY + 0.5 Convexity·(dY)^2






















