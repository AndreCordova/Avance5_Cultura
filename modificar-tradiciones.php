<?php
	include("conect.php");
	$con=mysql_connect($db_host,$db_user,$db_pass)or die("problemas en server");
	mysql_select_db($db_name,$con)or die ("problemas en bd");
	mysql_query("update tradiciones set nombre='$_POST[nuevo]' where nombre='$_POST[viejo]'",$con) or die (mysql_error());
	echo "Actualizacion correcta";
?>