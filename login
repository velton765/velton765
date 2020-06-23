<?php 
require_once 'classes/usuarios.php';
$u = new usuario;
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script> 
<title>login</title> 
<link href="https://fonts.googleapis.com/css2?family=Abel&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<style>
input{
display:block;
height: 40px;
width: 250px;
margin: 10px;
border-radius: 10px;
border: 1px;
font-size: 12pt;
padding: 1px 5px;
background-color: rgba(255, 255, 255,0.05 );
color: rgb(253, 250, 250);
text-decoration: none;
}

body{
background-color: black;
font-family: 'Abel', sans-serif;
}
div#corpo-form{
background-color: transparent;
right: 500px;
top: 180px;
position: absolute;
}

div#corpo-form h1{
color: white;
text-align: center;
padding: 20px;
}

a{
color: white;
text-decoration: none;
display: block;
}

a:hover{
color: rgb(93, 93, 230);
text-decoration: underline;
}

input[type=submit]{
background-color: white;
color: black;
cursor: pointer;
}

input[type=submit]:hover{
background-color: rgb(33, 124, 243);
color: black;
cursor: pointer;
}
</style>
<title>Login/E-Sports</title>
</head>
<body>
<div id="corpo-form">
<h1>Login</h1>
<form method="POST">
<input type="email" placeholder="Usuario" name="email"> 
<input type="password" placeholder="Senha" name="senha">
<input type="submit" value="ACESSAR"> 
<a href="/run/user/1000/gvfs/google-drive:host=gmail.com,user=veltonlopesdealmeida78/1eAKkpBAvqPMwK-45viWg66qARnN_YeXN/1jgWvMlp1D0e1UCWCmvP_gOdV2eocfjM-">Ainda não e inscrito?<strong>cadastre-se já</strong> </a>
</form> 
</div>

<?php
if(isset($_POST['nome']))
{
$email = addslashes($_POST['email']);
$senha = addslashes($_POST['senha']);

if( !empty($email) && !empty($senha))
{
$u->conectar("login","localhost","root","");
if($u->msgErro == "")
{
if($u->logar($email,$senha))
{
header("location: /run/user/1000/gvfs/google-drive:host=gmail.com,user=veltonlopesdealmeida78/1eAKkpBAvqPMwK-45viWg66qARnN_YeXN/1gXyFKyGK7VrGOZREQuGKF4bGeDkIp4mF");
}
else
{
?>
<div class="msg-erro"> 
echo "Email e/ou senha estão incorretos!";
</div>
<?php
}
}
else
{
?>
<div>
<?php echo "Erro:".$u->msgErro; ?>
</div>
<?php
}
}else
{
?>
<div class="msg-erro">
echo "Preencha todos os campos!";
</div>
<?php
}
}
?>
</body>
</html>
