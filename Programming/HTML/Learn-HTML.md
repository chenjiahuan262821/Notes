---
title: 为爬虫打基础：学习HTML的笔记
date: 2019-11-05 19:25:20
tags: 编程
---

超文本标记语言（英语：HyperText Markup Language，简称：HTML）是一种用于创建网页的标准标记语言。通常，我们在一个网页上右键，就可以查看网页源代码了。

为了学爬虫，今天来学习怎么写一个网页。

+ HTML文档的后缀名：.html或者.htm，都可以
+ !DOCTYPE html 声明为 HTML5 文档
+ html 元素是 HTML 页面的根元素
+ head 元素包含了文档的元（meta）数据，如 meta charset="utf-8" 定义网页编码格式为 utf-8。
+ title 元素描述了文档的标题
+ body 元素包含了可见的页面内容
+ h1 元素定义一个大标题
+ p 元素定义一个段落

这是一个例子。通常，HTML标签是成对出现的，标签对中的第一个标签是开始标签，第二个标签是结束标签。

	<!DOCTYPE html>
	<html>
	
	<head>
	<meta charset="utf-8">
	<title>Hello, 我的第一个网页</title>
	</head>
	
	<body>
		<h1>这是一个一级标题</h1>
		<hr>
		<h2>这是一个二级标题</h2>
		<hr>
		<p>这是一个段落</p>
	</body>
	
	</html>


<div align=center>
<img src="Learn-HTML/structure.jpg" width="80%" height="80%">
<div align=left>

#### 基本元素

##### 标题

	<h1>这是一个一级标题</h1>
	<h2>这是一个二级标题</h2>
	<h3>这是一个三级标题</h3>

##### 段落

	<p>这是一个段落。</p>
	<p>这是另外一个段落。</p>
	<p>这个<br>段落<br>演示了分行的效果</p>

##### 文本
	
	<font size="6">这是6号字体文本</font>
	<font size="5">这是5号字体文本</font>
	<font size="4">这是4号字体文本</font>

<font size="6">这是6号字体文本</font>

<font size="5">这是5号字体文本</font>

<font size="4">这是4号字体文本</font>


	<b>加粗文本</b><br>
	<i>斜体文本</i><br>
	<code>电脑自动输出</code><br>
	这是 <sub>下标</sub> 和 <sup>上标</sup>

<b>加粗文本</b><br>
<i>斜体文本</i><br>
<code>电脑自动输出</code><br>
这是 <sub>下标</sub> 和 <sup>上标</sup>

##### 链接

	<a href="http://www.runoob.com">这是一个在当前窗口打开的链接</a>

	<a href="http://www.runoob.com" target="_blank">这是一个在新窗口打开的链接</a>

##### 图像

	<img>是空标签，只包含属性，并且没有闭合标签。

+ 要在页面上显示图像，要使用源属性（src）；src指 "source"，源属性的值是图像URL地址
+ alt 属性用来为图像定义一串预备的可替换的文本，在浏览器无法载入图像时，浏览器将显示这个替代性文本告诉读者失去的信息
+ height（高度）与width（宽度）属性用于设置图像的高度与宽度

示例：

	<img src="url" alt="Beauty">   #无法载入图像时，显示文字Beauty

	<img src="/structure.jpg" width="200" height="160">


##### 换行、加横线、注释
	
	<br/>  
	<!-- 注释：br是换行的意思 -->
	<hr>
	<!-- 注释：hr是加横线的意思 -->
	
+ 注: 浏览器会自动地在标题的前后添加空行。确保将 HTML 标题 标签只用于标题。不要仅仅是为了生成粗体或大号的文本而使用标题。
+ 上面像标题、段落、链接之类的，都是网页的元素，像href、img之类的，都是元素的属性，属性一般描述于开始标签，总是以名称/值对的形式出现，比如：name="value"。

#### 头部

头部head定义了文档的信息：

+ title定义了文档标题
+ base定义了页面链接标签的默认链接地址
+ link定义了一个文档和外部资源之间的关系
+ meta定义了HTML文档中的元数据，通常用于指定网页的描述、关键词、文件的最后修改时间、作者
+ script定义了客户端的脚本文件
+ style定义了HTML文档的样式文件

重点看下meta和style：

	<head>
		<meta charset="utf-8">
	
		<meta name="keywords" content="HTML">
		<!-- 为搜索引擎定义关键词-->
	
		<meta name="description" content="HTML教程">
		<!-- 为网页定义描述内容-->
	
		<meta name="author" content="Joyce">
		<!-- 定义网页作者-->
	
		<meta http-equiv="refresh" content="30">
		<!-- 每30秒钟刷新当前页面-->	

		<title>我的第一个网页</title>
		<style type="text/css">
			body {background-color: pink}
			p {color: blue}
		</style>
	</head>

#### HTML样式-CSS

CSS是在HTML4开始使用的,是为了更好的渲染HTML元素而引入的。

CSS 可以通过以下方式添加到HTML中:

+ 内联样式 - 在HTML元素中使用"style" 属性
+ 内部样式表 - 在HTML文档头部head区域使用style元素来包含CSS
+ 外部引用 - 使用外部CSS文件

##### 内联样式

当特殊的样式需要应用到个别元素时，就可以使用内联样式。 使用内联样式的方法是在相关的标签中使用样式属性。样式属性可以包含任何 CSS 属性。

使用"style" 属性，改变段落的颜色和左外边距：

	<p style="color:white; background-color:grey; margin-left:20px;">这是一个设计过的段落。</p>
<p style="color:white; background-color:grey; margin-left:20px;">这是一个设计过的段落。</p>

##### 背景颜色

背景色属性（background-color）定义一个元素的背景颜色：

	<body style="background-color:yellow;">
	<h2 style="background-color:red;">这是一个标题</h2>
	<p style="background-color:green;">这是一个段落。</p>
	</body>


<p style="background-color:pink; color:white;">其实标题也可以这样</p>
<p style="background-color:green; color:white;">这是一个段落。</p>


##### 字体样式、颜色、大小

可以在style中使用font-family（字体），color（颜色），和font-size（字体大小）属性来定义字体的样式，可以不使用<font>标签。

	<h1 style="font-family:times new roman; font-size:30px;">This is a title</h1>
	<p style="font-family:arial;color:pink;font-size:20px;">This is a paragraph.</p>

<p style="font-family:times new roman; font-size:30px;">This should be a title.</p>
<p style="font-family:arial;color:pink;font-size:20px;">This is a paragraph.</p>

##### 文本对齐方式

文本对齐属性text-align（文字对齐）属性指定文本的水平与垂直对齐方式。

	<p style="text-align:center;">居中对齐的标题</p>

<p style="text-align:center;">居中对齐的标题</p>

#### 表格与列表

#####表格
+ 表格由table标签来定义
+ 表格的标题，由caption定义
+ 表格每一列的表头，由th定义
+ 每个表格均有若干行，由tr标签定义
+ 每行被分割为若干单元格，由td标签定义
+ 跨行或跨列的单元格（合并单元格），在th或者td下用colspan或者rowspan属性

表格示例：


	<table border="1">
		<caption>Table Example</caption>
		<tr>
			<th> </th>
			<th>header1</th>
			<th>header2</th>
			<th colspan="2">header3</th>
		</tr>
		<tr>
			<th rowspan="2"> row 1 </th>
			<td> row 1, cell 1 </td>
			<td> row 1, cell 2 </td>
			<td colspan="2" style="text-align:center;"> row, cell 3 </td>
		</tr>
		<tr>
			<td> row 2, cell 1 </td>
			<td> row 2, cell 2 </td>
			<td> row 2, cell 3 </td>
			<td> row 2, cell 4 </td>
	</table>


<table border="1">
<caption>Table Example</caption>
<tr>
<th> </th>
<th>header1</th>
<th>header2</th>
<th colspan="2">header3</th>
</tr>
<tr>
<th rowspan="2"> row 1 </th>
<td> row 1, cell 1 </td>
<td> row 1, cell 2 </td>
<td colspan="2" style="text-align:center;"> row, cell 3 </td>
</tr>
<tr>
<td> row 2, cell 1 </td>
<td> row 2, cell 2 </td>
<td> row 2, cell 3 </td>
<td> row 2, cell 4 </td>
</table>

#####列表

列表方面，有序列表用ol标签，无序列表用ul标签，列表元素用li标签。列表可以嵌套。

列表示例：

	<ol>
		<li>Monday</li>
		<li>Tuesday</li>
		<li>Wednesday</li>
	</ol>

	<ul>
		<li>coffee</li>
		<ol>
			<li>Starbucks</li>
			<li>Nestles</li>
		</ol>
		<li>milk</li>
		<li>bread</li>
		<li>milktea</li>
	</ul>


<ol>
<li>Monday</li>
<li>Tuesday</li>
<li>Wednesday</li>
</ol>

<ul>
<li>coffee</li>
<ol>
<li>Starbucks</li>
<li>Nestles</li>
</ol>
<li>milk</li>
<li>bread</li>
<li>milktea</li>
</ul>

#### HTML 布局

可以使用div元素添加布局，也可以用table。这里先学用div。

div 元素是用于分组 HTML 元素的块级元素。

	<div id="container" style="width:500px">

		<div id="header" style="background-color:blue; width:500px;">
			<h1 style="font-family:times new roman; color: white; margin-bottom:0;"> 网页标题 </h1>
		</div>

		<div id="menu" style="background-color:yellow; height:200px;width:100px; float:left;">
			<b style="font-family:times new roman;">Menu</b><br>
			Citi<br>
			HSBC<br>
			Morgan<br>
		</div>

		<div id='content' style="background-color:lightsalmon; height:200px;width:400px;float:left;">
			<p>这是一段内容<br>这又是一段内容</p>
		</div>

		<div id="footer" style="background-color: grey; width: 500px; text-align: center;">
			版权@Joyce </div>
		
</div>

<div id="container" style="width:500px">

<div id="header" style="background-color:blue; width:500px;">
<b style="font-family:times new roman; color: white; margin-bottom:0;"> 网页标题 </b>
</div>

<div id="menu" style="background-color:yellow; height:200px;width:100px; float:left;">
<b style="font-family:times new roman;">Menu</b><br>
Citi<br>
HSBC<br>
Morgan<br>
</div>

<div id='content' style="background-color:lightsalmon; height:200px;width:400px;float:left;">
<p>这是一段内容<br>这又是一段内容</p>
</div>

<div id="footer" style="background-color: grey; width: 500px; text-align: center;">
版权@Joyce </div>
</div>

<div align=left>

#### 表单和输入

表单是一个包含表单元素的区域。表单元素是允许用户在表单中输入内容,比如：文本域(textarea)、下拉列表、单选框(radio-buttons)、复选框(checkboxes)等等。

表单使用表单标签form来设置；输入元素用的标签是input

##### 文本域与密码字段

文本域通过input type="text"标签来设定，当用户要在表单中键入字母、数字等内容时，就会用到文本域。

密码字段通过标签input type="password"来定义。注意:密码字段字符不会明文显示，而是以星号或圆点替代。
	
	<form>
	First name: <input type="text" name="firstname"><br>
	Last name: <input type="text" name="lastname"><br>
	Password: <input type="password" name="pwd">
	</form>

<form>
First name: <input type="text" name="firstname"><br>
Last name: <input type="text" name="lastname"><br>
Password: <input type="password" name="pwd">
</form>

##### 单选按钮与复选框 

单选框用input type="radio"标签定义。复选框用input type="checkbox"定义。

用fieldset来加边框，用legend来加标题。checked="checked"表示预选。


	<form>
		<input type="radio" name="sex" value="male">Male<br>
		<input type="radio" name="sex" value="female">Famle<br>
	</form>

	<form>
	<fieldset>
		<legend>Vehicle for commute</legend>
		<input type="checkbox" name="vehicle" value="Bike">bike<br>
		<input type="checkbox" name="vehicle" value="car" checked="checked">car<br>
		<input type="checkbox" name="vehicle" value="ship">ship<br>
		<input type="checkbox" name="vehicle" value="plane">plane<br>
	</fieldset>
	</form>

<form>
<input type="radio" name="sex" value="male">Male<br>
<input type="radio" name="sex" value="female">Famle<br>
</form>


<form>
<fieldset>
<legend>Vehicle for commute</legend>
<input type="checkbox" name="vehicle" value="Bike">bike<br>
<input type="checkbox" name="vehicle" value="car">car<br>
<input type="checkbox" name="vehicle" value="ship">ship<br>
<input type="checkbox" name="vehicle" value="plane">plane<br>
</fieldset>
</form>

##### 提交按钮

提交按钮由input type="submit"定义。当用户单击确认按钮时，表单的内容会被传送到另一个文件。表单的动作属性定义了目的文件的文件名。由动作属性定义的这个文件通常会对接收到的输入数据进行相关的处理。

	<form name="input" action="html_form_action.php" method="get">
		username:<input type="text" name="user">
		<input type="submit" value="Submit">
	</form>

<form name="input" action="html_form_action.php" method="get">
username:<input type="text" name="user">
<input type="submit" value="Submit">
</form>

##### 下拉列表

用select定义下拉列表，备选选项用option，然后selected表示预选选项。

	<form>
		<legend>Select a car</legend>
		<select name="cars">
			<option value="volvo">Volvo</option>
			<option value="saab">Saab</option>
			<option value="fiat" selected>Fiat</option>
			<option value="audi">Audi</option>
		</select>
	</form>

<form>
<legend>Select a car</legend>
<select name="cars">
<option value="volvo">Volvo</option>
<option value="saab">Saab</option>
<option value="fiat" selected>Fiat</option>
<option value="audi">Audi</option>
</select>
</form>


#### 颜色

[参考网址：颜色](https://www.runoob.com/html/html-colornames.html)


#### 参考资料

后续还有添加音频、视频之类的。

[菜鸟教程](https://www.runoob.com/html/html-tutorial.html)