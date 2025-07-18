<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="/css/movie.css">
<jsp:include page="header.jsp"></jsp:include>
<style>
    body {
        background-color: #242333;
        color: #fff;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
        font-family: 'Lato', sans-serif;
        margin: 0;
    }
    input,select{
        box-sizing: border-box;
        padding:8px;
        width:300px;
    }
    label{
        padding:8px;
        display: block;
    }
    input[type='submit']{
        width:120px;
        margin-top:10px;
    }
</style>
        
        <div class="scontainer" style="width:94%;min-height:100vh;">
		<div style="margin-top:100px;"></div>
        <h4 class="text-center">Movie : ${movie.mname }</h4>
            <div class="left" style="width:600px;float:left;">
            <ul class="showcase" style="margin-bottom: 20px;">
	            <li>
	                <div class="seat"></div>
	                <small>Available</small>
	            </li>
	            <li>
	                <div class="seat selected"></div>
	                <small>Selected</small>
	            </li>
	            <li>
	                <div class="seat occupied"></div>
	                <small>Occupied</small>
	            </li>
	        </ul>
                <div class="screen"></div>
                <div class="row">
				<c:forEach var="i" begin="1" end="10">
                    <div class="nums">${i }</div>    
				</c:forEach>
                </div>
                <hr>
               <c:forEach var="i" begin="1" end="${theatre.seats/10 }">
                    <div class="row">
                        <span style="padding:4px;margin-top:5px;width:20px;">${rows[i-1]}</span>
                        <c:forEach var="j" begin="1" end="10">
                        	<c:set var="seat" value="${rows[i-1]}${j}" />
                        	<c:choose>
	                        	<c:when test="${fn:contains(seats,seat) }">
	                            	<div id="${rows[i-1]}${j}" class="seat occupied"></div>
	                            </c:when>
	                            <c:otherwise>
	                            	<div id="${rows[i-1]}${j}" class="seat"></div>
	                            </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </div>
               </c:forEach>

            </div>
            <div class="right" style="width:550px;float:right;margin-top:50px;">
           		<h4 class="p-2 m-3">Booking Information</h4>
                <form name="ff" method="post" action="book">
                    <input type="hidden" name="mid" value="${info.mid }">
                    <div class="form-group form-row">
                        <label class="col-sm-4 col-form-label">Booking Date</label>
                        <div class="col-sm-8">
                            <input type="text" readonly class="form-control" name="bdate" value="${info.bdate }">
                        </div>
                    </div>
                    <div class="form-group form-row">
                        <label class="col-sm-4 col-form-label">Theatre Name</label>
                        <div class="col-sm-8">
                            <input type="hidden" name="tid" value="${info.tid }">
                            <input type="text" readonly="readonly" class="form-control" value="${theatre.tname }">
                        </div>
                    </div>
                    <div class="form-group form-row">
                        <label class="col-sm-4 col-form-label">Show Time</label>
                        <div class="col-sm-8">
                            <input type="hidden" name="sid" value="${info.sid }">
                            <input type="text" readonly="readonly" class="form-control" value="${show.showname }">                           
                        </div>
                    </div>
                    <div class="form-group form-row">
                        <label class="col-sm-4 col-form-label">Per Seat Ticket Price</label>
                        <div class="col-sm-8">
                            <input type="number" readonly="readonly" class="form-control" name="amount" value="${theatre.price }">
                        </div>
                    </div>
                    <div class="form-group form-row">
                        <label class="col-sm-4 col-form-label">Number of Seats</label>
                        <div class="col-sm-8">
                            <input type="number" readonly="readonly" id='count' required class="form-control" name="noseat">
                        </div>
                    </div>
                    <div class="form-group form-row">
                        <label class="col-sm-4 col-form-label">Seat Numbers</label>
                        <div class="col-sm-8">
                            <input type="text" readonly="readonly" id="seatnums" required class="form-control" name="seats">
                        </div>
                    </div>

                    <input type="submit" value="Book Now" class="btn btn-primary float-right">
                </form>
            </div>
        </div>
        <button id="btnconfirm" style="margin-left:-200px;" class="btn btn-success btn-sm">Confirm Now</button>
        <script src="/js/script.js" type="text/javascript"></script>
        <script src="/js/jquery-3.5.1.js" type="text/javascript"></script>
        <script src="/js/bootstrap.js"></script>
    </body>
</html>
