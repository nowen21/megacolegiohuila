<?php
session_start();
extract($_REQUEST);
if(!isset($x)){
	session_destroy();
}
else{

	$msj="Contraseña y/o Usuario Incorrectos";

}





?>


<!DOCTYPE html>
<html>
<head>
	<title>Sistema de Gestion Escolar</title>

  <meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="bootstrap-3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="bootstrap-3.3.7/css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="bootstrap-3.3.7/css/main.css">

   <!--   PRIMERO JQUERY   -->
  <script src="bootstrap-3.3.7/js/jquery-3.1.1.min.js"></script>
  <!--   DESPUES BOOTSTRAP.JS -->
    <script src="bootstrap-3.3.7/js/bootstrap.js"></script>
    <link rel="stylesheet" href="css/main.css">



</head>
<body name="bod" >

<div class="container" >

<center>
<div class="panel panel-primary " style="width:35%;">
<div class="panel-heading"  > Iniciar Sesion en SIGE</div>


  <div class="panel-body" >

   <form action="php/consulta.php" method="POST" autocomplete="off" class="insertar ">
   <label for=""> Usuario</label><br>

   <div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user glyphicon
  "></span></span>
  <input name="cjusuario" type="text" class="form-control" placeholder="Usuario" aria-describedby="basic-addon1" required="">
</div>
   	 <label for="">Contraseña</label><br>
   <div class="input-group">
  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-lock"></span></span>
  <input name="cjpassword" type="password" class="form-control" placeholder="Contraseña" aria-describedby="basic-addon1" required="">
</div><br>
  
<input type="submit" class="btn btn-primary" value="Enviar"> <input type="reset" class="btn btn-danger" value="Borrar">

   </form>


  </div>
   <?php 
if(isset($msj)){
	echo "<div class='alert alert-danger'>";
	echo $msj;
	echo "</div>";
     }


 ?>
 </div>



</center>





</div>



</body>
</html>
