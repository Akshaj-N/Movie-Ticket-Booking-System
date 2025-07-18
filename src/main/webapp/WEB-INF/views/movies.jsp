<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="dheader.jsp"/>
<a href="addmovie" class="btn btn-sm btn-primary float-right m-2">Add New Movie</a>
<div class='clearfix'></div>
<div class="container-fluid">
    <jsp:include page="msg"/>   
    <div class="row">
        <div class="col mx-auto">
            <h3 class="text-center heading">All Movies</h3>
            <table class="table table-bordered table-sm table-striped">
                <thead class='table-danger'>
                    <tr>
                        <th>Movie ID</th>
                        <th>Movie Name</th>
                        <th>Release Date</th>
                        <th>Director</th>    
                        <th>Actor</th>
                        <th>Actress</th>
                        <th>Details</th>                        
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${list }" var="m"> 
                     <tr>
                         <td>${m.mid}</td>
                         <td>${m.mname}</td>
                         <td>${m.reldate}</td>
                         <td>${m.director}</td>
                         <td>${m.actor}</td>
                         <td>${m.actress}</td>
                         <td>
                             <a href="madetails/${m.mid}" class="btn btn-primary btn-sm">Details</a>
                             <a href="editmovie/${m.mid}" class="btn btn-primary btn-sm">Edit</a>
                         </td>
                     </tr>
                 </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<jsp:include page="dfooter.jsp"/>