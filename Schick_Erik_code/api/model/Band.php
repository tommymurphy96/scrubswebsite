<?php
  require_once('Connection.php');
  class Band {

    // In this case the attributes are public so that we can access them using $song->id directly
    // However you can use __get and __set magic methods (see magic_methods/magic.php) to fulfill the
    //object oriented access modifiers concept
    public $id;
    public $name;
    public $location;
    public $guitarist_id;

    public function __construct($id, $name, $location, $guitarist_id) {
      $this->id = $id;
      $this->name = $name;
      $this->location = $location;
      $this->guitarist_id = $guitarist_id;
    }

    public static function all() {
      $list = [];
      $db = Database_Connection::getInstance();
      $req = $db->query('SELECT * FROM bands');

      // Creating a list of song objects from the database results
      foreach($req->fetchAll() as $song) {
        $list[] = new Band($song['id'], $song['name'], $song['location'],$song['guitarist_id']);
      }
      return $list;
    }

    public static function find($id) {
      $db = Database_Connection::getInstance();
      // we make sure $id is an integer
      $id = intval($id);
      $req = $db->prepare('SELECT * FROM bands WHERE id = :id');
      // the query was prepared, now we replace :id with our actual $id value
      $req->execute(array('id' => $id));
      $song = $req->fetch();

      return new Band($song['id'], $song['name'], $song['location'],$song['guitarist_id']);
    }
    
    public function update($set,$key){
      $conn = Database_Connection::getInstance();

      $sql = "update bands set $set where id=$key";

      $stmt = $conn->prepare($sql);

      $stmt->execute();

      return $stmt->rowCount();
    }


    public static function create($set){
      $conn = Database_Connection::getInstance();

      $sql = "insert into bands set $set";

      $stmt = $conn->prepare($sql);

      $stmt->execute();

      return $conn->lastInsertId();
    }
    
    public static function delete($key){
      $conn = Database_Connection::getInstance();

      $sql = "DELETE FROM bands WHERE id=$key";

      $stmt = $conn->prepare($sql);

      $stmt->execute();
    }
  }
?>