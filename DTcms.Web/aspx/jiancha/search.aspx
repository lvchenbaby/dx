<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.search" ValidateRequest="false" %>
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

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>站内搜索 - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" rel=\"stylesheet\" />\r\n<link href=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

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


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"section clearfix\">\r\n  <!--右边-->\r\n  <div class=\"list-right\">\r\n    <div class=\"sidebar-box\">\r\n      <div class=\"line30\"></div>\r\n      <h3>热门标签</h3>\r\n      <div class=\"tags-box\">\r\n        ");
	DataTable tagsList = get_article_tags(0, "is_red=1");

	foreach(DataRow dr in tagsList.Rows)
	{

	templateBuilder.Append("\r\n          <a href=\"");
	templateBuilder.Append(linkurl("search","?tags="+Utils.ObjectToStr(dr["title"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "<i>(" + Utils.ObjectToStr(dr["count"]) + ")</i></a>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </div>\r\n      \r\n      <div class=\"line20\"></div>\r\n      <h3>推荐资讯</h3>\r\n      <div class=\"focus-list\">\r\n        <ul>\r\n          ");
	DataTable redNews = get_article_list("news", 0, 4, "status=0 and is_red=1 and img_url<>''");

	foreach(DataRow dr in redNews.Rows)
	{

	templateBuilder.Append("\r\n          <li>\r\n            <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n              <b><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" /></b>\r\n              <span>" + Utils.ObjectToStr(dr["title"]) + "</span>\r\n            </a>\r\n          </li>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n      </div>\r\n      \r\n    </div>\r\n  </div>\r\n  <!--/右边-->\r\n  \r\n  <!--左边-->\r\n  <div class=\"list-auto\">\r\n    <!--取得一个DataTable-->\r\n    ");
	DataTable list = get_search_list(15, out totalcount);

	templateBuilder.Append("\r\n    <!--取得分页页码列表-->\r\n    ");
	if (tags!="")
	{

	 pagelist = get_page_link(15, page, totalcount, linkurl("search","?channel=" + channel + "&tags=" + Server.UrlEncode(tags) + "&page=__id__"));

	}
	else
	{

	 pagelist = get_page_link(15, page, totalcount, linkurl("search","?channel=" + channel + "&keyword=" + Server.UrlEncode(keyword) + "&page=__id__"));

	}	//end for if

	templateBuilder.Append("\r\n    <div class=\"ntitle\">\r\n      <h2><a>站内搜索</a></h2>\r\n      ");
	if (tags!="")
	{

	templateBuilder.Append("\r\n        <i>查询Tags标签： <b class=\"blue\">");
	templateBuilder.Append(Utils.ObjectToStr(tags));
	templateBuilder.Append("</b> ，共有 <b class=\"red\">");
	templateBuilder.Append(Utils.ObjectToStr(totalcount));
	templateBuilder.Append("</b> 条记录</i>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n        <i>搜索关健字： <b class=\"blue\">");
	templateBuilder.Append(Utils.ObjectToStr(keyword));
	templateBuilder.Append("</b> ，共有 <b class=\"red\">");
	templateBuilder.Append(Utils.ObjectToStr(totalcount));
	templateBuilder.Append("</b> 条记录</i>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </div>\r\n    <ul class=\"n-list\">\r\n      ");
	foreach(DataRow dr in list.Rows)
	{

	templateBuilder.Append("\r\n      <li>\r\n        <h2><a target=\"_blank\" href=\"" + Utils.ObjectToStr(dr["link_url"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></h2>\r\n        <div class=\"note\">\r\n          ");
	if (Utils.ObjectToStr(dr["img_url"])!="")
	{

	templateBuilder.Append("\r\n          <b><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" /></b>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n          <p>" + Utils.ObjectToStr(dr["remark"]) + "</p>\r\n          <div class=\"info\">\r\n            <span class=\"time\">" + Utils.ObjectToStr(dr["add_time"]) + "</span>\r\n            <span class=\"comm\"><script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_comment_count&id=" + Utils.ObjectToStr(dr["id"]) + "\"></");
	templateBuilder.Append("script>人评论</span>\r\n            <span class=\"view\"><script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_article_click&id=" + Utils.ObjectToStr(dr["id"]) + "\"></");
	templateBuilder.Append("script>次浏览</span>\r\n          </div>\r\n        </div>\r\n      </li>\r\n      ");
	}	//end for if

	if (totalcount==0)
	{

	templateBuilder.Append("\r\n      <div class=\"nodata\">很抱歉，目前尚未查找到符合条件的信息！</div>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </ul>\r\n    \r\n    <!--页码列表-->\r\n    <div class=\"page-box\">\r\n      <div class=\"digg\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div>\r\n    </div>\r\n    <!--/页码列表-->\r\n  </div>\r\n  <!--/左边-->\r\n\r\n</div>\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"border-top\">\r\n  <div class=\"content\">\r\n      <h4>园区部门</h4>\r\n    <p>\r\n      <a href=\"#\">党政办</a>\r\n      <a href=\"#\">  纪检监察科</a>\r\n      <a href=\"#\">组宣科</a>\r\n      <a href=\"#\">内审科</a>\r\n      <a href=\"#\">土地规划科</a>\r\n      <a href=\"#\">综治办</a>\r\n      <a href=\"#\">安监科</a>\r\n      <a href=\"#\">人力资源部</a>\r\n      <a href=\"#\">企业服务部</a>\r\n      <a href=\"#\">项目科</a>\r\n      <a href=\"#\"> 招商部</a>\r\n      <a href=\"#\">开发部</a>\r\n      <a href=\"#\">工程部</a>\r\n      <a href=\"#\">预算部</a>\r\n      <a href=\"#\">经营管理部</a>\r\n      <a href=\"#\">财务部</a>\r\n      <a href=\"#\">工会</a>\r\n      <a href=\"#\">团委</a>\r\n      <a href=\"#\"> 财政所</a>\r\n      <a href=\"#\">城管分队</a>\r\n      <a href=\"#\">统计所 </a>\r\n     </p>\r\n   </div>\r\n   \r\n</div>\r\n<div class=\"black-bg\">\r\n    <div class=\"content\">\r\n        <h4>相关网站</h4>\r\n        <p>\r\n            <a href=\"#\">区政府办公室</a>\r\n            <a href=\"#\">发改委</a>\r\n            <a href=\"#\">教委科委</a>\r\n            <a href=\"#\">经信委</a>\r\n            <a href=\"#\">金融办</a>\r\n            <a href=\"#\">民委</a>\r\n            <a href=\"#\">监察局</a>\r\n            <a href=\"#\">民政局</a>\r\n            <a href=\"#\">司法局</a>\r\n            <a href=\"#\">财政局</a>\r\n            <a href=\"#\">人力社保局</a>\r\n            <a href=\"#\">环保局</a>\r\n            <a href=\"#\">住建委</a>\r\n            <a href=\"#\">市政市容委</a>\r\n            <a href=\"#\">交通局</a>\r\n            <a href=\"#\">农委</a>\r\n            <a href=\"#\">水务局</a>\r\n            <a href=\"#\">商务委</a>\r\n            <a href=\"#\">旅游委</a>\r\n            <a href=\"#\">文委</a>\r\n            <a href=\"#\">卫生局</a>\r\n            <a href=\"#\">人口计生委</a>\r\n            <a href=\"#\">审计局</a>\r\n            <a href=\"#\">外事办</a>\r\n            <a href=\"#\"> 国资委</a>\r\n            <a href=\"#\"> 安监局</a>\r\n            <a href=\"#\">体育局</a>\r\n            <a href=\"#\">统计局</a>\r\n            <a href=\"#\">园林绿化局</a>\r\n            <a href=\"#\">民防局</a>\r\n            <a href=\"#\">法制办</a>\r\n            <a href=\"#\">信访办</a>\r\n            <a href=\"#\">老龄委</a>\r\n            <a href=\"#\">城管局</a>\r\n            <a href=\"#\">行政服务中心</a>\r\n            <a href=\"#\">动物卫生监管局</a>\r\n            <a href=\"#\">社会办</a>\r\n            <a href=\"#\">北京电子商务中心区 </a>\r\n            <a href=\"#\">新区就业直通车网站</a>\r\n            <a href=\"#\"> 中国西瓜交易网</a>\r\n            <a href=\"#\"> 大兴区工业产品供求信息共享平台</a>\r\n            <a href=\"#\"> 瀛海精神家园网站</a>\r\n            <a href=\"#\"> 大兴区供暖管理中心</a>\r\n            <a href=\"#\">北京大兴西瓜节官方网站</a>\r\n            <a href=\"#\">大兴区职工服务中心</a>\r\n            <a href=\"#\">南海子公园 </a>\r\n            <a href=\"#\"> 大兴区学雷锋志愿者服务队 </a>\r\n            <a href=\"#\"> 北京京南物流基地</a>\r\n            <a href=\"#\"> 大兴区节水型社会建设网</a>\r\n            <a href=\"#\"> 大兴区妇女儿童活动中心 </a>  \r\n            <a href=\"#\"> 大兴区防火安全委员会</a>\r\n            <a href=\"#\"> 大兴社区卫生   </a>\r\n            <a href=\"#\"> 大兴区献血网</a>\r\n            <a href=\"#\"> 大兴区交通安全信息网   </a>\r\n            <a href=\"#\">礼贤民族敬老院</a>\r\n        </p>\r\n  </div>\r\n</div>\r\n<div class=\"footer\">\r\n  <div class=\"footer-link\">\r\n     <a href=\"#\">设为首页</a>|\r\n     <a href=\"#\">加入收藏</a>|\r\n     <a href=\"#\">意见反馈</a>|\r\n     <a href=\"#\">网站地图</a>|\r\n     <a href=\"#\">网站数据统计</a>\r\n  </div>\r\n  <p>\r\n    大兴新媒体产业园区管理委员会  版权所有 - 京ICP备00005555号<br />\r\n大兴新媒体产业园区计算机信息中心  管理维护  <br />\r\nwebmaster@dxmedia.gov.cn<br />\r\n  </p>\r\n</div>\r\n<div class=\"weixin\">\r\n  <h4>大兴<br />新媒体产业基地<br />智慧园区</h4>\r\n  <div class=\"weixin-img\">\r\n    <img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/erweima.gif\" /><br />\r\n    微信公众账号 <br /><font color=\"#b9121b\" ><strong>sipacnc</strong></font>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
