<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery/jquery-2.4.4.min.js"></script>
<script src="js/jquery/jquery.autocomplete.js"></script>
<script>
jQuery(function(){
$("#country").autocomplete("list.jsp");
});
</script>

</head>
<body>
<br><br><center>
<font face="verdana" size="2">
<font size="4">Java(jsp)/jQuery Autocompleter Example ::: <font color="#809e02">Java4s.com</font></font>
<br><br><br><br>

Select Country   :
<input type="text" id="country" name="country"/>

</font>
</body>
</html>