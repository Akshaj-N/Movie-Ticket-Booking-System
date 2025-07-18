<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="dheader.jsp"></jsp:include>
<div class="container-fluid">
    <h2 class="heading">Customers</h2>
    <table class="table table-bordered table-sm table-striped">
        <thead class='table-danger'>
            <tr>
                <th style="width:100px">Cust ID</th>
                <th>Customer Name</th>
                <th>Phone Number</th>
                <th>Email ID</th> 
                <th>Gender</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${list }" var="c"> 
            <tr>
                <td>${c.id}</td>                    
                <td>${c.uname}</td>
                <td>${c.phone}</td>
                <td>${c.email}</td> 
                <td>${c.gender}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<jsp:include page="dfooter.jsp"></jsp:include>