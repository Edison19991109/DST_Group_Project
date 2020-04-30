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
<%--
<nav class="col-md-2 d-none d-md-block bg-light sidebar">
    <div class="sidebar-sticky">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class='nav-link ${param.active == "dashboard" ? "active" : ""}' href="<%=request.getContextPath()%>/">
                    <span data-feather="home"></span>
                    Dashboard <span class="sr-only">(current)</span>
                </a>
            </li>
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
            <span>Precision Medicine Knowledge Base</span>
            <a class="d-flex align-items-center text-muted" href="#">
                <span data-feather="plus-circle"></span>
            </a>
        </h6>
        <ul class="nav flex-column mb-2">
            <li class="nav-item">
                <a class='nav-link ${param.active == "drugs" ? "active" : ""}' href="<%=request.getContextPath()%>/drugs">
                    <span data-feather="file-text"></span>
                    Drugs
                </a>
            </li>
            <li class="nav-item">
                <a class='nav-link ${param.active == "drug_labels" ? "active" : ""}' href="<%=request.getContextPath()%>/drugLabels">
                    <span data-feather="file-text"></span>
                    Drug Labels
                </a>
            </li>
            <li class="nav-item">
                <a class='nav-link ${param.active == "dosing_guideline" ? "active" : ""}' href="<%=request.getContextPath()%>/dosingGuideline">
                    <span data-feather="file-text"></span>
                    Dosing Guideline
                </a>
            </li>
        </ul>
    </div>
</nav>--%>

<head>
    <style>
        .navbar-fixed-top .navbar-inner {
            -webkit-border-radius: 0;
            -moz-border-radius: 0;
            border-radius: 0;
        }
        .whitesmoke{
            color: #9d9d9d;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/">Home</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href=" " class="dropdown-toggle" data-toggle="dropdown">
                        Knowledge base
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu" style="background: #222; border-bottom-color: whitesmoke">
                        <li><a href="${pageContext.request.contextPath}/drug"><div class="whitesmoke">Drug</div></a></li>
                        <li class="divider"></li>
                        <li><a href="${pageContext.request.contextPath}/druglabel"><div class="whitesmoke">DrugLabel</div></a></li>
                        <li class="divider"></li>
                        <li><a href="${pageContext.request.contextPath}/dosingGuideline"><div class="whitesmoke">DrugGuidance</div></a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class='nav-link ${param.active == "help" ? "active" : ""}' href="<%=request.getContextPath()%>/help">
                        <span data-feather="file-text"></span>
                        Help
                    </a>
                </li>
            </ul>
            <%--<ul class="nav navbar-nav navbar-right">
                <li>
                    <c:if test="${sessionScope.username == null}">
                        <a class="nav-link" href="${pageContext.request.contextPath}/signin" style="float: right"><span class="glyphicon glyphicon-log-in"></span>   Sign in</a><a href="${pageContext.request.contextPath}/signup" style="float: right"><span class="glyphicon glyphicon-user"></span>  Sign up</a>
                    </c:if>
                    <c:if test="${sessionScope.username != null}">
                        <a class="nav-link" href="${pageContext.request.contextPath}/signout" style="float: right"><span class="glyphicon glyphicon-log-out"></span>   Sign out</a><a class="nav-link" href="${pageContext.request.contextPath}/history" style="float: right"> Hi, ${sessionScope.username} - History</a>
                    </c:if>
                </li>
            </ul>--%>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
</body>
