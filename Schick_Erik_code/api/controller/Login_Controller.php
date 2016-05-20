<?php 
require_once('model/Connection.php');

class Login_Controller{
	private $dbInstance;
	private $numberRows=0 ;
    
	function login($username, $password){
		$db = Database_Connection::getInstance();
        $req = $db->prepare("SELECT * FROM users WHERE username = '$username'");
        $req->execute();
        $login = $req->fetch();
          
        if($login == false) {
            return json_encode(array('status' => "login_fail"));
        }
        else {
            $pass = $login["password"];
            if($pass == $password) {
                return json_encode(array('status' => "login_success"));
            } else {
                return json_encode(array('status' => "login_fail"));
            }
        }
	}
    
	function newUser($username, $password){
        $db = Database_Connection::getInstance();

        $sql = "insert into users (`username`, `password`) VALUES ('$username', '$password')";

        $stmt = $db->prepare($sql);

        $stmt->execute();

        return json_encode(array('status' => 'user_created'));
	}
}
?>