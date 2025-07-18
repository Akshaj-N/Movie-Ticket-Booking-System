<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="header.jsp"></jsp:include>
<style>
    td{
        color:var(--theme-title);
    }
</style>
<div class="jumbotron bg-dark text-white rounded-0" style="margin-top: 70px;">
    <h2 class="heading">Booking History</h2>
</div>
<div class="container">
    
    <table class="table table-bordered table-sm">
        <thead class='table-danger'>
            <tr>
                <th style="width:100px">Booking ID</th>
                <th>Movie Name</th>
                <th>Theatre Name</th>
                <th>No. of Tickets</th>
                <th>Seat Numbers</th>
                <th>Amount</th>
                <th>Booking Date</th>                         
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${list }" var="b">
              <tr>
                  <td>${b.bid }</td>
                  <td>${b.movie.mname}</td>
                  <td>${b.theatre.tname }</td>
                  <td>${b.noseat }</td>
                  <td>${b.seats }</td>
                  <td>&#8377;${b.amount }</td>
                  <td>${b.bdate }</td>
              </tr>
         </c:forEach>
        </tbody>
    </table>
</div>
<jsp:include page="footer.jsp"></jsp:include>