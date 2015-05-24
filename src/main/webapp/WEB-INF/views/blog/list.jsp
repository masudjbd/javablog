<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="col-lg-8">


    <h1>Blog Post List</h1>


    <hr>
    <a href="${pageContext.request.contextPath}/blog/add" class="btn btn-info">Add</a>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Content</th>
                <th>Category</th>
                <th>Action</th>
            </tr>
        </thead>

        <tbody>

            <c:forEach items="${blogposts}" var="post" >
                <tr>
                    <td>${post.id}</td>
                    <td>${post.title}</td>
                    <td>${post.content}</td>
                    <td>${post.category.name}</td>
                    <td>
                        <div class="btn-group">
                            <a href="${pageContext.request.contextPath}/blog/edit/${post.id}" 
                               class="btn btn-info"><i class="glyphicon icon-white glyphicon-edit"></i> Edit</a>
                            <a href="${pageContext.request.contextPath}/blog/delete/${post.id}"
                               class="btn btn-danger"><i class="glyphicon glyphicon-white glyphicon-trash"></i> Delete</a>
                        </div>
                    </td>
                </tr>

            </c:forEach> 

        </tbody>

    </table>





</div>
