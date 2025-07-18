<jsp:include page="header.jsp"></jsp:include>
<style>
    th,h4,label{
        color:var(--theme-title);
    }
</style>

<div class="container" style="margin-top: 70px;">
    <div class="creditCardForm">    
        <h2 class="heading">Confirm Ticket</h2>
    <div class="payment row">
        <div class="col-sm-6">
        <form action="/showticket" method="post">
        <input type="hidden" name="bid" value="${bk.bid }">
            <div class="form-group owner">
                <label for="owner">Name on Card</label>
                <input type="text" class="form-control" id="owner">
            </div>
            <div class="form-group CVV">
                <label for="cvv">CVV</label>
                <input type="text" maxlength="3" class="form-control" id="cvv">
            </div>
            <div class="form-group" id="card-number-field">
                <label for="cardNumber">Card Number</label>
                <input type="text" maxlength="16" class="form-control" id="cardNumber">
            </div>
            <div class="form-group row" id="expiration-date">
                <label class="col-sm-4">Expiration Date</label>
                <div class="col-sm-4">
                <select class="form-control">
                    <option value="01">January</option>
                    <option value="02">February </option>
                    <option value="03">March</option>
                    <option value="04">April</option>
                    <option value="05">May</option>
                    <option value="06">June</option>
                    <option value="07">July</option>
                    <option value="08">August</option>
                    <option value="09">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>
                </select>
                </div>
                <div class="col-sm-4">
                <select class="form-control">
                    <option value="21"> 2021</option>
                    <option value="21"> 2022</option>
                    <option value="21"> 2023</option>
                    <option value="21"> 2024</option>
                    <option value="21"> 2025</option>
                </select>
                </div>
            </div>
            <div class="form-group" id="credit_cards">
                <img src="/images/visa.jpg" id="visa">
                <img src="/images/mastercard.jpg" id="mastercard">
                <img src="/images/amex.jpg" id="amex">
            </div>
            <div class="form-group" id="pay-now">                
                <button class="btn btn-primary" id="confirm-purchase">Confirm Order</button>
            </div>
        </form>
        </div>
    </div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>