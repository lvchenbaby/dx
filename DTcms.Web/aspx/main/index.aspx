<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.index" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/11/28 10:39:18.
		本页面代码由DTcms模板引擎生成于 2015/11/28 10:39:18. 
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
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("<div class=\"language\">\r\n    <a href=\"#\"><img src=\"images/language1.gif\"/></a>\r\n    <a href=\"#\"><img src=\"images/language2.gif\"/></a>\r\n    <a href=\"#\"><img src=\"images/language3.gif\"/></a>\r\n</div>\r\n<div class=\"container\"></div>\r\n<div class=\"menu\">\r\n    <ul>\r\n        <li><a href=\"#\" class=\"current\">首页</a></li>\r\n        <li><a href=\"#\">政务公共</a></li>\r\n        <li><a href=\"#\">要闻动态</a></li>\r\n        <li><a href=\"#\">政策法规</a></li>\r\n        <li><a href=\"#\">监督举报</a></li>\r\n        <li><a href=\"#\">廉政清风</a></li>\r\n    </ul>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"border-top\">\r\n    <div class=\"content\">\r\n\r\n    </div>\r\n\r\n</div>\r\n<div class=\"black-bg\">\r\n    <div class=\"content\">\r\n        <h4>相关网站</h4>\r\n        <p>\r\n            <a href=\"#\">区政府办公室</a>\r\n            <a href=\"#\">发改委</a>\r\n            <a href=\"#\">教委科委</a>\r\n            <a href=\"#\">经信委</a>\r\n            <a href=\"#\">金融办</a>\r\n            <a href=\"#\">民委</a>\r\n            <a href=\"#\">监察局</a>\r\n            <a href=\"#\">民政局</a>\r\n            <a href=\"#\">司法局</a>\r\n            <a href=\"#\">财政局</a>\r\n            <a href=\"#\">人力社保局</a>\r\n            <a href=\"#\">环保局</a>\r\n            <a href=\"#\">住建委</a>\r\n            <a href=\"#\">市政市容委</a>\r\n            <a href=\"#\">交通局</a>\r\n            <a href=\"#\">农委</a>\r\n            <a href=\"#\">水务局</a>\r\n            <a href=\"#\">商务委</a>\r\n            <a href=\"#\">旅游委</a>\r\n            <a href=\"#\">文委</a>\r\n            <a href=\"#\">卫生局</a>\r\n            <a href=\"#\">人口计生委</a>\r\n            <a href=\"#\">审计局</a>\r\n            <a href=\"#\">外事办</a>\r\n            <a href=\"#\"> 国资委</a>\r\n            <a href=\"#\"> 安监局</a>\r\n            <a href=\"#\">体育局</a>\r\n            <a href=\"#\">统计局</a>\r\n            <a href=\"#\">园林绿化局</a>\r\n            <a href=\"#\">民防局</a>\r\n            <a href=\"#\">法制办</a>\r\n            <a href=\"#\">信访办</a>\r\n            <a href=\"#\">老龄委</a>\r\n            <a href=\"#\">城管局</a>\r\n            <a href=\"#\">行政服务中心</a>\r\n            <a href=\"#\">动物卫生监管局</a>\r\n            <a href=\"#\">社会办</a>\r\n            <a href=\"#\">北京电子商务中心区 </a>\r\n            <a href=\"#\">新区就业直通车网站</a>\r\n            <a href=\"#\"> 中国西瓜交易网</a>\r\n            <a href=\"#\"> 大兴区工业产品供求信息共享平台</a>\r\n            <a href=\"#\"> 瀛海精神家园网站</a>\r\n            <a href=\"#\"> 大兴区供暖管理中心</a>\r\n            <a href=\"#\">北京大兴西瓜节官方网站</a>\r\n            <a href=\"#\">大兴区职工服务中心</a>\r\n            <a href=\"#\">南海子公园 </a>\r\n            <a href=\"#\"> 大兴区学雷锋志愿者服务队 </a>\r\n            <a href=\"#\"> 北京京南物流基地</a>\r\n            <a href=\"#\"> 大兴区节水型社会建设网</a>\r\n            <a href=\"#\"> 大兴区妇女儿童活动中心 </a>  \r\n            <a href=\"#\"> 大兴区防火安全委员会</a>\r\n            <a href=\"#\"> 大兴社区卫生   </a>\r\n            <a href=\"#\"> 大兴区献血网</a>\r\n            <a href=\"#\"> 大兴区交通安全信息网   </a>\r\n            <a href=\"#\">礼贤民族敬老院</a>\r\n        </p>\r\n  </div>\r\n</div>\r\n<div class=\"footer\">\r\n    <div class=\"footer-link\">\r\n        <a href=\"#\">设为首页</a>&nbsp;<a href=\"#\">加入收藏</a>&nbsp;<a href=\"#\">意见反馈</a>&nbsp;<a href=\"#\">网站地图</a>&nbsp;<a href=\"#\">网站数据统计</a>\r\n    </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
