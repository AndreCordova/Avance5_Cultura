<?php
	include("conect.php");
	$con=mysql_connect($db_host,$db_user,$db_pass)or die("problemas en server");
	mysql_select_db($db_name,$con)or die ("problemas en bd");
	$registro=mysql_query("select * from fiestas where nombre='$_POST[nombre]'")or die ("problema en consulta:".mysql_error());
	while ($reg=mysql_fetch_array($registro)){
		echo $reg['nombre']."<br>";
		echo $reg['fecha']."<br>";
		echo $reg['descripcion']."<br>";
	}
?>