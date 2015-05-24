<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title> JavaBlog Login </title>
        <link rel="stylesheet"
              href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />
        
                <link href="${pageContext.request.contextPath}/resource/css/javablog.css"
              rel="stylesheet" />
    </head>
    <body class="login-body"> 


        <div class="container" style="margin-top: 200px; -moz-border-radius: 5px; border-radius: 5px; border: 1px solid #EAEAEA; background: #EEE; width: 400px;">
            <center><h3>JavaBlog Login</h3></center>
            <div class="row">
                <div class="col-md-12 col-md-offset-12">
                    <div class="panel panel-default">
                        <div class="panel-heading" >
                            <h3 class="panel-title">Please sign in</h3>
                        </div>
                        <div class="panel-body">
                            <c:if test="${not empty error}">
                                <div class="alert alert-danger">
                                    <spring:message
                                        code="AbstractUserDetailsAuthenticationProvider.badCredentials" />
                                    <br />
                                </div>
                            </c:if>
                            <form action="<c:url value="/auth/login_check"></c:url>"
                                  method="post">

                                    <fieldset>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="User Name"
                                                   name='username' type="text" />
                                        </div>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="Password"
                                                   name='password' type="password" value="" />
                                        </div>
                                        <input class="btn btn-lg btn-success btn-block" type="submit"
                                               value="Login">
                                    </fieldset>

                                    <input type="hidden" name="${_csrf.parameterName}"
                                       value="${_csrf.token}" />
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>