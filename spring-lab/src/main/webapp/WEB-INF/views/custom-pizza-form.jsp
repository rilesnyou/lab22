<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

	<h3 style="font-size: 35px">Build a pizza!</h3>
	<p style="font-size: 30px">
		<b>Size</b>
				</p>
				
	<form action="/cus-piz-res">
		<input type="radio" id="size1" name="size" value="small"> <label
			style="font-size: 20px" for="size1">small pizza ($7 + $0.50
			per topping)</label><br> <input type="radio" id="size2" name="size"
			value="medium"> <label style="font-size: 20px" for="size2">medium
			pizza ($10 + $1.00 per topping)</label><br> <input type="radio"
			id="size3" name="size" value="large"> <label
			style="font-size: 20px" for="size3">large pizza ($12 + $1.25
			per topping)</label><br> <input type="radio" id="size4" name="size"
			value="xl"> <label style="font-size: 20px" for="size4">xtra
			large pizza ($15 + $1.50 per topping)</label><br>
	</form>
	<h3 style="font-size: 25px">How many toppings?</h3>
	<form>

		<input type="text" id="tops" name="toppings"> <label
			style="font-size: 20px" for="tops"># of toppings.</label>
	</form>
	<ul>
		<c:forEach items="${toppings}" var="toppings">

			<li><c:out value="${toppings}" /></li>
		</c:forEach>
	</ul>
	<form>
		<input type="checkbox" id="gluten" name="gluten"> <b><label
			style="font-size: 20px" for="gluten">Gluten-free crust?
				($2.00 extra any size)</label></b>
	</form>

	<form>
		<h3 style="font-size: 30px">Special Instructions(Optional)</h3>
		<textarea name="special" rows="10" cols="30"></textarea>

	</form>
	<ul>
		<li><a href="/cus-piz-res"><button type="submit">Submit</button></a></li>
		<li><a href="/">Return to homepage</a></li>
	</ul>

</body>
</html>