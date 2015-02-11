<?php
	include("conect.php");
	if(isset($_POST['nombre']) && !empty($_POST['nombre']) && isset($_POST['habitantes']) && !empty($_POST['habitantes']))
	{
		$con=mysql_connect($db_host,$db_user,$db_pass)or die("problemas al conectar");
		mysql_select_db($db_name,$con)or die ("problemas al conectar la bd");
		mysql_query("insert into etnias (nombre, habitantes) values ('$_POST[nombre]', '$_POST[habitantes]')",$con);
		echo "Datos insertados";
	}else{
		echo "Problemas al insertar datos";
	}
?>