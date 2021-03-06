<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="seehope.security.SecurityContext"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/common/meta.jsp"%>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<title>H-ui.admin v2.3</title>
</head>
<body>
	<header class="Hui-header cl">
		<a class="Hui-logo l" title="H-ui.admin v2.3" href="/">小学成绩管理系统</a> <a
			class="Hui-logo-m l" href="/" title="H-ui.admin">H-ui</a> <span
			class="Hui-subtitle l">V2.3</span>
		<ul class="Hui-userbar">
			<li class="dropDown dropDown_hover"><a href="#"
				class="dropDown_A"><%=SecurityContext.getCurrentUser().getUsername()%>
					<i class="Hui-iconfont">&#xe6d5;</i></a>
				<ul class="dropDown-menu radius box-shadow">
					<li><a href="${contextPath }/LoginController/logout.do">退出</a></li>
				</ul></li>

			<li id="Hui-skin" class="dropDown right dropDown_hover"><a
				href="javascript:;" title="换肤"><i class="Hui-iconfont"
					style="font-size: 18px">&#xe62a;</i></a>
				<ul class="dropDown-menu radius box-shadow">
					<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
					<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
					<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
					<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
					<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
					<li><a href="javascript:;" data-val="orange" title="绿色">橙色</a></li>
				</ul></li>
		</ul>
		<a href="javascript:;" class="Hui-nav-toggle Hui-iconfont"
			aria-hidden="false">&#xe667;</a>
	</header>
	<aside class="Hui-aside">
		<input runat="server" id="divScrollValue" type="hidden" value="" />
		<div class="menu_dropdown bk_2">
<%-- 			<dl id="menu-member">
				<dt>
					<i class="Hui-iconfont">&#xe60d;</i>用户管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="${contextPath }/module/user/user-list.jsp"
							data-title="用户列表" href="javascript:;">用户列表</a></li>
					</ul>
				</dd>
			</dl> --%>


			<dl id="menu-member">
				<dt>
					<i class="Hui-iconfont">&#xe623;</i>学生管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
						
				</dt>
				<dd>
					<ul>

						<li><a _href="${contextPath }/module/student/student-list.jsp"
							data-title="学生管理" href="javascript:;">学生管理</a></li>
					</ul>
				</dd>
			</dl>


			<dl id="menu-member">
				<dt>
					<i class="Hui-iconfont">&#xe623;</i>学科管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
						
				</dt>
				<dd>
					<ul>

						<li><a _href="${contextPath }/module/subject/subject-list.jsp"
							data-title="学科管理" href="javascript:;">学科管理</a></li>
					</ul>
				</dd>
			</dl>

			<dl id="menu-member">
				<dt>
					<i class="Hui-iconfont">&#xe623;</i>成绩管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
						
				</dt>
				<dd>
					<ul>

						<li><a _href="${contextPath }/module/mark/mark-list.jsp"
							data-title="成绩管理" href="javascript:;">个人成绩管理</a></li>
					</ul>
					<ul>

						<li><a _href="${contextPath }/module/mark/mark-list-class.jsp"
							data-title="班级成绩管理" href="javascript:;">班级成绩管理</a></li>
					</ul>
				</dd>
			</dl>

		</div>
	</aside>
	<div class="dislpayArrow">
		<a class="pngfix" href="javascript:void(0);"
			onClick="displaynavbar(this)"></a>
	</div>
	<section class="Hui-article-box">
		<div id="Hui-tabNav" class="Hui-tabNav">
			<div class="Hui-tabNav-wp">
				<ul id="min_title_list" class="acrossTab cl">
					<li class="active"><span title="我的桌面" data-href="welcome.html">我的桌面</span><em></em></li>
				</ul>
			</div>
			<div class="Hui-tabNav-more btn-group">
				<a id="js-tabNav-prev" class="btn radius btn-default size-S"
					href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a
					id="js-tabNav-next" class="btn radius btn-default size-S"
					href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a>
			</div>
		</div>
		<div id="iframe_box" class="Hui-article">
			<div class="show_iframe">
				<div style="display: none" class="loading"></div>
				<iframe scrolling="yes" frameborder="0"
					src="${contextPath }/module/user/user-list.jsp"></iframe>
			</div>
		</div>
	</section>
	<script type="text/javascript">
		/*资讯-添加*/
		function article_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*图片-添加*/
		function picture_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*产品-添加*/
		function product_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*用户-添加*/
		function member_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}
	</script>
<!-- 	<script type="text/javascript">
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s)
		})();
		var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
				: " http://");
		document
				.write(unescape("%3Cscript src='"
						+ _bdhmProtocol
						+ "hm.baidu.com/h.js%3F080836300300be57b7f34f4b3e97d911' type='text/javascript'%3E%3C/script%3E"));
	</script> -->
</body>
</html>