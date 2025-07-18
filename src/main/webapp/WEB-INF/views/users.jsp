<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="dheader.jsp"></jsp:include>
<h3 class="text-center heading">All Users</h3>
<table id="tbl" class="table table-bordered table-sm table-striped">
    <thead class='table-danger'>
        <tr>
            <th>User ID</th>
            <th>User Name</th>
            <th>User Type</th>
            <th>Password</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${list }" var="u"> 
            <tr>
                <td>${u.userid}</td>
                <td>${u.uname}</td>
                <td>${u.role}</td>
                <td>${u.pwd}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<jsp:include page="dfooter.jsp"></jsp:include>