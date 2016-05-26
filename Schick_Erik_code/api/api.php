<?php
/*
Example of a basic Restful web service.  With basic route managing
Ref: https://www.leaseweb.com/labs/2015/10/creating-a-simple-rest-api-in-php/
Ref: https://www.youtube.com/watch?v=cAkWvb2V2CQ 

Ref for sintaxis: http://www.php-fig.org/psr/psr-1/
*/

require_once('controller/Song_Controller.php');
require_once('controller/Guitarist_Controller.php');
require_once('controller/Band_Controller.php');
require_once('controller/Login_Controller.php');

function getCurrentUri()
  {
    $basepath = implode('/', array_slice(explode('/', $_SERVER['SCRIPT_NAME']), 0)) . '/';
    $uri = substr($_SERVER['REQUEST_URI'], strlen($basepath));

    if (strstr($uri, '?')) $uri = substr($uri, 0, strpos($uri, '?'));
    $uri = '/' . trim($uri, '/');
    return $uri;
  }

  $base_url = getCurrentUri();

  $routes = array();
  $base_routes = explode('/', $base_url);


  foreach($base_routes as $route)
  {
    if(trim($route) != '')
      
      //Match regular expresssions Push one or more elements onto the end of array
      array_push($routes,$route);
  }
  
  $method = $_SERVER['REQUEST_METHOD'];

 /*
  Now, $routes will contain all the routes. $routes[0] will correspond to first route. For e.g. in above example $routes[0] is search, $routes[1] is book and $routes[2] is fitzgerald
  */
  if (preg_match('/[a-z]/',$routes[0]))
  {
  	if($routes[0]=="songs")
  	{
        $obj_Controller= new Song_Controller();
  		if(isset($routes[1]))
		{
			if(preg_match('/[0-9]*/',$routes[1]))
			{
			  $obj_Controller->setParameters($routes);
			}
		}
		$input = json_decode(file_get_contents('php://input'),true);
		echo ($obj_Controller->setQuery($method,$input));
	}
    
    if($routes[0]=="guitarists")
  	{
        $obj_Controller= new Guitarist_Controller();
  		if(isset($routes[1]))
		{
			if(preg_match('/[0-9]*/',$routes[1]))
			{
			  $obj_Controller->setParameters($routes);
			}
		}
		$input = json_decode(file_get_contents('php://input'),true);
		echo ($obj_Controller->setQuery($method,$input));
	}
    
    if($routes[0]=="bands")
  	{
        $obj_Controller= new Band_Controller();
  		if(isset($routes[1]))
		{
			if(preg_match('/[0-9]*/',$routes[1]))
			{
			  $obj_Controller->setParameters($routes);
			}
		}
		$input = json_decode(file_get_contents('php://input'),true);
		echo ($obj_Controller->setQuery($method,$input));
	}
    
    if($routes[0]=="login"){
        $obj_Controller = new Login_Controller();
        switch ($method) {
			case 'POST': // Log in
	          	$data = json_decode(file_get_contents('php://input'),true);
                echo $obj_Controller->login($data['username'], $data['password']);
          		break;
          	case 'PUT': // New user
                $data = json_decode(file_get_contents('php://input'),true);
                echo $obj_Controller->newUser($data['username'], $data['password']);
            	break;
        }
    }
  }

?>
