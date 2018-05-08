<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<title>温湿度监测平台首页</title>
		<link href="${pageContext.request.contextPath}/css/zyk_css/index.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/wea_headStyle.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/echarts/echarts.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/echarts/china.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/echarts/city-map.js"></script>
		
		<script type="text/javascript">
		 	var cityName= '${cityName}';
			if (cityName == '' ||cityName == '内网IP') {
				cityName ="郑州";
			}
		</script>
	
	</head>
	<body style="background: #ededed;">
      <div id="nav_head">
        <div id="log_div">
        	<div style="height:100%;float:left;">
        		<img src="${pageContext.request.contextPath}/images/zyk_img/logo.png" height="40px" width="40px;"/>
        	</div>
        	<div style="float:left;">
        		<font style="font-size:20px; color:white;">温湿度监测系统</font>
        	</div>

        	<shiro:hasRole name="root">
            	<div id="manage_div">
            		<a href="${pageContext.request.contextPath}/main" title="进入后台">
            			<img alt="用户管理" src="${pageContext.request.contextPath}/images/manage.png" height="40px" width="40px;">
            		</a>
            	</div>
            </shiro:hasRole>
        </div>
         <div id="user_div">
            <div id="user_info"><font color="white">${currUser.name } 你好，欢迎使用系统</font></div>
            <div id="out"><a href="${pageContext.request.contextPath}/logout"><font color="white">登出</font></a></div>
         </div>
      </div>
      <div id="nav_temhum">
        <div id="tem_realtime">
          <div id="tem_info">
            <font size="4px">当前温度</font>
          </div>
          <div id="tem_data"></div>
        </div>
        <div id="hum_realtime">
          <div id="hum_info">
            <font size="4px">当前湿度</font>
          </div>
          <div id="hum_data"></div>
        </div>

      </div>

      <div id="nav_data">
        <div id="data_info">
            <font size="4px">今日数据</font>
        </div>
        <div id="data_data"></div>
      </div>

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/zyk_js/index.js"></script>
	</body>
	<script type="text/javascript">



	</script>
</html>