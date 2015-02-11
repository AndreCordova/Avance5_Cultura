<?php
	include("conect.php");
	if(isset($_POST['nombre']) && !empty($_POST['nombre']) && isset($_POST['fecha']) && !empty($_POST['fecha']) && isset($_POST['descripcion']) && !empty($_POST['descripcion']))
	{
		$con=mysql_connect($db_host,$db_user,$db_pass)or die("problemas al conectar");
		mysql_select_db($db_name,$con)or die ("problemas al conectar la bd");
		mysql_query("insert into tradiciones (nombre, fecha, descripcion) values ('$_POST[nombre]', '$_POST[fecha]', '$_POST[descripcion]')",$con);
		echo "Datos insertados";
	}else{
		echo "Problemas al insertar datos";
	}
?>