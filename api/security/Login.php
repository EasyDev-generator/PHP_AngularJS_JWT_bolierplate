<?php

require './config/dbManage_Film_Example_dbManager.php';

$app = new \Slim\Slim();

$app->get('/Login',	function () use ($app){
	$params= array(
			'user' => $app->environment['HTTP_USER'],
			'pass' => $app->environment['HTTP_PASS'],
	);


	// CUSTOMIZE THIS FUNCTION
	// Get your data from DB or whatever you want
	$response = array();
	$response['user']="Administrator";
	$response['pass']="pwd:";
	$response['roles']=["ADMIN"];
	echo json_encode($response);

	//EXAMPLE
	//makeQuery( "SELECT * FROM user WHERE user=:user AND pass=:pass LIMIT 1" , $params);

});

?>