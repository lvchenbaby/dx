<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.index" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/11/28 16:53:48.
		本页面代码由DTcms模板引擎生成于 2015/11/28 16:53:48. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link href=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/css/lunbo.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/js/jquery-1.4.2.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/js/loopedslider.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/js/jquery.slide.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n    $(function (){\r\n	\r\n        /* 用按钮控制图片左右滚动 */\r\n        $(\".hotPic .JQ-slide\").Slide({\r\n            effect:\"scroolLoop\",\r\n            autoPlay:false,\r\n            speed:\"normal\",\r\n            timer:3000,\r\n            steps:1\r\n        });\r\n	\r\n    });\r\n    </");
	templateBuilder.Append("script>\r\n\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("<div class=\"language\">\r\n    <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/language1.gif\"/></a>\r\n    <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/language2.gif\"/></a>\r\n    <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/language3.gif\"/></a>\r\n</div>\r\n<div class=\"container\"></div>\r\n<div class=\"menu\">\r\n    <ul>\r\n        <li><a href=\"#\" class=\"/index.aspx\">首页</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("jianchanews"));

	templateBuilder.Append("\">政务公开</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("jianchanews"));

	templateBuilder.Append("\">要闻动态</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("jianchanews"));

	templateBuilder.Append("\">政策法规</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("jianchanews"));

	templateBuilder.Append("\">监督举报</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("jianchanews"));

	templateBuilder.Append("\">廉政清风</a></li>\r\n    </ul>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n    <div class=\"content\">\r\n  <div class=\"weather\">\r\n    <div class=\"fl\">\r\n      <iframe allowtransparency=\"true\" frameborder=\"0\" width=\"180\" height=\"36\" scrolling=\"no\" src=\"http://tianqi.2345.com/plugin/widget/index.htm?s=3&z=2&t=0&v=0&d=3&bd=0&k=&f=&q=1&e=1&a=1&c=54843&w=180&h=36&align=left\"></iframe>\r\n    </div>\r\n    <div class=\"fl\"> \r\n      <script type=\"text/javascript\">\r\n          var weekDayLabels = new Array(\"星期日\", \"星期一\", \"星期二\", \"星期三\", \"星期四\", \"星期五\", \"星期六\");\r\n          var now = new Date();\r\n          var year = now.getFullYear();\r\n          var month = now.getMonth() + 1;\r\n          var day = now.getDate();\r\n          var currentime = year + \"年\" + month + \"月\" + day + \"日 \" + weekDayLabels[now.getDay()];\r\n          document.write(currentime);\r\n                </");
	templateBuilder.Append("script> \r\n    </div>\r\n    <div class=\"fr search\">\r\n      <input name=\"\" type=\"text\" />\r\n      <button class=\"searchbtn\"></button>\r\n    </div>\r\n  </div>\r\n  <!--轮播图片-->\r\n  <script type=text/javascript>\r\n      $(function () {\r\n          $('#newsSlider').loopedSlider({\r\n              autoStart: 5000\r\n          });\r\n          $('.validate_Slider').loopedSlider({\r\n              autoStart: 5000\r\n          });\r\n          $(\"#enter_lab\").click(function () {\r\n              window.location = $(this).find(\"a\").attr(\"href\"); return false;\r\n          });\r\n      });\r\n</");
	templateBuilder.Append("script> \r\n  <div id=\"newsSlider\">\r\n   <div class=\"newspic\">\r\n    <ul class=\"slides\">\r\n      <li><a href=\" \" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/pic1.jpg\"></a>\r\n        <dl>\r\n          <dt><a href=\" \" target=\"_blank\">山脊赛车RR App Stores发... </a></dt>\r\n          <dd>在毫无过多征兆的情况下，Namco突然发布这款山脊赛车系列最新作登陆iPhone平台，在毫无过多征兆的情况下，Namco突然发布这款山脊赛车系列最新作登陆iPhone平台,iPhon... </dd>\r\n        </dl>\r\n      </li>\r\n      <li><a href=\" \" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/pic2.jpg\"></a>\r\n        <dl>\r\n          <dt><a href=\" \" target=\"_blank\">回首苹果2009,展望2010 </a></dt>\r\n          <dd>2009已经接近尾声, 回首2009年, 很多人认为今年是苹果历史上最成功的一年, 甚至可以认... </dd>\r\n        </dl>\r\n      </li>\r\n      <li><a href=\" \" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/pic3.jpg\"></a>\r\n        <dl>\r\n          <dt><a href=\" \" target=\"_blank\">Gameloft大作Nova 最新视...</a></dt>\r\n          <dd>Gameloft的第一人称射击游戏Nova可能是目前很多人都在期待的游戏. 记得9月份Gameloft... </dd>\r\n        </dl>\r\n      </li>\r\n      <li><a href=\" \" target=\"_blank\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/pic4.jpg\"></a>\r\n        <dl>\r\n          <dt><a href=\" \" target=\"_blank\">iPhone和它们，谁才是主角...</a></dt>\r\n          <dd>这是国外网站选出的为搭配iPhone和Mac的一些音频设备，很多都是目前的终极设备，到底... </dd>\r\n        </dl>\r\n      </li>\r\n    </ul>\r\n   </div>\r\n  \r\n  <ul class=\"pagination\">\r\n    <li><a href=\" #\">1</a> </li>\r\n    <li><a href=\" #\">2</a> </li>\r\n    <li><a href=\" #\">3</a> </li>\r\n    <li><a href=\" #\">4</a> </li>\r\n  </ul>\r\n</div>\r\n\r\n        <div class=\"imp-news\">\r\n    <div class=\"title-box\">\r\n      <div class=\"title\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/news-icon.png\" />廉政要闻</div>\r\n      <div class=\"more\"><a href=\"#\">更多</a></div>\r\n    </div>\r\n    <div class=\"news\">\r\n\r\n        <ul class=\"txt-list\">\r\n        ");
	DataTable newsList = get_article_list("jianchanews", 0, 10, "status=0");

	int newdr__loop__id=0;
	foreach(DataRow newdr in newsList.Rows)
	{
		newdr__loop__id++;


	templateBuilder.Append("\r\n        <li>\r\n          <a title=\"" + Utils.ObjectToStr(newdr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(newdr["title"]) + "</a>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(newdr["add_time"])).ToString("YYYY-MM-dd"));

	templateBuilder.Append("\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n\r\n  </div>\r\n        <div class=\"w980\"> \r\n    <!--通知公告-->\r\n    <div class=\"notice\">\r\n      <div class=\"title-box\">\r\n        <div class=\"title\">通知公告</div>\r\n        <div class=\"more\"><a href=\"#\">更多</a></div>\r\n      </div>\r\n      <div class=\"news\">\r\n        <ul>\r\n        ");
	DataTable newsList2 = get_article_list("jianchanews", 61, 10, "status=0");

	int newdr2__loop__id=0;
	foreach(DataRow newdr2 in newsList2.Rows)
	{
		newdr2__loop__id++;


	templateBuilder.Append("\r\n        <li>\r\n          <a title=\"" + Utils.ObjectToStr(newdr2["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newdr2["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(newdr2["title"]) + "</a>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(newdr2["add_time"])).ToString("YYYY-MM-dd"));

	templateBuilder.Append("\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n      </div>\r\n    </div>\r\n    <!--工作动态-->\r\n    <div class=\"dynamic\">\r\n      <div class=\"title-box\">\r\n        <div class=\"title\">工作动态</div>\r\n        <div class=\"more\"><a href=\"#\">更多</a></div>\r\n      </div>\r\n      <div class=\"news\">\r\n        <ul>\r\n          ");
	DataTable newsList3 = get_article_list("jianchanews", 59, 10, "status=0");

	int newdr3__loop__id=0;
	foreach(DataRow newdr3 in newsList3.Rows)
	{
		newdr3__loop__id++;


	templateBuilder.Append("\r\n        <li>\r\n          <a title=\"" + Utils.ObjectToStr(newdr3["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newdr3["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(newdr3["title"]) + "</a>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(newdr3["add_time"])).ToString("YYYY-MM-dd"));

	templateBuilder.Append("\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n      </div>\r\n    </div>\r\n    <!--信访举报-->\r\n    <div class=\"msg\">\r\n      <div class=\"title-box\">\r\n        <div class=\"msg-title\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/message-icon.png\" />信访举报</div>\r\n      </div>\r\n      <ul>\r\n        <li class=\"green\"><span><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/jbzn-icon.png\" /></span><a href=\"#\">举报指南</a></li>\r\n        <li class=\"red\"><span><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/wyjb-icon.png\" /></span><a href=\"#\">我要举报</a></li>\r\n        <li class=\"orange\"><span><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/jbcx-icon.png\" /></span><a href=\"#\">举报查询</a></li>\r\n      </ul>\r\n      <p>举报电话：010-99553386</p>\r\n    </div>\r\n\r\n\r\n            <div class=\"zhuanti\"> <img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/zhuanti1.jpg\" /> </div>\r\n  <!--互动交流-->\r\n  <div class=\"hudongjiaoliu\">\r\n    <div class=\"title-box\">\r\n      <div class=\"title\">互动交流</div>\r\n      <div class=\"more\"><a href=\"#\">更多</a></div>\r\n    </div>\r\n    <div class=\"hdjl-hot\">\r\n      <div class=\"hotimg\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/hdjl-img.jpg\" /></div>\r\n      <div class=\"hottext\">\r\n        <h2><a href=\"#\">中央纪委委员、贵州省委常委、省纪委书记宋璇...</a></h2>\r\n        <p><a href=\"#\">宋璇涛：第三个方面解决了原来办不成案的问题；第四个也解决了真正意义上监督同级党委的问题。民生特派组长是我们县里系统纪工委主任兼任，那么这个乡镇。我们贵州去年是2400多个亿惠民资金，执行党的路线方针政策连惠民资金都不能落实到位的话，其他的恐怕...\r\n          就是一句空话。所以说，纪检监察工作... </a> </p>\r\n      </div>\r\n    </div>\r\n    <div class=\"news hdjl-list\">\r\n      <ul>\r\n         ");
	DataTable newsList4 = get_article_list("jianchanews", 62, 3, "status=0");

	int newdr4__loop__id=0;
	foreach(DataRow newdr4 in newsList4.Rows)
	{
		newdr4__loop__id++;


	templateBuilder.Append("\r\n        <li>\r\n          <a title=\"" + Utils.ObjectToStr(newdr4["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newdr4["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(newdr4["title"]) + "</a>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(newdr4["add_time"])).ToString("YYYY-MM-dd"));

	templateBuilder.Append("\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n    <div class=\"news hdjl-list noborder\">\r\n      <ul>\r\n        ");
	DataTable newsList5 = get_article_list("jianchanews", 62, 3, "status=0");

	int newdr5__loop__id=0;
	foreach(DataRow newdr5 in newsList5.Rows)
	{
		newdr5__loop__id++;


	templateBuilder.Append("\r\n        <li>\r\n          <a title=\"" + Utils.ObjectToStr(newdr5["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newdr5["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(newdr5["title"]) + "</a>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(newdr5["add_time"])).ToString("YYYY-MM-dd"));

	templateBuilder.Append("\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n  </div>\r\n  <!--理论思考-->\r\n  <div class=\"lilunsikao\">\r\n    <div class=\"title-box\">\r\n      <div class=\"title\">理论思考</div>\r\n      <div class=\"more\"><a href=\"#\">更多</a></div>\r\n    </div>\r\n    <div class=\"news\">\r\n      <ul>\r\n        ");
	DataTable newsList6 = get_article_list("jianchanews", 62, 3, "status=0");

	int newdr6__loop__id=0;
	foreach(DataRow newdr6 in newsList6.Rows)
	{
		newdr6__loop__id++;


	templateBuilder.Append("\r\n        <li>\r\n          <a title=\"" + Utils.ObjectToStr(newdr6["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newdr6["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(newdr6["title"]) + "</a>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(newdr6["add_time"])).ToString("YYYY-MM-dd"));

	templateBuilder.Append("\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n  </div>\r\n  <!--廉政先锋-->\r\n  <div class=\"fl third\">\r\n    <div class=\"title-box\">\r\n      <div class=\"title\">廉政先锋</div>\r\n      <div class=\"more\"><a href=\"#\">更多</a></div>\r\n    </div>\r\n    <div class=\"pioneer\">\r\n      <img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/lzxf-img.jpg\" />\r\n      <a href=\"#\">这里是主题字段</a>\r\n    </div>\r\n    <div class=\"news\">\r\n      <ul>\r\n        ");
	DataTable newsList7 = get_article_list("jianchanews", 62, 3, "status=0");

	int newdr7__loop__id=0;
	foreach(DataRow newdr7 in newsList7.Rows)
	{
		newdr7__loop__id++;


	templateBuilder.Append("\r\n        <li>\r\n          <a title=\"" + Utils.ObjectToStr(newdr7["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newdr7["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(newdr7["title"]) + "</a>\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n  </div>\r\n  <!--政策法规-->\r\n  <div class=\"fl third nomargin\">\r\n    <div class=\"title-box\">\r\n      <div class=\"title\">政策法规</div>\r\n      <div class=\"more\"><a href=\"#\">更多</a></div>\r\n    </div>\r\n    <div class=\"redline\"></div>\r\n    <div class=\"news \">\r\n      <ul>\r\n        ");
	DataTable newsList8 = get_article_list("jianchanews", 62, 3, "status=0");

	int newdr8__loop__id=0;
	foreach(DataRow newdr8 in newsList8.Rows)
	{
		newdr8__loop__id++;


	templateBuilder.Append("\r\n        <li>\r\n          <a title=\"" + Utils.ObjectToStr(newdr8["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newdr8["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(newdr8["title"]) + "</a>\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n  </div>\r\n  <!--违纪曝光-->\r\n  <div class=\"fr third nomargin\">\r\n    <div class=\"title-box\">\r\n      <div class=\"title\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/wjbg-icon.png\" />违纪曝光</div>\r\n      <div class=\"more\"><a href=\"#\">更多</a></div>\r\n    </div>\r\n    <div class=\"hotPic\">\r\n		<div class=\"JQ-slide\">\r\n			<div class=\"JQ-slide-nav\"><a class=\"prev\" href=\"javascript:void(0);\">&#8249;</a><a class=\"next\" href=\"javascript:void(0);\">&#8250;</a></div>\r\n			<div class=\"wrap\">\r\n				<ul class=\"JQ-slide-content imgList\">\r\n					<li>\r\n						<a href=\"#\" class=\"img\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/vedio-img.jpg\"  alt=\"1111\" /></a>\r\n						<a href=\"#\" class=\"txt\">用jquery特效制作图片金字塔式放大缩小展示</a>\r\n					</li>\r\n					<li>\r\n						<a href=\"#\" class=\"img\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/vedio-img2.jpg\"  alt=\"1111\" /></a>\r\n						<a href=\"#\" class=\"txt\">jquery特效制作 slide 图片窗帘式滚动</a>\r\n					</li>\r\n					<li>\r\n						<a href=\"#\" class=\"img\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/pic1.jpg\" /></a>\r\n						<a href=\"#\" class=\"txt\">仿苹果视网膜效应的jQuery和CSS</a>\r\n					</li>\r\n					<li>\r\n						<a href=\"#\" class=\"img\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/pic2.jpg\" /></a>\r\n						<a href=\"#\" class=\"txt\">斯莱德奥特提示使用jQuery和CSS3</a>\r\n					</li>\r\n					<li>\r\n						<a href=\"#\" class=\"img\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/pic3.jpg\" /></a>\r\n						<a href=\"#\" class=\"txt\">用jquery特效制作图片金字塔式放大缩小展示</a>\r\n					</li>\r\n					<li>\r\n						<a href=\"#\" class=\"img\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/pic4.jpg\" /></a>\r\n						<a href=\"#\" class=\"txt\">jquery特效制作 slide 图片窗帘式滚动</a>\r\n					</li>\r\n					\r\n				</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n    <div class=\"news break-rule-list\">\r\n      <ul>\r\n        <li><a href=\"#\">切实保持和增强政治性先进性群众性 开创新形行行行行行行行行行 </a></li>\r\n        <li><a href=\"#\">切实保持和增强政治性先进性群众性 开创新形行行行行行行行行行 </a></li>\r\n        <li><a href=\"#\">切实保持和增强政治性先进性群众性 开创新形行行行行行行行行行 </a></li>\r\n        <li><a href=\"#\">切实保持和增强政治性先进性群众性 开创新形行行行行行行行行行 </a></li>\r\n        <li><a href=\"#\">切实保持和增强政治性先进性群众性 开创新形行行行行行行行行行 </a></li>\r\n        <li><a href=\"#\">切实保持和增强政治性先进性群众性 开创新形行行行行行行行行行 </a></li>\r\n        <li><a href=\"#\">切实保持和增强政治性先进性群众性 开创新形行行行行行行行行行 </a></li>\r\n      </ul>\r\n    </div>\r\n  </div>\r\n  <!--快捷入口-->\r\n  <script type=\"text/javascript\">\r\n\r\n      function scrollDoor() {\r\n      }\r\n      scrollDoor.prototype = {\r\n          sd: function (menus, divs, openClass, closeClass) {\r\n              var _this = this;\r\n              if (menus.length != divs.length) {\r\n                  alert(\"菜单层数量和内容层数量不一样!\");\r\n                  return false;\r\n              }\r\n              for (var i = 0 ; i < menus.length ; i++) {\r\n                  _this.$(menus[i]).value = i;\r\n                  _this.$(menus[i]).onclick = function () {\r\n\r\n                      for (var j = 0 ; j < menus.length ; j++) {\r\n                          _this.$(menus[j]).className = closeClass;\r\n                          _this.$(divs[j]).style.display = \"none\";\r\n                      }\r\n                      _this.$(menus[this.value]).className = openClass;\r\n                      _this.$(divs[this.value]).style.display = \"block\";\r\n                  }\r\n              }\r\n          },\r\n          $: function (oid) {\r\n              if (typeof (oid) == \"string\")\r\n                  return document.getElementById(oid);\r\n              return oid;\r\n          }\r\n      }\r\n      window.onload = function () {\r\n          var SDmodel = new scrollDoor();\r\n          SDmodel.sd([\"m01\", \"m02\", \"m03\"], [\"c01\", \"c02\", \"c03\"], \"sd01\", \"sd02\");\r\n          SDmodel.sd([\"mm01\", \"mm02\", \"mm03\"], [\"cc01\", \"cc02\", \"cc03\"], \"sd03\", \"sd02\");\r\n      }\r\n</");
	templateBuilder.Append("script>\r\n  <div class=\"tabbox\" >\r\n     <div class=\"red-title-box\"><div class=\"red-title\">快捷入口</div></div>\r\n     <div class=\"preview\">\r\n        <div class=\"scrollUl\">\r\n			<ul>\r\n				<li class=\"sd01\" id=\"m01\">廉政教育</li>\r\n				<li class=\"sd02\" id=\"m02\">问卷调查</li>\r\n				<li class=\"sd02\" id=\"m03\">网址导航</li>\r\n			</ul>\r\n        </div>\r\n			<div class=\"cont\">\r\n				<div id=\"c01\">\r\n					<a href=\"#\">以案说纪</a>\r\n                    <a href=\"#\">廉政文艺</a>\r\n                    <a href=\"#\">廉史博览</a>\r\n                    <a href=\"#\">廉政书籍</a>\r\n                    <a href=\"#\">法规释义</a>\r\n                    \r\n				</div>\r\n				<div id=\"c02\" class=\"hidden\">\r\n					<a href=\"#\">廉政文艺</a>\r\n                    <a href=\"#\">廉政文艺</a>\r\n                    <a href=\"#\">廉政文艺</a>\r\n                    <a href=\"#\">廉政文艺</a>\r\n                    <a href=\"#\">廉政文艺</a>\r\n				</div>\r\n				<div id=\"c03\" class=\"hidden\">\r\n					<a href=\"#\">廉史博览</a>\r\n                    <a href=\"#\">廉史博览</a>\r\n                    <a href=\"#\">廉史博览</a>\r\n                    <a href=\"#\">廉史博览</a>\r\n                    <a href=\"#\">廉史博览</a>\r\n                    <a href=\"#\">廉史博览</a>\r\n				</div>\r\n			</div>\r\n	</div>\r\n  </div>\r\n  <div class=\"tabbox\">\r\n     <div class=\"yellow-title-box\"><div class=\"yellow-title\">政务公开</div></div>\r\n     <div class=\"preview\">\r\n        <div class=\"scrollUl\">\r\n			<ul>\r\n				<li class=\"sd03\" id=\"mm01\">政府信息公开</li>\r\n				<li class=\"sd02\" id=\"mm02\">依申请公开</li>\r\n				<li class=\"sd02\" id=\"mm03\">公开保</li>\r\n			</ul>\r\n        </div>\r\n			<div class=\"cont2\"> \r\n				<div id=\"cc01\">\r\n					<a href=\"#\">领导简历</a>\r\n                    <a href=\"#\">政府公文</a>\r\n                    <a href=\"#\">权力公开</a>\r\n                    <a href=\"#\">发展规划</a>\r\n                    <a href=\"#\">重点工作</a>\r\n                    <a href=\"#\">人事信息</a>\r\n                    <a href=\"#\">统计数据</a>\r\n                    <a href=\"#\">应急管理</a>\r\n                    <a href=\"#\">行政收费</a>\r\n                    <a href=\"#\">部门信息</a>\r\n                    <a href=\"#\">更多公开内容</a>\r\n                    \r\n				</div>\r\n				<div id=\"cc02\" class=\"hidden\">\r\n					<a href=\"#\">廉政文艺</a>\r\n                    <a href=\"#\">廉政文艺</a>\r\n                    <a href=\"#\">廉政文艺</a>\r\n                    <a href=\"#\">廉政文艺</a>\r\n                    <a href=\"#\">廉政文艺</a>\r\n				</div>\r\n				<div id=\"cc03\" class=\"hidden\">\r\n					<a href=\"#\">廉史博览</a>\r\n                    <a href=\"#\">廉史博览</a>\r\n                    <a href=\"#\">廉史博览</a>\r\n                    <a href=\"#\">廉史博览</a>\r\n                    <a href=\"#\">廉史博览</a>\r\n                    <a href=\"#\">廉史博览</a>\r\n				</div>\r\n			</div>\r\n	</div>\r\n  </div>\r\n  <div class=\"btnbox\">\r\n     <b><a href=\"#\">发布通知</a></b>\r\n     <b><a href=\"#\">区政府折子工作</a></b>\r\n     <b><a href=\"#\">园区建设</a></b>\r\n     <b><a href=\"#\">自身建设</a></b>\r\n     <b><a href=\"#\">环境巡查日报</a></b>\r\n     <div class=\"bigbutton\">\r\n       <span class=\"fl\">\r\n         <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/yqgw-icon.png\" /><h4>园区官网</h4></a>\r\n       </span>\r\n       <span class=\"fr\">\r\n         <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/ldxx-icon.png\" /><h4>领导信箱</h4></a>\r\n       </span>\r\n     </div>\r\n  </div>\r\n  <div class=\"zhuanti\">\r\n    <img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/zhuanti2.jpg\" />\r\n  </div>\r\n</div>\r\n\r\n\r\n\r\n  </div>\r\n\r\n\r\n\r\n        </div>\r\n\r\n\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"border-top\">\r\n  <div class=\"content\">\r\n      <h4>园区部门</h4>\r\n    <p>\r\n      <a href=\"#\">党政办</a>\r\n      <a href=\"#\">  纪检监察科</a>\r\n      <a href=\"#\">组宣科</a>\r\n      <a href=\"#\">内审科</a>\r\n      <a href=\"#\">土地规划科</a>\r\n      <a href=\"#\">综治办</a>\r\n      <a href=\"#\">安监科</a>\r\n      <a href=\"#\">人力资源部</a>\r\n      <a href=\"#\">企业服务部</a>\r\n      <a href=\"#\">项目科</a>\r\n      <a href=\"#\"> 招商部</a>\r\n      <a href=\"#\">开发部</a>\r\n      <a href=\"#\">工程部</a>\r\n      <a href=\"#\">预算部</a>\r\n      <a href=\"#\">经营管理部</a>\r\n      <a href=\"#\">财务部</a>\r\n      <a href=\"#\">工会</a>\r\n      <a href=\"#\">团委</a>\r\n      <a href=\"#\"> 财政所</a>\r\n      <a href=\"#\">城管分队</a>\r\n      <a href=\"#\">统计所 </a>\r\n     </p>\r\n   </div>\r\n   \r\n</div>\r\n<div class=\"black-bg\">\r\n    <div class=\"content\">\r\n        <h4>相关网站</h4>\r\n        <p>\r\n            <a href=\"#\">区政府办公室</a>\r\n            <a href=\"#\">发改委</a>\r\n            <a href=\"#\">教委科委</a>\r\n            <a href=\"#\">经信委</a>\r\n            <a href=\"#\">金融办</a>\r\n            <a href=\"#\">民委</a>\r\n            <a href=\"#\">监察局</a>\r\n            <a href=\"#\">民政局</a>\r\n            <a href=\"#\">司法局</a>\r\n            <a href=\"#\">财政局</a>\r\n            <a href=\"#\">人力社保局</a>\r\n            <a href=\"#\">环保局</a>\r\n            <a href=\"#\">住建委</a>\r\n            <a href=\"#\">市政市容委</a>\r\n            <a href=\"#\">交通局</a>\r\n            <a href=\"#\">农委</a>\r\n            <a href=\"#\">水务局</a>\r\n            <a href=\"#\">商务委</a>\r\n            <a href=\"#\">旅游委</a>\r\n            <a href=\"#\">文委</a>\r\n            <a href=\"#\">卫生局</a>\r\n            <a href=\"#\">人口计生委</a>\r\n            <a href=\"#\">审计局</a>\r\n            <a href=\"#\">外事办</a>\r\n            <a href=\"#\"> 国资委</a>\r\n            <a href=\"#\"> 安监局</a>\r\n            <a href=\"#\">体育局</a>\r\n            <a href=\"#\">统计局</a>\r\n            <a href=\"#\">园林绿化局</a>\r\n            <a href=\"#\">民防局</a>\r\n            <a href=\"#\">法制办</a>\r\n            <a href=\"#\">信访办</a>\r\n            <a href=\"#\">老龄委</a>\r\n            <a href=\"#\">城管局</a>\r\n            <a href=\"#\">行政服务中心</a>\r\n            <a href=\"#\">动物卫生监管局</a>\r\n            <a href=\"#\">社会办</a>\r\n            <a href=\"#\">北京电子商务中心区 </a>\r\n            <a href=\"#\">新区就业直通车网站</a>\r\n            <a href=\"#\"> 中国西瓜交易网</a>\r\n            <a href=\"#\"> 大兴区工业产品供求信息共享平台</a>\r\n            <a href=\"#\"> 瀛海精神家园网站</a>\r\n            <a href=\"#\"> 大兴区供暖管理中心</a>\r\n            <a href=\"#\">北京大兴西瓜节官方网站</a>\r\n            <a href=\"#\">大兴区职工服务中心</a>\r\n            <a href=\"#\">南海子公园 </a>\r\n            <a href=\"#\"> 大兴区学雷锋志愿者服务队 </a>\r\n            <a href=\"#\"> 北京京南物流基地</a>\r\n            <a href=\"#\"> 大兴区节水型社会建设网</a>\r\n            <a href=\"#\"> 大兴区妇女儿童活动中心 </a>  \r\n            <a href=\"#\"> 大兴区防火安全委员会</a>\r\n            <a href=\"#\"> 大兴社区卫生   </a>\r\n            <a href=\"#\"> 大兴区献血网</a>\r\n            <a href=\"#\"> 大兴区交通安全信息网   </a>\r\n            <a href=\"#\">礼贤民族敬老院</a>\r\n        </p>\r\n  </div>\r\n</div>\r\n<div class=\"footer\">\r\n  <div class=\"footer-link\">\r\n     <a href=\"#\">设为首页</a>|\r\n     <a href=\"#\">加入收藏</a>|\r\n     <a href=\"#\">意见反馈</a>|\r\n     <a href=\"#\">网站地图</a>|\r\n     <a href=\"#\">网站数据统计</a>\r\n  </div>\r\n  <p>\r\n    大兴新媒体产业园区管理委员会  版权所有 - 京ICP备00005555号<br />\r\n大兴新媒体产业园区计算机信息中心  管理维护  <br />\r\nwebmaster@dxmedia.gov.cn<br />\r\n  </p>\r\n</div>\r\n<div class=\"weixin\">\r\n  <h4>大兴<br />新媒体产业基地<br />智慧园区</h4>\r\n  <div class=\"weixin-img\">\r\n    <img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/erweima.gif\" /><br />\r\n    微信公众账号 <br /><font color=\"#b9121b\" ><strong>sipacnc</strong></font>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
