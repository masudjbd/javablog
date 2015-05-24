<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="col-lg-8">


    <h1>Category List</h1>


    <hr>

    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Action</th>
            </tr>
        </thead>

        <tbody>

            <c:forEach items="${categories}" var="category" >
                <tr>
                    <td>${category.id}</td>
                    <td>${category.name}</td>
                    <td>${category.description}</td>
                    <td>
                        <div class="btn-group">
                            <a href="${pageContext.request.contextPath}/category/edit/${category.id}" 
                               class="btn btn-info"><i class="glyphicon icon-white glyphicon-edit"></i> Edit</a>
                            <a href="${pageContext.request.contextPath}/category/delete/${category.id}"
                               class="btn btn-danger"><i class="glyphicon glyphicon-white glyphicon-trash"></i> Delete</a>
                        </div>
                    </td>
                </tr>

            </c:forEach> 

        </tbody>

    </table>





</div>
