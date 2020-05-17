<%--
  Created by IntelliJ IDEA.
  User: panho
  Date: 2020/5/17
  Time: 0:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>Precision Medicine Matching System</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/static/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/static/jquery/jquery-3.4.1.js"></script>
    <script src="<%=request.getContextPath()%>/static/bootstrap/js/bootstrap.bundle.min.js"></script>
    <link href="<%=request.getContextPath()%>/static/css/navbar.css" rel="stylesheet">

</head>
<body>
<jsp:include page="head.jsp" />
<jsp:include page="nav.jsp" />
<div class="container-fluid">
    <div class="row">
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4" style="margin-bottom: 400px;padding: 50px">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom"
                 style="color: #3b6d69">
                <h2>Matching</h2>
            </div>
            <div class="table-responsive">
                <c:if test="${validateError != null}">
                    <div><c:out value="${validateError}"></c:out></div>
                </c:if>
            </div>
        </main>
    </div>
</div>
</body>
</html>
