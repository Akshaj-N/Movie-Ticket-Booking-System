<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="header.jsp"></jsp:include>
<div class="jumbotron bg-dark text-white rounded-0" style="margin-top: 70px;">
    <h2 class="heading">All Movies List</h2>
</div>
<div class="container-fluid">
<div class="row">
 <c:forEach items="${list }" var="m">
        <div class="col-sm-3 p-1 text-center">
            <div class="card m-2">
                <img style="height:350px;" class="card-img-top" src="${m.poster}">
                <div class="card-body bg-success">                                  
                    <h6 style="color:yellow; font-weight:bold;">${m.mname}</h6>                    
                </div>
                <div  class="card-footer">
                    <a class="btn btn-primary btn-sm" href="/mdetails/${m.mid}">View Details</a>        
                </div>
            </div>
        </div>
 </c:forEach>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>