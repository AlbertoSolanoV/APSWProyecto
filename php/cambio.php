
<?php
/*
* Convertir datos de la tabla contact en JSON
* Powered by @evilnapsis
*/
$con = new mysqli('','','','');


if($con){
	$sql = "call listar_codigos_cambio();";
	$query = $con->query($sql);
	$data = array();
	while($r = $query->fetch_assoc()){
		$data[] = $r;
	}
	echo json_encode(array("contactos"=>$data));
	$con = NULL;
}
?>