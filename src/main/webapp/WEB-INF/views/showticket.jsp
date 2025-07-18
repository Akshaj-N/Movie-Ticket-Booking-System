<jsp:include page="header.jsp"></jsp:include>
<style>
    th,h4{
        color:var(--theme-title);
    }
</style>
<div class="container" style="margin-top: 80px;">
    <button id="print" class="btn btn-primary btn-sm my-2 px-3" onclick="print()">Print</button>
    <div class="row">
        <div class="col-sm-6">
            <div class="border p-2">
                <h4>Booking Ticket</h4>
                <table class="table table-sm">
                    <tr>
                        <th>Booking Id</th>
                        <th>${bk.bid }</th>
                    </tr>
                    <tr>
                        <th>Customer Id</th>
                        <th>${bk.customer.uname }</th>
                    </tr>
                    <tr>
                        <th>Theatre Name</th>
                        <th>${bk.theatre.tname }</th>
                    </tr>
                    <tr>
                        <th>Show Information</th>
                        <th>${bk.show.showname } (${bk.show.starttime }-${bk.show.endtime })</th>
                    </tr>
                    <tr>
                        <th>Booking Date</th>
                        <th>${bk.bdate }</th>
                    </tr>
                    <tr>
                        <th>No of Seats</th>
                        <th>${bk.noseat }</th>
                    </tr>
                    <tr>
                        <th>Seats</th>
                        <th>${bk.seats }</th>
                    </tr>
                    <tr>
                        <th>Amount</th>
                        <th>&#8377; ${bk.amount }</th>
                    </tr>
                </table>            
            </div>
        </div>
    </div>

</div>
<jsp:include page="footer.jsp"></jsp:include>