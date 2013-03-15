<html>
<head>
<title>Please log in</title>
</head>
<body>
<script language="javascript">
function pasuser(form) {
if (form.id.value=="admin") { 
if (form.pass.value=="student") {              
location="/hello" 
} else {
alert("Invalid Password")
}
} else {  alert("Invalid UserID")
}
}
</script>

<center>
<table bgcolor="white" cellpadding="5>
<tr><td colspan="1" ><center>Please log in</center></td></tr>
<tr><td>UserID:</td><td><form name="login"><input name="id" type="text"></td></tr>
<tr><td>Password:</td><td><input name="pass" type="password"></td></tr>
<tr><td><center><input type="button" value="Login" onClick="pasuser(this.form)"></center></td></tr>
</body>
</html>