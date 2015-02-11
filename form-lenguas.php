<?php
	include("conect.php");
	if(isset($_POST['nombre']) && !empty($_POST['nombre']) && isset($_POST['hablantes']) && !empty($_POST['hablantes']))
	{
		$con=mysql_connect($db_host,$db_user,$db_pass)or die("problemas al conectar");
		mysql_select_db($db_name,$con)or die ("problemas al conectar la bd");
		mysql_query("insert into lenguas (nombre, hablantes) values ('$_POST[nombre]', '$_POST[hablantes]')",$con);
		echo "Datos insertados";
	}else{
		echo "Problemas al insertar datos";
	}
?>