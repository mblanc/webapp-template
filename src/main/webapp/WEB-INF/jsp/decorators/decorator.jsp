<%@ include file="/WEB-INF/jsp/taglibs.jsp" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<!DOCTYPE html>
<html>
  <head>
    <title><decorator:title /></title>
    <!-- HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-1.2.0.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
	
	<!-- JS -->
	<script src="${pageContext.request.contextPath}/js/jquery-1.6.4.min.js"></script>
	
	<decorator:head />
  </head>
  <body>
  	<div class="topbar">
      <div class="topbar-inner">
        <div class="container">
          <h3><a href="${pageContext.request.contextPath}/">Home</a></h3>
          <ul class="nav">
            <li class="active"><a href="${pageContext.request.contextPath}/users">Users</a></li>
            <li><a href="#">Alpha</a></li>
            <li><a href="#">Beta</a></li>
            <li><a href="#">Gama</a></li>
          </ul>
        </div>
      </div>
    </div>
	<div class="container">
		<div class="main">
   			<decorator:body/>
   		</div>
   		<footer>
	    	<p>&copy; Company 2011</p>
	    </footer>
	</div>
  </body>
</html>
					