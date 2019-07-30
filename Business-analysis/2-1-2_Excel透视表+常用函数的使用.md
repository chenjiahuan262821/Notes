# Excel透视表、常用函数的使用

## 1. Excel 数据透视表

windows下的快捷键：先`Ctrl-A`全选数据内容，`ALT-D-P-F`；不用快捷键的话就`插入-数据透析表`。之后根据需要勾选相应的字段，可以进行计数、求和、求平均等等，也可以进行分组统计（对行标签进行`右键-组合`），也可以排序。

## 2. 常用函数的使用

常用函数分为3个等级：

+ 基础类：sum、count、average、max、min
+ 进阶类：if多层嵌套、sumif、sumifs、countif、countifs、sumproduct、iferror
+ 数据处理类：text、left、right、rand
 
### 2.1 基础类：sum、count、average、max、min

+ sum()：括号内填写需要加总的数据，非连续的数据就用逗号隔开
+ count():对选定范围进行计数
+ average():求均值，括号里的语法和sum类似
+ max()或min()：求最大值、最小值

### 2.2 进阶类：if多层嵌套、sumif、sumifs、countif、countifs、sumproduct、iferror

+ if多层嵌套：IF(判断1,若为真的结果,IF(判断2,若为真的结果,若为假的结果))
+ sumif：SUMIF(判断数据源，判断条件，目标数据源)
+ sumifs：SUMIFS(目标数据源,判断数据源1，判断条件1，判断数据源2,判断条件2)
+ countif：COUNTIF(判断数据源，判断条件)
+ countifs：COUNTIFS(判断数据源1，判断条件1，判断数据源2,判断条件2)
+ sumproduct：SUMPRODUCT(数组1，数组2)，对应点乘
+ iferror：IFERROR(求值公式，求职结果报错显示什么)

### 2.3 数据处理类：text、left、right、rand

+ text：能够将任意文本格式转化为需要的格式，如text(数据源,"yyymmdd")-TEXT(TEXT(A1,"yyyy-mm-dd"),"yyymmdd")
+ rand:取随机数，RANDBETWEEN(min,max)
+ left或right:left(目标数据源,从左数起x位数）
+ vlookup(查询条件,查询区域(固定),目标列数,是否精准匹配)
+ hlookup与lookup，不太常用

## 3. 基本相关分析

+ 图像判断：散点图，趋势线（回归公式看R值）
+ 数据分析：`数据-数据分析`（没有的话去看下`加载项-分析工具库`）

