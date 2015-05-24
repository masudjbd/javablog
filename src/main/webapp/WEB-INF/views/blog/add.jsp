<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>



<div class="col-lg-8">


    <h1>Blog Post</h1>


    <hr>

    <form:form class="form-horizontal" commandName="post" method="post">

        <div class="control-group">
            <label for="Category">Category</label>

            <form:select class="form-control col-md-4" path="category.id">
                <form:options items="${categories}" itemLabel="name" itemValue="id" />
            </form:select>
            <form:errors path="category.id" cssClass="error" />


        </div>

        <div class="control-group">
            <label for="Title">Post Title</label>
            <form:input path="title" class="form-control" />
            <form:errors path="title" cssClass="error" />
        </div>   

        <div class="control-group">
            <label for="Title">Post Content</label>
            <form:textarea path="content" style="height:150px;" class="form-control textarea" />
            <form:errors path="content" cssClass="error" />
        </div>   
        <hr />
        <div class="control-group">
            <div class="controls ">
                <button type="submit" class="btn btn-info">Save </button>
            </div>
        </div>

    </form:form>




</div>


