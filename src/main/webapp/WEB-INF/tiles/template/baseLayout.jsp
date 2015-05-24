<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>


<%-- 
    Document   : home
    Created on : 24-May-2015, 02:45:23
    Author     : Masudur Rahman <masud.java@gmail.com>
--%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Blog Post - Start Bootstrap Template</title>

        <!-- Bootstrap Core CSS -->
        <link href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.css"
              rel="stylesheet" />

        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/resource/bootstrap/css/blog-post.css"
              rel="stylesheet" />
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

         <script type="text/javascript" src="${pageContext.request.contextPath}/resource/tinymce/tinymce.min.js"></script>
        <script type="text/javascript">
            tinymce.init({
                selector: "textarea"
            });
        </script>

    </head>

    <body>

        <tiles:insertAttribute name="topbar" />

        <!-- Page Content -->
        <div class="container">

            <div class="row">

                <!-- Blog Post Content Column -->
                <tiles:insertAttribute name="content" />

                <!-- Blog Sidebar Widgets Column -->
                <tiles:insertAttribute name="sidebar" />


            </div>
            <!-- /.row -->

            <hr>

            <!-- Footer -->
            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p>Copyright &copy; Masud's Java Blog 2015</p>
                    </div>
                </div>
                <!-- /.row -->
            </footer>

        </div>
        <!-- /.container -->

        <!-- jQuery -->
        <script src="${pageContext.request.contextPath}/resource/bootstrap/js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>

    </body>

</html>

