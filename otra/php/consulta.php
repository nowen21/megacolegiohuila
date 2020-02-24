<?php 
session_start();
extract($_REQUEST);
require "conexion.php";
$conexion=get_conexion();
$sql= "SELECT  nomusuario, nomusuario FROM tbl_acceso WHERE nomusuario=? AND passwusuario=?";
if($resultado = $conexion->prepare($sql))
{
	$pass=sha1($_REQUEST['cjpassword']);
	$login = $_REQUEST['cjusuario'];
	$resultado->bindParam(1, $login);
	$resultado->bindParam(2, $pass);
	$resultado->execute();

	$existe= $resultado->rowCount();

	if($existe == 1)
	{
		$registros = $resultado->fetchAll();
		foreach($registros as $row){
				$_SESSION['nombre']=$row['nomusuario'];
				header("location:../panel.php");
		}
	}
	else{
		header("location:../index.php?x=1");
	}

}

 ?>