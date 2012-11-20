<html>
<head>
	<title>JAX-RS CXF REST Sample</title>
	<script type="text/javascript" src="./assets/js/jquery-1.8.3.min.js"></script>
</head>
<body>
<div>
	<h2>Search book</h2>
	<label>ISBN:</label><input type="text" id="isbn"/> (use ISBN 0321356683 to get a book)<br>	
	<input type="button" value="Search" id="searchButton">
</div>
<div>
	<h2>Book Details</h2>
	<div><label>ISBN:&nbsp;</label><span id="bookISBN"></span></div>
	<div><label>Title:&nbsp;</label><span id="bookTitle"></span></div>
	<div><label>Price:&nbsp;</label><span id="bookPrice"></span></div>
</div>
</body>
<script>
	$(document).ready(function(){
		$("#searchButton").click(function(){
			$.getJSON("http://localhost:8080/rest-sample/api/rest/v1/book/"+$("#isbn").val(), function(data){
				if(data){
					$("#bookISBN").text(data.isbn);
					$("#bookTitle").text(data.title);
					$("#bookPrice").text(data.price);
				}else{
					$("#bookISBN").text("-");
					$("#bookTitle").text("-");
					$("#bookPrice").text("-");
				}
			});
		});
	});
</script>
</html>
