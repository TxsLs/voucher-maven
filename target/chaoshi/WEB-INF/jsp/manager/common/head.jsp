<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>门店销售管理系统</title>
	<link href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/statics/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/statics/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/statics/css/nprogress.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/statics/css/custom.min.css" rel="stylesheet">
</head>
<script type="text/javascript">
function update(id) {
		window.location.href="${pageContext.request.contextPath }/manage/toupdate?managerid="+id;
}  
function get(id) {
	window.location.href="${pageContext.request.contextPath }/manage/getbyid?managerid="+id;
} 
</script>
<body class="nav-md">
    <div class="container body" style="overflow-x: hidden;overflow-y: hidden; ">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="${pageContext.request.contextPath }/manage/flatform/main" class="site_title"><i class="fa fa-paw"></i> <span>Welcome!</span></a>
            </div>
					
            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
               	<h3 class="text-info">用心与你沟通</h3>
            </div>

            <br />
            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> 进货管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath }/manage/flatform/ckin/getall">进货信息</a></li>
                      <li><a href="${pageContext.request.contextPath }/manage/flatform/ckretire/getall">退货信息</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> 商品信息管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath }/manage/flatform/product/getlist">商品信息</a></li>
                      <li><a href="${pageContext.request.contextPath }/manage/flatform/type/getall">商品类别</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> 库存管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath }/manage/flatform/kcxx/getall">库存信息</a></li>
                      <li><a href="${pageContext.request.contextPath }/manage/flatform/kcxx/kcxxWithPronum">库存预警</a></li>
                      <li><a href="${pageContext.request.contextPath }/manage/flatform/kcxx/kcxxWithProdata">临期产品</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> 销售管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath }/manage/flatform/dailysale/getall">每日销售单</a></li>
                      <li><a href="${pageContext.request.contextPath }/manage/flatform/sale/getall">销售信息</a></li>
<%--                      <li><a href="${pageContext.request.contextPath}/manage/flatform/sale/toechart">销售统计</a></li>--%>
                      <li><a href="${pageContext.request.contextPath}/manage/flatform/sale/toechart">本月支出报表</a></li>
                      <li><a href="${pageContext.request.contextPath }/manage/flatform/cusretire/getall">顾客退货办理</a></li>
                      
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i> 客户信息管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath }/manage/flatform/custom/getall">客户信息</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-clone"></i>供应商信息管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath }/manage/flatform/supply/getall">供应商信息</a></li>
                    </ul>
                  </li>
            	  <li><a><i class="fa fa-clone"></i>员工信息管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath }/manage/getall">员工信息</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
            <div class="sidebar-footer hidden-small">
<!--               <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a> -->
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="${pageContext.request.contextPath }/manage/logout">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>
		<div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <span class="glyphicon glyphicon-user">${managerSession.managername}</span> 
                    <span class="glyphicon glyphicon-user" style="display:none" id="staffid">${managerSession.managerid}</span> 
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a onclick="get(${managerSession.managerid})"> 基本信息</a></li>
                    <li>
                      <a onclick="update(${managerSession.managerid})">修改资料</a>
                    </li>
                    <li><a href="${pageContext.request.contextPath }/manage/logout"><i class="fa fa-sign-out pull-right"></i> 退出</a></li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>