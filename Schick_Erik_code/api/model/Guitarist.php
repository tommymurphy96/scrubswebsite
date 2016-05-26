<?php
  require_once('Connection.php');
  class Guitarist {

    // In this case the attributes are public so that we can access them using $guitarist->id directly
    // However you can use __get and __set magic methods (see magic_methods/magic.php) to fulfill the
    //object oriented access modifiers concept
    public $id;
    public $name;
    public $guitar;
    public $favourite_song_id;
    public $experience;

    public function __construct($id, $name, $guitar, $favourite_song_id, $experience) {
      $this->id = $id;
      $this->name = $name;
      $this->guitar = $guitar;
      $this->favourite_song_id = $favourite_song_id;
      $this->experience = $experience;
    }

    public static function all() {
      $list = [];
      $db = Database_Connection::getInstance();
      $req = $db->query('SELECT * FROM guitarists');

      // Creating a list of guitarist objects from the database results
      foreach($req->fetchAll() as $guitarist) {
        $list[] = new Guitarist($guitarist['id'], $guitarist['name'], $guitarist['guitar'],$guitarist['favourite_song_id'],$guitarist['experience']);
      }
      return $list;
    }

    public static function find($id) {
      $db = Database_Connection::getInstance();
      // we make sure $id is an integer
      $id = intval($id);
      $req = $db->prepare('SELECT * FROM guitarists WHERE id = :id');
      // the query was prepared, now we replace :id with our actual $id value
      $req->execute(array('id' => $id));
      $guitarist = $req->fetch();

      return new Guitarist($guitarist['id'], $guitarist['name'], $guitarist['guitar'],$guitarist['favourite_song_id'],$guitarist['experience']);
    }
    
    public function update($set,$key){
      $conn = Database_Connection::getInstance();

      $sql = "update guitarists set $set where id=$key";

      $stmt = $conn->prepare($sql);

      $stmt->execute();

      return $stmt->rowCount();
    }


    public static function create($set){
      $conn = Database_Connection::getInstance();

      $sql = "insert into guitarists set $set";

      $stmt = $conn->prepare($sql);

      $stmt->execute();

      return $conn->lastInsertId();
    }
    
    public static function delete($key){
      $conn = Database_Connection::getInstance();

      $sql = "DELETE FROM guitarists WHERE id=$key";

      $stmt = $conn->prepare($sql);

      $stmt->execute();
    }
  }
?>