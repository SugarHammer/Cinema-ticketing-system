<!DOCTYPE html>
<html lang="zh">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=990, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta charset="utf-8" />
    <meta name="renderer" content="webkit">
    <title>星光影院售票系统</title>
    <meta name="keywords" content="星光影院售票系统"/>
    <meta name="description" content="星光影院售票系统"/>
    <#include "../common/head-css.ftl"/>
    <link href="/home/css/jquery.jPages.css" rel="stylesheet" />
</head>
<body>
	<#include "../common/header.ftl"/>
<div id="body" class="main">
<div class="wrapper-newsdetail">
    <div class="box-title-newsdetail">
        <div class="title-newsdetail">
            <h1>${news.title}</h1>
            <div class="news-info">
                <span>${news.createTime}</span>
                <span>浏览量：${news.viewNumber}</span>
            </div>
        </div>
    </div>
    <div class="con-hotnews-newsdetail fn-clear">
        <div class="box-con">
            <div class="con">
				${news.content}
			</div>
        </div>
        <div class="box-news-actives">
            <div class="hot-news">
                <div class="title"><span class="titb">热门资讯</span></div>
            </div>
            <div class="active">
                <ul>
                        <#list topNewsList as topNews>
                        <li>
                            <a title="${topNews.title}" href="/home/news/detail?id=${topNews.id}" target="_blank"><img src="/photo/view?filename=${topNews.picture}" width="310" height="180" /></a>
                            <p><a title="${topNews.title}" href="/home/news/detail?id=${topNews.id}" target="_blank">${topNews.title}</a></p>
                        </li>
                        </#list>
                </ul>
            </div>
        </div>
    </div>
</div>
</div>
</div>
<#include "../common/footer-js.ftl"/>
<script src="/home/js/jquery.jPages.min.js" type="text/javascript"></script>
<#include "../common/footer.ftl"/>
<#include "../common/login-dialog.ftl"/>
<script type="text/javascript">
$(document).ready(function(){
	 $(".box-news-list .jpage").jPages({
        containerID: "newslist",
        perPage: 10,
        delay: 30,
        fallback: 200,
        minHeight: false,
        previous: "上一页",
        next: "下一页"
    });
    $('.nscore').jRating({
        rateMax: 10,
        isDisabled: true,
        bigStarsPath: '/home/images/ico_tb_stars.png'
    });
});
</script>
</body>
</html>
