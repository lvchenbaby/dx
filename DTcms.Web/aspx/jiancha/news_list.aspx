<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_list" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/11/29 18:20:25.
		本页面代码由DTcms模板引擎生成于 2015/11/29 18:20:25. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "news";
	const int pagesize = 10;

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
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n    $(function () {\r\n\r\n        /* 用按钮控制图片左右滚动 */\r\n        $(\".hotPic .JQ-slide\").Slide({\r\n            effect: \"scroolLoop\",\r\n            autoPlay: false,\r\n            speed: \"normal\",\r\n            timer: 3000,\r\n            steps: 1\r\n        });\r\n\r\n    });\r\n    </");
	templateBuilder.Append("script>\r\n\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("<div class=\"language\">\r\n    <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/language1.gif\"/></a>\r\n    <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/language2.gif\"/></a>\r\n    <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/language3.gif\"/></a>\r\n</div>\r\n<div class=\"container\"></div>\r\n<div class=\"menu\">\r\n    <ul>\r\n        <li><a href=\"/index.aspx\" class=\"\">首页</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("list_news",55));

	templateBuilder.Append("\">政务公开</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("list_news",56));

	templateBuilder.Append("\">要闻动态</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("list_news",57));

	templateBuilder.Append("\">政策法规</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("list_news",58));

	templateBuilder.Append("\">监督举报</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("list_news",60));

	templateBuilder.Append("\">廉政清风</a></li>\r\n    </ul>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n<div class=\"content\">\r\n    <div class=\"position\">\r\n    <a href=\"#\">首页</a> > <a href=\"#\">政策法规</a> > 国家法律法规\r\n  </div>  \r\n  <div class=\"list-con\">\r\n    <div class=\"leftside\">\r\n        ");
	if (model.parent_id==0)
	{

	templateBuilder.Append("\r\n      <h2>");
	templateBuilder.Append(get_category_title(category_id, "所有类别").ToString());

	templateBuilder.Append("</h2>\r\n\r\n        ");
	DataTable newsCList = get_category_child_list("jianchanews",category_id);

	int ncdr__loop__id=0;
	foreach(DataRow ncdr in newsCList.Rows)
	{
		ncdr__loop__id++;


	templateBuilder.Append("\r\n      <a href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(ncdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(ncdr["title"]) + "</a>\r\n      ");
	}	//end for if

	}
	else
	{

	templateBuilder.Append("\r\n        <h2>");
	templateBuilder.Append(get_category_title(model.parent_id, "所有类别").ToString());

	templateBuilder.Append("</h2>\r\n         ");
	DataTable newsCList = get_category_child_list("jianchanews",model.parent_id);

	int ncdr__loop__id=0;
	foreach(DataRow ncdr in newsCList.Rows)
	{
		ncdr__loop__id++;


	if (Utils.ObjectToStr(ncdr["id"])==Utils.ObjectToStr(category_id))
	{

	templateBuilder.Append("\r\n      <a class=\"listnow\" href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(ncdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(ncdr["title"]) + "</a>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(ncdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(ncdr["title"]) + "</a>\r\n      ");
	}	//end for if

	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n       \r\n        \r\n\r\n    </div>\r\n    <div class=\"rightside\">\r\n       <div class=\"r-title\">国家法律法规</div>\r\n       <ul>\r\n           ");
	DataTable newsList = get_article_list("jianchanews", category_id, pagesize, page, "status=0", out totalcount, out pagelist, "list_news", category_id, "__id__");

	templateBuilder.Append("<!--取得一个分页DataTable-->\r\n      ");
	foreach(DataRow dr in newsList.Rows)
	{

	templateBuilder.Append("\r\n      <li>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(dr["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("\r\n      </li>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n         \r\n       </ul>\r\n       <div class=\"page\">\r\n         <a href=\"#\" class=\"pre\"><</a>\r\n         <a href=\"#\">1</a>\r\n         <a href=\"#\">2</a>\r\n         <a href=\"#\" class=\"pageon\">3</a>\r\n         <a href=\"#\">4</a>\r\n         <a href=\"#\">5</a>...\r\n         <a href=\"#\">13</a>\r\n         <a href=\"#\" class=\"next\">></a>\r\n         \r\n       </div>\r\n\r\n        <div class=\"page-box\">\r\n            <div class=\"digg\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div>\r\n        </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"border-top\">\r\n  <div class=\"content\">\r\n      <h4>园区部门</h4>\r\n    <p>\r\n      <a href=\"#\">党政办</a>\r\n      <a href=\"#\">  纪检监察科</a>\r\n      <a href=\"#\">组宣科</a>\r\n      <a href=\"#\">内审科</a>\r\n      <a href=\"#\">土地规划科</a>\r\n      <a href=\"#\">综治办</a>\r\n      <a href=\"#\">安监科</a>\r\n      <a href=\"#\">人力资源部</a>\r\n      <a href=\"#\">企业服务部</a>\r\n      <a href=\"#\">项目科</a>\r\n      <a href=\"#\"> 招商部</a>\r\n      <a href=\"#\">开发部</a>\r\n      <a href=\"#\">工程部</a>\r\n      <a href=\"#\">预算部</a>\r\n      <a href=\"#\">经营管理部</a>\r\n      <a href=\"#\">财务部</a>\r\n      <a href=\"#\">工会</a>\r\n      <a href=\"#\">团委</a>\r\n      <a href=\"#\"> 财政所</a>\r\n      <a href=\"#\">城管分队</a>\r\n      <a href=\"#\">统计所 </a>\r\n     </p>\r\n   </div>\r\n   \r\n</div>\r\n<div class=\"black-bg\">\r\n    <div class=\"content\">\r\n        <h4>相关网站</h4>\r\n        <p>\r\n            <a href=\"#\">区政府办公室</a>\r\n            <a href=\"#\">发改委</a>\r\n            <a href=\"#\">教委科委</a>\r\n            <a href=\"#\">经信委</a>\r\n            <a href=\"#\">金融办</a>\r\n            <a href=\"#\">民委</a>\r\n            <a href=\"#\">监察局</a>\r\n            <a href=\"#\">民政局</a>\r\n            <a href=\"#\">司法局</a>\r\n            <a href=\"#\">财政局</a>\r\n            <a href=\"#\">人力社保局</a>\r\n            <a href=\"#\">环保局</a>\r\n            <a href=\"#\">住建委</a>\r\n            <a href=\"#\">市政市容委</a>\r\n            <a href=\"#\">交通局</a>\r\n            <a href=\"#\">农委</a>\r\n            <a href=\"#\">水务局</a>\r\n            <a href=\"#\">商务委</a>\r\n            <a href=\"#\">旅游委</a>\r\n            <a href=\"#\">文委</a>\r\n            <a href=\"#\">卫生局</a>\r\n            <a href=\"#\">人口计生委</a>\r\n            <a href=\"#\">审计局</a>\r\n            <a href=\"#\">外事办</a>\r\n            <a href=\"#\"> 国资委</a>\r\n            <a href=\"#\"> 安监局</a>\r\n            <a href=\"#\">体育局</a>\r\n            <a href=\"#\">统计局</a>\r\n            <a href=\"#\">园林绿化局</a>\r\n            <a href=\"#\">民防局</a>\r\n            <a href=\"#\">法制办</a>\r\n            <a href=\"#\">信访办</a>\r\n            <a href=\"#\">老龄委</a>\r\n            <a href=\"#\">城管局</a>\r\n            <a href=\"#\">行政服务中心</a>\r\n            <a href=\"#\">动物卫生监管局</a>\r\n            <a href=\"#\">社会办</a>\r\n            <a href=\"#\">北京电子商务中心区 </a>\r\n            <a href=\"#\">新区就业直通车网站</a>\r\n            <a href=\"#\"> 中国西瓜交易网</a>\r\n            <a href=\"#\"> 大兴区工业产品供求信息共享平台</a>\r\n            <a href=\"#\"> 瀛海精神家园网站</a>\r\n            <a href=\"#\"> 大兴区供暖管理中心</a>\r\n            <a href=\"#\">北京大兴西瓜节官方网站</a>\r\n            <a href=\"#\">大兴区职工服务中心</a>\r\n            <a href=\"#\">南海子公园 </a>\r\n            <a href=\"#\"> 大兴区学雷锋志愿者服务队 </a>\r\n            <a href=\"#\"> 北京京南物流基地</a>\r\n            <a href=\"#\"> 大兴区节水型社会建设网</a>\r\n            <a href=\"#\"> 大兴区妇女儿童活动中心 </a>  \r\n            <a href=\"#\"> 大兴区防火安全委员会</a>\r\n            <a href=\"#\"> 大兴社区卫生   </a>\r\n            <a href=\"#\"> 大兴区献血网</a>\r\n            <a href=\"#\"> 大兴区交通安全信息网   </a>\r\n            <a href=\"#\">礼贤民族敬老院</a>\r\n        </p>\r\n  </div>\r\n</div>\r\n<div class=\"footer\">\r\n  <div class=\"footer-link\">\r\n     <a href=\"#\">设为首页</a>|\r\n     <a href=\"#\">加入收藏</a>|\r\n     <a href=\"#\">意见反馈</a>|\r\n     <a href=\"#\">网站地图</a>|\r\n     <a href=\"#\">网站数据统计</a>\r\n  </div>\r\n  <p>\r\n    大兴新媒体产业园区管理委员会  版权所有 - 京ICP备00005555号<br />\r\n大兴新媒体产业园区计算机信息中心  管理维护  <br />\r\nwebmaster@dxmedia.gov.cn<br />\r\n  </p>\r\n</div>\r\n<div class=\"weixin\">\r\n  <h4>大兴<br />新媒体产业基地<br />智慧园区</h4>\r\n  <div class=\"weixin-img\">\r\n    <img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/erweima.gif\" /><br />\r\n    微信公众账号 <br /><font color=\"#b9121b\" ><strong>sipacnc</strong></font>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
