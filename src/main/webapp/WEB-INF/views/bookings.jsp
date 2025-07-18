<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="dheader.jsp"></jsp:include>
<div class="container-fluid">
    <h2 class="heading">Bookings</h2>
    <table class="table table-bordered table-sm">
        <thead class='table-danger'>
            <tr>
                <th style="width:100px">Booking ID</th>
                <th>Customer</th>
                <th>Movie</th>
                <th>Theatre</th>
                <th>Show</th>
                <th>Seats</th>
                <th>Seat Numbers</th>
                <th>Amount</th>
                <th>Booking Date</th>                         
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${list }" var="b">
                <tr>
                    <td>${b.bid}</td>
                    <td>${b.customer.uname}</td>
                    <td>${b.movie.mname}</td>
                    <td>${b.theatre.tname}</td>
                    <td>${b.show.showname }</td>
                    <td>${b.noseat}</td>
                    <td>${b.seats}</td>
                    <td>${b.amount}</td>
                    <td>${b.bdate}</td>
                </tr>
          </c:forEach>
        </tbody>
    </table>
</div>
<jsp:include page="dfooter.jsp"></jsp:include>