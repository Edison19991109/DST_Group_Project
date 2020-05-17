<%--
  Created by IntelliJ IDEA.
  User: panho
  Date: 2020/4/30
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>Dosing guideline</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/static/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/static/jquery/jquery-3.4.1.js"></script>
    <script src="<%=request.getContextPath()%>/static/bootstrap/js/bootstrap.bundle.min.js"></script>


</head>
<body>
<jsp:include page="head.jsp" />
<jsp:include page="nav.jsp" />
<div class="container-fluid">
    <div class="row">

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h2>Matching Result</h2>
            </div>
            <div class="table-responsive">
                <div class="alert alert-info" role="alert">
                    <h4 class="alert-heading">Sample Info #${sample.id}</h4>
                    <div>Uploaded at: ${sample.createdAt}</div>
                    <div>Uploaded by: ${sample.uploadedBy}</div>

                </div>
            </div>
            <div class="table-responsive">
                <h4>Matched Drug Labels</h4>
                <c:if test="${!matched.isEmpty()}">
                    <table class="table table-striped table-sm">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Source</th>
                            <th>Summary</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${matched}" var="item" varStatus="loop">
                            <tr>
                                <td>${loop.index + 1}</td>
                                <td>${item.name}</td>
                                <td>${item.source}</td>
                                <td>${item.summaryMarkdown}</td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </c:if>
            </div>
        </main>
    </div>
</div>
</body>
</html>
