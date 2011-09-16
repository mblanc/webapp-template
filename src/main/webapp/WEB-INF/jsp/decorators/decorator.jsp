<%@ include file="/WEB-INF/jsp/taglibs.jsp" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<!DOCTYPE html>
<html>
  <head>
    <title><decorator:title /></title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-1.2.0.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
	<decorator:head />
  </head>
  <body>
  	<div class="topbar">
      <div class="topbar-inner">
        <div class="container">
          <h3><a href="#">Bootstrap</a></h3>

          <ul class="nav">
            <li class="active"><a href="#masthead">Home</a></li>
            <li><a href="#">Alpha</a></li>
            <li><a href="#">Beta</a></li>
            <li><a href="#">Gama</a></li>
          </ul>
        </div>
      </div>
    </div>
	<div class="container">
   		<decorator:body/>
	</div>
  </body>
</html>
					