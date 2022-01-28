<script type="text/javascript">
function Blank_TextField_Validator()
{
if (text_form.username.value == "")
{
   alert("Isi dulu username !");
   text_form.username.focus();
   return (false);
}
if (text_form.password.value == "")
{
   alert("Isi dulu password !");
   text_form.password.focus();
   return (false);
}
return (true);
}
-->
</script>
<!DOCTYPE html>
<html lang="en" >
<head>
  <style>
  #submitku{
  background: darkred;
  color: white;
  border-top: 0;
  border-left: 0;
  border-right: 0;
  border-bottom: 5px solid #4e4b8f;
  padding: 7px 14px;
  text-decoration: none;
  font-family: sans-serif;
  font-size: 11pt;
  border-radius: 4px;
}
</style>
  <meta charset="UTF-8">
  <title>Login Admin </title>
      <link rel="stylesheet" href="aset/login/css/style.css">
</head>
  <body >

</div>
<div class="formku">
   <div class="info">
    <h4><i class="fa fa-user"></i> Login Admin</h4><br>
  </div>
  <form class="login-form" action="login.php" method="post" name="text_form" onsubmit="return Blank_TextField_Validator()">
<input type="text" name="username" id="username" placeHolder="&#xf007;  Username" style="font-family:Arial, FontAwesome" />
<input type="password" name="password" id="password" placeHolder="&#xf023;  Password" style="font-family:Arial, FontAwesome" />
<input type="submit" name="submit" id="submitku" value="   Login   " /><br>

  </form>
</div>
</body>

</html><script>
$('input[type="password"]').on('focus', () => {
  $('*').addClass('password');
}).on('focusout', () => {
  $('*').removeClass('password');
});;
</script>
<script>
var d = document.getElementById("pakardiabetes");
d.className += " sidebar-collapse";
</script>