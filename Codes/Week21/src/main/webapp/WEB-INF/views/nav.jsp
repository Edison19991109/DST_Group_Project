<%--
  Created by IntelliJ IDEA.
  User: hello
  Date: 2019-12-3
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">

    <link href="<%=request.getContextPath()%>/static/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/static/jquery/jquery-3.4.1.js"></script>
    <script src="<%=request.getContextPath()%>/static/bootstrap/js/bootstrap.bundle.min.js"></script>
    <link href="<%=request.getContextPath()%>/static/css/navbar.css" rel="stylesheet">
    <style>
        .navbar-fixed-top .navbar-inner {
            -webkit-border-radius: 0;
            -moz-border-radius: 0;
            border-radius: 0;
        }
        .dropdown-toggle{
            color: #ffffff;
        }
        .dropdown-menu{
            color: #ffffff;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-fixed-top navbar-expand-sm" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/index" >Home</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="nav-item">
                    <a class='nav-link ${param.active == "match" ? "active" : ""}' href="<%=request.getContextPath()%>/match">
                        <span data-feather="file-text"></span>
                        Match
                    </a>
                </li>
                <li class="dropdown">
                    <a href=" " class="dropdown-toggle" data-toggle="dropdown">
                        Knowledge base
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu" >
                        <li><a class="nav-link" href="${pageContext.request.contextPath}/drugs">Drug</a></li>
                        <li class="divider"></li>
                        <li><a class="nav-link" href="${pageContext.request.contextPath}/drugLabels">DrugLabel</a></li>
                        <li class="divider"></li>
                        <li><a class="nav-link" href="${pageContext.request.contextPath}/dosingGuideline">DosingGuideline</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class='nav-link ${param.active == "help" ? "active" : ""}' href="<%=request.getContextPath()%>/help">
                        <span data-feather="file-text"></span>
                        Help
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <c:if test="${sessionScope.username == null}">
                        <a class="nav-link" href="${pageContext.request.contextPath}/signin" style="float: right">
                            <span class="glyphicon glyphicon-log-in"></span>
                            Sign in</a>
                        <a class="nav-link" href="${pageContext.request.contextPath}/signup" style="float: right">
                            <span class="glyphicon glyphicon-user"></span>
                            Sign up
                        </a>
                    </c:if>
                    <c:if test="${sessionScope.username != null}">
                        <a class="nav-link" href="${pageContext.request.contextPath}/signout" style="float: right">
                            <span class="glyphicon glyphicon-log-out"></span>
                            Sign out
                        </a>
                    </c:if>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
</body>
