# NewsClient
&emsp;&emsp;&ensp;这个一个iOS 新闻客户端的UI模板，使用Swift进行构建，可以作为其他阅读类App的开发模型。提高你的开发效率和进度。<br/>
UI效果如下：<br/>
![Alt text](https://github.com/chenyufeng1991/NewsClient/raw/master/Screenshots/1.png)<br/><br/>
##1.UI说明
&emsp;&emsp;&ensp;该UI界面可以实现3个选项卡之间的切换，可以通过左右的滚动来切换，也可以通过点击上方的tab来切换，在不同的选项卡下可以显示不同的新闻列表。下方会显示按钮，根据不同的选项卡显示不同的进入页面的按钮，就能展现该新闻列表下更多的新闻。在一个页面中，可以通过使用滚动条来增加多个这样的新闻组，优点就是尽量能在一个页面中显示多种不同新闻的热点信息。<br/><br/>
![Alt text](https://github.com/chenyufeng1991/NewsClient/raw/master/Screenshots/2.png)<br/><br/>

##2.技术说明
&emsp;&emsp;&ensp;主要使用到的iOS控件就是SegmentedControl分段控件、TableView列表控件、ScrollView滚动条、Button按钮。实现方法就是把三个TableView放在可以横向滚动的滚动条中，三个TableView的高度同ScrollView的高度，三个TableView的宽度总和同ScrollView的宽度。这样就能在ScrollView控件中实现滑动切换列表的操作了。上面的SegmentedControl控件通过判断滚动条的当前页面位置，设置某个选项卡被选中。<br/><br/>
##3.开发建议
该设计界面可以用于多种信息的显示列表，提供热点浏览。方便快捷。<br/><br/>
##4.技术博客
我的个人技术博客：[http://blog.csdn.net/chenyufeng1991](http://blog.csdn.net/chenyufeng1991) 。欢迎大家访问！






