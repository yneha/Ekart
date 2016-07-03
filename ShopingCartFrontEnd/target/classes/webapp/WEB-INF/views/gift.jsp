<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<title>Gift Cards</title>
</head>
<body>
<div class="container-fluid">
<h1>FUNTASTIC GIFT VOUCHER</h1>
<h3>
Gift Card

Send Gift Cards to multiple recipients instantly. Last minute gifting is now a few clicks away! 
</h3>
<ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Buy a Gift Card</a></li>
    <li><a data-toggle="tab" href="#menu1">Check Balance</a></li>
    <li><a data-toggle="tab" href="#menu2">FAQ's</a></li>
   
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>Buy a Gift Card</h3>
      <p>Enter Gift Card Details
<br>
Gift Cards can be used for purchases from Sellers listed on flipkart.com. Card value can range from between Rs 25 and Rs 10000. </p>

<form:form class="form-horizontal" role="form" action=""
			method="post">
			<div class="form-group">
				<label class="control-label col-sm-3" for="userid">Enter Receipients Email:</label>
				<div class="col-sm-3">
					<input type="text" name="userid" placeholder="Email" class="form-control"
						>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="password">Confirm Email:</label>
				<div class="col-sm-3">
					<input type="password" name="password" class="form-control"
						placeholder="Retype-Email" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="password">Enter Value in Rs.</label>
				<div class="col-sm-3">
					<input type="password" name="password" class="form-control"
						placeholder="Amount" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="password">No. of vouchers</label>
				<div class="col-sm-3">
					<input type="password" name="password" class="form-control"
						placeholder="Quantity" required>
				</div>
			</div>

<button type="submit" class="btn btn-success">BUY VOUCHER</button>
<button type="reset" class="btn btn-danger">RESET</button>
</form:form>
<br><br><br><br><br><br><hr>
<h6 style="color:grey">
TERMS AND CONDITIONS APPLICABLE ON GIFT CARDS
<ol>
<li>Flipkart Gift Cards ('GCs') are issued by QwikCilver Solutions Pvt. Ltd which is a private limited company incorporated under the laws of India, and is authorized by the Reserve Bank of India ("RBI") to issue such Gift Cards.</li>
<li>The Gift Cards can be redeemed online against Sellers listed on www.flipkart.com or Flipkart Mobile App only.</li>
<li>Gift Cards can be purchased on www.flipkart.com or Flipkart Mobile App using the following payment modes only - Credit Card, Debit Card and Net Banking.</li>
<li>Gift Cards can be redeemed by selecting the payment mode as Gift Card. Gift Card payment option is not available for single order with multiple sellers.</li>
<li>Gift Cards cannot be used to purchase other Gift Cards or Flipkart First subscriptions.</li>
<li>Orders placed using Gift Card(s) cannot be cancelled at a later point in time.</li>
<li>If the order value exceeds the Gift Card amount, the balance must be paid by Credit Card/Debit Card/Internet Banking. Cash on Delivery payment option cannot be used to pay the balance amount.</li>
<li>If the order value is less than the amount of the Gift Card, the outstanding balance (after deduction of order value) will reflect under the same Gift Card and can be used for subsequent transactions.</li>
<li>Gift Cards will expire after 12 months from the date of issue and any corresponding unused balance shall be forfeited thereafter.</li>
<li>Gift Cards cannot be redeemed for Cash or Credit.</li>
<li>You are solely responsible for the safety and security of the Gift Cards. Flipkart.com/QwikCilver Solutions are not responsible for any acts of omission or commission if Gift Card is lost, stolen or used without permission.</li>
<li>Once the GC has been sent to you, you are bound to protect the GC PIN or GC number as confidential. In the event of any misuse of GC due to loss of any such confidential details due to the fault of the purchaser, Flipkart/ QwikCilver Solutions Pvt. Ltd shall not be responsible for the same and no refund can be issued.</li>
<li>You can combine a maximum of 15 Gift Cards in a single order at the time of checkout. In case you wish to redeem more number of GCs on a single order, please add your Gift Cards to the Wallet.</li>
<li>Flipkart.com/QwikCilver Solutions assume no responsibility for the products purchased using the Gift Cards and any liability thereof is expressly disclaimed.</li>
<li>Validity of Gift Cards cannot be extended, new Gift Cards cannot be provided against the expired/unused Gift Cards.</li>
<li>Qwikcilver/Flipkart reserves the right to cancel the GCs if the same have been found to be purchased with fraudulent means. In such cases, the funds shall be credited back to the same source from where these were received.</li>
<li>In the event the beneficiary/Know Your Customer ("KYC") details as per RBI Guidelines are found to be incorrect/insufficient, Flipkart.com/QwikCilver Solutions retain the right to cancel the Gift Card issued.</li>
<li>You agree and understand that Gift Cards are a pre-paid payment Instrument subjected to regulations by RBI Under the RBI guidelines, Flipkart/ QwikCilver Solutions Pvt. Ltd may be required to share KYC details of the purchaser/ redeemer of the Gift Card and/or any other information with relation to the purchase of the Gift Cards and/or transaction undertaken using the Gift Card with RBI or such statutory authorities. Flipkart/ QwikCilver Solutions Pvt. Ltd may contact the purchaser/redeemer of the GC for any such information.</li>
<li>There is no fee or other charges associated with Gift Card purchase.</li>
<li>Gift Cards cannot be reloaded or resold.</li>
</ol>
</h6>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>CHECK YOUR BALANCE</h3>
      <p>
View your Gift Card Details<br>

Check your gift card balance and validity.</p>
<form:form class="form-horizontal" role="form" action=""
			method="post">
			<div class="form-group">
				<label class="control-label col-sm-3" for="userid">GIFT CARD NUMBER:</label>
				<div class="col-sm-3">
					<input type="text" name="userid" class="form-control"
						>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="password">CARD PIN:</label>
				<div class="col-sm-3">
					<input type="password" name="password" class="form-control"
						placeholder="" required>
				</div>
			</div>
			
<button type="submit" class="btn btn-success">GET BALANCE</button>
<button type="reset" class="btn btn-danger">RESET</button></form:form>
<br><br><br><br><br><br><hr>
<h6 style="color:grey">
TERMS AND CONDITIONS APPLICABLE ON GIFT CARDS
<ol>
<li>Flipkart Gift Cards ('GCs') are issued by QwikCilver Solutions Pvt. Ltd which is a private limited company incorporated under the laws of India, and is authorized by the Reserve Bank of India ("RBI") to issue such Gift Cards.</li>
<li>The Gift Cards can be redeemed online against Sellers listed on www.flipkart.com or Flipkart Mobile App only.</li>
<li>Gift Cards can be purchased on www.flipkart.com or Flipkart Mobile App using the following payment modes only - Credit Card, Debit Card and Net Banking.</li>
<li>Gift Cards can be redeemed by selecting the payment mode as Gift Card. Gift Card payment option is not available for single order with multiple sellers.</li>
<li>Gift Cards cannot be used to purchase other Gift Cards or Flipkart First subscriptions.</li>
<li>Orders placed using Gift Card(s) cannot be cancelled at a later point in time.</li>
<li>If the order value exceeds the Gift Card amount, the balance must be paid by Credit Card/Debit Card/Internet Banking. Cash on Delivery payment option cannot be used to pay the balance amount.</li>
<li>If the order value is less than the amount of the Gift Card, the outstanding balance (after deduction of order value) will reflect under the same Gift Card and can be used for subsequent transactions.</li>
<li>Gift Cards will expire after 12 months from the date of issue and any corresponding unused balance shall be forfeited thereafter.</li>
<li>Gift Cards cannot be redeemed for Cash or Credit.</li>
<li>You are solely responsible for the safety and security of the Gift Cards. Flipkart.com/QwikCilver Solutions are not responsible for any acts of omission or commission if Gift Card is lost, stolen or used without permission.</li>
<li>Once the GC has been sent to you, you are bound to protect the GC PIN or GC number as confidential. In the event of any misuse of GC due to loss of any such confidential details due to the fault of the purchaser, Flipkart/ QwikCilver Solutions Pvt. Ltd shall not be responsible for the same and no refund can be issued.</li>
<li>You can combine a maximum of 15 Gift Cards in a single order at the time of checkout. In case you wish to redeem more number of GCs on a single order, please add your Gift Cards to the Wallet.</li>
<li>Flipkart.com/QwikCilver Solutions assume no responsibility for the products purchased using the Gift Cards and any liability thereof is expressly disclaimed.</li>
<li>Validity of Gift Cards cannot be extended, new Gift Cards cannot be provided against the expired/unused Gift Cards.</li>
<li>Qwikcilver/Flipkart reserves the right to cancel the GCs if the same have been found to be purchased with fraudulent means. In such cases, the funds shall be credited back to the same source from where these were received.</li>
<li>In the event the beneficiary/Know Your Customer ("KYC") details as per RBI Guidelines are found to be incorrect/insufficient, Flipkart.com/QwikCilver Solutions retain the right to cancel the Gift Card issued.</li>
<li>You agree and understand that Gift Cards are a pre-paid payment Instrument subjected to regulations by RBI Under the RBI guidelines, Flipkart/ QwikCilver Solutions Pvt. Ltd may be required to share KYC details of the purchaser/ redeemer of the Gift Card and/or any other information with relation to the purchase of the Gift Cards and/or transaction undertaken using the Gift Card with RBI or such statutory authorities. Flipkart/ QwikCilver Solutions Pvt. Ltd may contact the purchaser/redeemer of the GC for any such information.</li>
<li>There is no fee or other charges associated with Gift Card purchase.</li>
<li>Gift Cards cannot be reloaded or resold.</li>
</ol>
</h6>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>FREQUENTLY ASKED QUESTIONS</h3>
      <p>How do I buy / gift a Flipkart Gift Card?

    Enter the name and email address of the person you want to send the Flipkart Gift Card to.
    Enter the value of the card you would like to purchase then click "Proceed To Pay".
    You'll now see the payment options. You can pay by Credit Card / Debit Card / ATM Card / Netbanking. Proceed to pay using your preferred choice. If you need to make any changes to the Gift Card value, you can always click "Edit" to modify it.

Complete the checkout process to receive an email with the Gift Card details.</p>
<p>How do I pay with a Flipkart Gift Card?

    Go to flipkart.com and select the items you want to purchase. When you are ready to checkout, click "Proceed To Pay".
    Select the "Pay By Gift Card" option.
    Enter your 16-digit gift card number and the corresponding 6-digit PIN number when prompted.

If the Gift Card value doesn't cover your Order total, you will be prompted to select an additional payment method.

NOTE: Funds will be deducted from your Flipkart Gift Card at the time you place your order. In case of any adjustment or cancellation at a later stage, we will credit the refund back to your Gift Card.</p>
    </div>
    
  </div>
</div>


</body>
</html>