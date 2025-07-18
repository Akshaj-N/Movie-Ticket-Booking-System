<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="header.jsp"></jsp:include>
<style>
    th,h4,label{
        color:var(--theme-title);
    }
</style>
<div class="container" style="margin-top: 70px;">
    <h4 class="text-center p-2 border-bottom border-top mt-2">Displaying Details</h4>
    <div class="row">
        <div class="col-sm-3">
            <div class="card mb-2">
                <img src="/${movie.poster}" class="card-img-top" style="height:350px;">
                <div class="card-body">
                    <h5>${movie.mname}</h5>
                </div>
            </div>            
        </div>
        <div class="col-sm-9">
            <table class="table">
                <tbody>
                    <tr>
                        <th style="width:200px;">Movie Name</th>
                        <th>${movie.mname}</th>
                    </tr>
                    <tr>
                        <th>Director</th>
                        <th>${movie.director}</th>
                    </tr>
                    <tr>
                        <th>Actor</th>
                        <th>${movie.actor}</th>
                    </tr>
                    <tr>
                        <th>Actress</th>
                        <th>${movie.actress}</th>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <th>${movie.descr}</th>
                    </tr>                   
                </tbody>
            </table>

           <c:choose>
           <c:when test="${sessionScope.user ne null }">
                <div class="row">
                    <div class="col-sm-8">
                        <form method="post" action="/seatbook">
                            <input type="hidden" name="mid" value="${movie.mid }">
                            <div class="form-group form-row">
                                <label class="col-sm-4 col-form-label">Choose Date</label>
                                <div class="col-sm-8">
                                    <input type="date" id="bdate" class="form-control" name="bdate">
                                </div>
                            </div>
                            <div class="form-group form-row">
                                <label class="col-sm-4 col-form-label">Choose Theatre</label>
                                <div class="col-sm-8">
                                    <select class="form-control" name="tid" required>
                                    <option value="">Select Theatre</option>
                                    <c:forEach items="${theatres }" var="t">
                                    <option value="${t.tid }">${t.tname }</option>
                                    </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group form-row">
                                <label class="col-sm-4 col-form-label">Choose Show</label>
                                <div class="col-sm-8">
                                    <select class="form-control" name="sid">
                                     <c:forEach items="${shows }" var="s">
                                    <option value="${s.id }">${s.showname }</option>
                                    </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <input type="submit" class="btn btn-success my-2" value="Book Now"></a>
                        </form>    
                    </div>
                </div>
			</c:when>
			<c:otherwise>
                <h4 class="d-inline-block" style="color:red;padding:10px;">Kindly login to book tickets</h4>
                <a href="/login" class="btn btn-primary btn-sm px-3">Login</a>
			</c:otherwise>                   
			</c:choose>
        </div>
    </div>
</div>
<script>
Date.prototype.addDays = function(days) {
    var date = new Date(this.valueOf());
    date.setDate(date.getDate() + days);
    return date;
}

var dd=new Date();
var maxdate=dd.addDays(7);
document.getElementById("bdate").valueAsDate=dd;
document.getElementById("bdate").setAttribute("min",dd.toISOString().slice(0, -14));
document.getElementById("bdate").setAttribute("max",maxdate.toISOString().slice(0, -14));
</script>
<jsp:include page="footer.jsp"></jsp:include>