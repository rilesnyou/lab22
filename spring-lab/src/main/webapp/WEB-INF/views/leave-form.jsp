<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<div>

		<h3>Enter your name: </h3>

		<form>

			<input type="text" name="name" />
			
		<h3>Comment</h3>
			<textarea name="reviews" rows="10" cols="30"></textarea>

			
		<h3>Rating</h3>
		<input type="radio" id="5" name="rating" value="5">
		<label for="5">5 (best)</label><br>
		<input type="radio" id="4" name="rating" value="4">
		<label for="4">4 (pretty good)</label><br>
		<input type="radio" id="3" name="rating" value="3">
		<label for="3">3 (eh)</label><br>
		<input type="radio" id="2" name="rating" value="2">
		<label for="2">2 (not the best)</label><br>
		<input type="radio" id="1" name="rating" value="1">
		<label for="1">1 (worst)</label><br>
		
		</form>
		
		<ul>
		<li><a href="/leave-rev-result"><button type="submit">Submit</button><br></a></li>
		<li><a href="/">Nevermind</a></li></ul>


	</div>


</body>
</html>