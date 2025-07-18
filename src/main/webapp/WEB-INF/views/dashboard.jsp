<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="dheader.jsp"/>
<div class="container">
    <h2 class="heading">Owner Dashboard</h2>
    <div class="container">
        <div class="row">
            <div class="col-sm-3 mb-2 text-center">
                <a href="/theatres">
                <div class="card bg-danger">
                    <h4 style="color:white; padding:7px">Theaters</h4>
                    <h4 style="color:white; padding:7px">${theatres }</h4>
                </div>
                </a>
            </div>
            <div class="col-sm-3 mb-2 text-center">
                <a href="/movies">
                <div class="card  bg-warning">
                    <h4 style="color:white; padding:7px">Movies</h4>
                    <h4 style="color:white; padding:7px">${movies }</h4>
                </div>
                </a>
            </div>
            <div class="col-sm-3 mb-2 text-center">
                <a href="/customers">
                <div class="card  bg-success">
                    <h4 style="color:white; padding:7px">Customers</h4>
                    <h4 style="color:white; padding:7px">${customers }</h4>
                </div>
                </a>
            </div>
            <div class="col-sm-3 mb-2 text-center">
                <a href="/bookings">
                <div class="card  bg-primary">
                    <h4 style="color:white; padding:7px">Bookings</h4>
                    <h4 style="color:white; padding:7px">${bookings }</h4>
                </div>
                </a>
            </div>
        </div>
    </div>
</div>
<jsp:include page="dfooter.jsp"/>