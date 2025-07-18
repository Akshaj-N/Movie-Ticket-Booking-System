<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="dheader.jsp"></jsp:include>
<div class="container">
    <button type="button" data-target="#add" data-toggle="modal" class="btn btn-sm btn-primary float-right m-2">Add Show</button>
    <h2 class="heading">Shows</h2>
    <table id="tbl" class="table table-bordered table-sm table-striped">
        <thead class='table-danger'>
            <tr>
                <th style="width:100px">Show ID</th>
                <th>Show Name</th>
                <th>Show Time</th>
                <th>End Time</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${list }" var="s">
            <tr>
                <td>${s.id}</td>
                <td>${s.showname}</td>
                <td>${s.starttime}</td>
                <td>${s.endtime}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<!-- add theatre dialog -->
<div class="modal fade" id="add" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="post">
                <div class="modal-header">
                    <h5>Add Show</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group form-row">
                        <label class="col-sm-5 col-form-label">Show Name :</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control form-control-sm" required name="showname" 
                                   placeholder="Show Name">
                        </div>
                    </div>
                    <div class="form-group form-row">
                        <label class="col-sm-5 col-form-label">Show Time :</label>
                        <div class="col-sm-7">
                            <input type="time" name="starttime" class="form-control form-control-sm">
                        </div>
                    </div>
                    <div class="form-group form-row">
                        <label class="col-sm-5 col-form-label">End Time :</label>
                        <div class="col-sm-7">
                            <input type="time" name="endtime" class="form-control form-control-sm">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="submit" class="btn btn-success btn-sm float-right" value="Register Show">	
                </div>
            </form>
        </div>
    </div>
</div>
<jsp:include page="dfooter.jsp"></jsp:include>