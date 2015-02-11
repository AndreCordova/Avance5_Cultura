<?php
	include("conect.php");
	if(isset($_POST['nombre']) && !empty($_POST['nombre']) && isset($_POST['ingredientes']) && !empty($_POST['ingredientes']) && isset($_POST['descripcion']) && !empty($_POST['descripcion']))
	{
		$con=mysql_connect($db_host,$db_user,$db_pass)or die("problemas al conectar");
		mysql_select_db($db_name,$con)or die ("problemas al conectar la bd");
		mysql_query("insert into gastronomia (nombre, ingredientes, descripcion) values ('$_POST[nombre]', '$_POST[ingredientes]', '$_POST[descripcion]')",$con);
		echo "Datos insertados";
	}else{
		echo "Problemas al insertar datos";
	}
?>