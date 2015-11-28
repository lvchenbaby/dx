<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_show" ValidateRequest="false" %>
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
	const string channel = "news";

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
	string category_title = get_category_title(model.category_id,"新闻资讯");

	templateBuilder.Append("\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("\" name=\"keywords\" />\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\" name=\"description\" />\r\n<link href=\"");
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


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"section clearfix\">\r\n  <!--右边-->\r\n  <div class=\"list-right\">\r\n    <div class=\"sidebar-box\">\r\n      <div class=\"line30\"></div>\r\n      <h3>资讯类别</h3>\r\n      <ul class=\"navbar\">\r\n        ");
	DataTable categoryList1 = get_category_child_list(channel, 0);

	foreach(DataRow cdr1 in categoryList1.Rows)
	{

	templateBuilder.Append("\r\n        <li>\r\n          <h4><a href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(cdr1["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr1["title"]) + "</a></h4>\r\n          <p>\r\n            ");
	DataTable categoryList2 = get_category_child_list(channel, Utils.StrToInt(Utils.ObjectToStr(cdr1["id"]), 0));

	foreach(DataRow cdr2 in categoryList2.Rows)
	{

	if (Utils.StrToInt(Utils.ObjectToStr(cdr2["id"]), 0)==model.category_id)
	{

	templateBuilder.Append("\r\n            <a href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(cdr2["id"])));

	templateBuilder.Append("\" class=\"selected\">" + Utils.ObjectToStr(cdr2["title"]) + "</a>\r\n            ");
	}
	else
	{

	templateBuilder.Append("\r\n            <a href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(cdr2["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr2["title"]) + "</a>\r\n            ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n          </p>\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n      <div class=\"line20\"></div>\r\n      <h3>推荐资讯</h3>\r\n      <div class=\"focus-list\">\r\n        <ul>\r\n          ");
	DataTable redNews = get_article_list(channel, 0, 4, "status=0 and is_red=1 and img_url<>''");

	foreach(DataRow dr in redNews.Rows)
	{

	templateBuilder.Append("\r\n          <li>\r\n            <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n              <b><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" /></b>\r\n              <span>" + Utils.ObjectToStr(dr["title"]) + "</span>\r\n            </a>\r\n          </li>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n      </div>\r\n      <div class=\"line10\"></div>\r\n      <h3>人气排行</h3>\r\n      <ul class=\"rank-list\">\r\n        ");
	DataTable hotNews = get_article_list(channel, 0, 10, "status=0", "click desc,id desc");

	int hotdr__loop__id=0;
	foreach(DataRow hotdr in hotNews.Rows)
	{
		hotdr__loop__id++;


	if (hotdr__loop__id==1)
	{

	templateBuilder.Append("\r\n        <li class=\"active\">\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n        <li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n          <span>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(hotdr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("</span>\r\n          <i class=\"num\">");
	templateBuilder.Append(hotdr__loop__id.ToString());

	templateBuilder.Append("</i><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(hotdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(hotdr["title"]) + "</a>\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n  </div>\r\n  <!--/右边-->\r\n  \r\n  <!--左边-->\r\n  <div class=\"list-auto\">\r\n    \r\n    <div class=\"meta\">\r\n      <h1>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</h1>\r\n      <p class=\"meta-info\">\r\n        <span class=\"time\">");
	templateBuilder.Append(Utils.ObjectToStr(model.add_time));
	templateBuilder.Append("</span>\r\n        <span class=\"comm\"><script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_comment_count&id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\"></");
	templateBuilder.Append("script>人评论</span>\r\n        <span class=\"view\"><script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_article_click&id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("&click=1\"></");
	templateBuilder.Append("script>次浏览</span>\r\n        分类：");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append("\r\n      </p>\r\n    </div>\r\n    \r\n    <div class=\"entry\">\r\n      ");
	templateBuilder.Append(Utils.ObjectToStr(model.content));
	templateBuilder.Append("\r\n    </div>\r\n    \r\n    <!--分享-->\r\n    ");



	templateBuilder.Append("\r\n    <!--/分享-->\r\n    <div class=\"line15\"></div>\r\n    \r\n    <!--上下篇-->\r\n    <div class=\"next-prev-single\">\r\n      <p class=\"prev\">上一篇：");
	templateBuilder.Append(get_prevandnext_article("news_show", -1, "没有了", 0).ToString());

	templateBuilder.Append("</p>\r\n	  <p class=\"next\">下一篇：");
	templateBuilder.Append(get_prevandnext_article("news_show", 1, "没有了", 0).ToString());

	templateBuilder.Append("</p>\r\n    </div>\r\n    <!--/上下篇-->\r\n    \r\n    <div class=\"line15\"></div>\r\n    <!--相关推荐-->\r\n    <h2 class=\"base-tit\">\r\n      <span>相关资讯</span>\r\n    </h2>\r\n    <div class=\"rel-list\">\r\n      <ul>\r\n        ");
	DataTable relNews = get_article_list(channel, model.category_id, 4, "is_red=1 and img_url<>'' and id<>"+model.id);

	foreach(DataRow dr in relNews.Rows)
	{

	templateBuilder.Append("\r\n        <li>\r\n          <div class=\"img-box\">\r\n            <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n              <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n            </a>\r\n          </div>\r\n          <div class=\"info\">\r\n            <h3><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></h3>\r\n            <p>" + Utils.ObjectToStr(dr["zhaiyao"]) + "</p>\r\n            <span>" + Utils.ObjectToStr(dr["add_time"]) + "</span>\r\n          </div>\r\n        </li>\r\n        ");
	}	//end for if

	if (relNews.Rows.Count<1)
	{

	templateBuilder.Append("\r\n        <div class=\"nodata\">暂无相关的资讯...</div>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n    <!--/相关推荐-->\r\n    <div class=\"clear\"></div>\r\n    \r\n    <!--用户评论-->\r\n    ");
	if (model.is_msg==1)
	{

	templateBuilder.Append("\r\n    <h2 class=\"base-tit\">\r\n      <i>共有<b><script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_comment_count&id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\"></");
	templateBuilder.Append("script></b>访客发表了评论</i>\r\n      <span>网友评论</span>\r\n    </h2>\r\n    ");



	}	//end for if

	templateBuilder.Append("\r\n    <!--用户评论-->\r\n    \r\n  </div>\r\n  <!--/左边-->\r\n  \r\n</div>\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"border-top\">\r\n  <div class=\"content\">\r\n      <h4>园区部门</h4>\r\n    <p>\r\n      <a href=\"#\">党政办</a>\r\n      <a href=\"#\">  纪检监察科</a>\r\n      <a href=\"#\">组宣科</a>\r\n      <a href=\"#\">内审科</a>\r\n      <a href=\"#\">土地规划科</a>\r\n      <a href=\"#\">综治办</a>\r\n      <a href=\"#\">安监科</a>\r\n      <a href=\"#\">人力资源部</a>\r\n      <a href=\"#\">企业服务部</a>\r\n      <a href=\"#\">项目科</a>\r\n      <a href=\"#\"> 招商部</a>\r\n      <a href=\"#\">开发部</a>\r\n      <a href=\"#\">工程部</a>\r\n      <a href=\"#\">预算部</a>\r\n      <a href=\"#\">经营管理部</a>\r\n      <a href=\"#\">财务部</a>\r\n      <a href=\"#\">工会</a>\r\n      <a href=\"#\">团委</a>\r\n      <a href=\"#\"> 财政所</a>\r\n      <a href=\"#\">城管分队</a>\r\n      <a href=\"#\">统计所 </a>\r\n     </p>\r\n   </div>\r\n   \r\n</div>\r\n<div class=\"black-bg\">\r\n    <div class=\"content\">\r\n        <h4>相关网站</h4>\r\n        <p>\r\n            <a href=\"#\">区政府办公室</a>\r\n            <a href=\"#\">发改委</a>\r\n            <a href=\"#\">教委科委</a>\r\n            <a href=\"#\">经信委</a>\r\n            <a href=\"#\">金融办</a>\r\n            <a href=\"#\">民委</a>\r\n            <a href=\"#\">监察局</a>\r\n            <a href=\"#\">民政局</a>\r\n            <a href=\"#\">司法局</a>\r\n            <a href=\"#\">财政局</a>\r\n            <a href=\"#\">人力社保局</a>\r\n            <a href=\"#\">环保局</a>\r\n            <a href=\"#\">住建委</a>\r\n            <a href=\"#\">市政市容委</a>\r\n            <a href=\"#\">交通局</a>\r\n            <a href=\"#\">农委</a>\r\n            <a href=\"#\">水务局</a>\r\n            <a href=\"#\">商务委</a>\r\n            <a href=\"#\">旅游委</a>\r\n            <a href=\"#\">文委</a>\r\n            <a href=\"#\">卫生局</a>\r\n            <a href=\"#\">人口计生委</a>\r\n            <a href=\"#\">审计局</a>\r\n            <a href=\"#\">外事办</a>\r\n            <a href=\"#\"> 国资委</a>\r\n            <a href=\"#\"> 安监局</a>\r\n            <a href=\"#\">体育局</a>\r\n            <a href=\"#\">统计局</a>\r\n            <a href=\"#\">园林绿化局</a>\r\n            <a href=\"#\">民防局</a>\r\n            <a href=\"#\">法制办</a>\r\n            <a href=\"#\">信访办</a>\r\n            <a href=\"#\">老龄委</a>\r\n            <a href=\"#\">城管局</a>\r\n            <a href=\"#\">行政服务中心</a>\r\n            <a href=\"#\">动物卫生监管局</a>\r\n            <a href=\"#\">社会办</a>\r\n            <a href=\"#\">北京电子商务中心区 </a>\r\n            <a href=\"#\">新区就业直通车网站</a>\r\n            <a href=\"#\"> 中国西瓜交易网</a>\r\n            <a href=\"#\"> 大兴区工业产品供求信息共享平台</a>\r\n            <a href=\"#\"> 瀛海精神家园网站</a>\r\n            <a href=\"#\"> 大兴区供暖管理中心</a>\r\n            <a href=\"#\">北京大兴西瓜节官方网站</a>\r\n            <a href=\"#\">大兴区职工服务中心</a>\r\n            <a href=\"#\">南海子公园 </a>\r\n            <a href=\"#\"> 大兴区学雷锋志愿者服务队 </a>\r\n            <a href=\"#\"> 北京京南物流基地</a>\r\n            <a href=\"#\"> 大兴区节水型社会建设网</a>\r\n            <a href=\"#\"> 大兴区妇女儿童活动中心 </a>  \r\n            <a href=\"#\"> 大兴区防火安全委员会</a>\r\n            <a href=\"#\"> 大兴社区卫生   </a>\r\n            <a href=\"#\"> 大兴区献血网</a>\r\n            <a href=\"#\"> 大兴区交通安全信息网   </a>\r\n            <a href=\"#\">礼贤民族敬老院</a>\r\n        </p>\r\n  </div>\r\n</div>\r\n<div class=\"footer\">\r\n  <div class=\"footer-link\">\r\n     <a href=\"#\">设为首页</a>|\r\n     <a href=\"#\">加入收藏</a>|\r\n     <a href=\"#\">意见反馈</a>|\r\n     <a href=\"#\">网站地图</a>|\r\n     <a href=\"#\">网站数据统计</a>\r\n  </div>\r\n  <p>\r\n    大兴新媒体产业园区管理委员会  版权所有 - 京ICP备00005555号<br />\r\n大兴新媒体产业园区计算机信息中心  管理维护  <br />\r\nwebmaster@dxmedia.gov.cn<br />\r\n  </p>\r\n</div>\r\n<div class=\"weixin\">\r\n  <h4>大兴<br />新媒体产业基地<br />智慧园区</h4>\r\n  <div class=\"weixin-img\">\r\n    <img src=\"");
	templateBuilder.Append("/templates/jiancha");
	templateBuilder.Append("/images/erweima.gif\" /><br />\r\n    微信公众账号 <br /><font color=\"#b9121b\" ><strong>sipacnc</strong></font>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
