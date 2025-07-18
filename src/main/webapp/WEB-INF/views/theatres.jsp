<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="dheader.jsp"></jsp:include>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-8">
            <h4 class="heading">Theatres</h4>
            <table class="table table-bordered table-sm">
                <thead>
                    <tr>
                        <th>Theatre Id</th>
                        <th>Theatre Name</th>
                        <th>Theatre Location</th>
                        <th>Capacity</th>
                        <th>Ticket Price</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${list }" var="t">
                        <tr>
                            <td>${t.tid}</td>
                            <td>${t.tname}</td>
                            <td>${t.address}</td>
                            <td>${t.seats}</td>
                            <td>${t.price}</td>
                        </tr>
                </tbody>
                </c:forEach>
            </table>        
        </div>
        <div class="col-sm-4">
            <h4>Add New Theatre</h4>
            <form method="post">
                <div class="form-group">
                    <label>Theatre Name</label>
                    <input type="text" name="tname" class="form-control">
                </div>
                <div class="form-group">
                    <label>Theatre Address</label>
                    <input type="text" name="address" class="form-control">
                </div>
                <div class="form-group">
                    <label>Theatre Seat Capacity</label>
                    <input type="number" min="50" max="150" step="10" name="seats" class="form-control">
                </div>
                <div class="form-group">
                    <label>Ticket Price</label>
                    <input type="text" name="price" class="form-control">
                </div>
                <input type="submit" value="Save Theatre" class="btn btn-primary">
            </form>
        </div>
    </div>

</div>
<jsp:include page="dfooter.jsp"></jsp:include>