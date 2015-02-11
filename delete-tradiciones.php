<?php
	include("conect.php");
	$con=mysql_connect($db_host,$db_user,$db_pass)or die("problemas en server");
	mysql_select_db($db_name,$con)or die ("problemas en bd");
	$reg=mysql_query("select nombre from tradiciones where nombre='$_POST[nombre]'",$con);
	if($re=mysql_fetch_array($reg))
	{
		mysql_query("delete from tradiciones where nombre='$_POST[nombre]'",$con);
		echo "Datos eliminados";
	}else{
		echo "Datos no han sido eliminados";
	}

?>