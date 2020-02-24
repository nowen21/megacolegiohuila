<?php 

function get_conexion(){
	$user="root";
	$pass="";
	$host="localhost";
	$db="ensayo";
	try{

		$conexion=new PDO("mysql:host={$host};dbname={$db};charset utf-8", $user, $pass);
		return $conexion;
		$conexion->set_Attribute(PDO::ATRR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		}
		catch(PDOException $e)
		{
				echo "Error al conectar a la base de datos". $e->getMessage();
		}
}


?>