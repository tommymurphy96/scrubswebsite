<?php
  require_once('Connection.php');
  class Song {

    // In this case the attributes are public so that we can access them using $song->id directly
    // However you can use __get and __set magic methods (see magic_methods/magic.php) to fulfill the
    //object oriented access modifiers concept
    public $id;
    public $title;
    public $artist;
    public $tuning;
    public $length;

    public function __construct($id, $title, $artist, $tuning, $length) {
      $this->id = $id;
      $this->title = $title;
      $this->artist = $artist;
      $this->tuning = $tuning;
      $this->length = $length;
    }

    public static function all() {
      $list = [];
      $db = Database_Connection::getInstance();
      $req = $db->query('SELECT * FROM songs');

      // Creating a list of song objects from the database results
      foreach($req->fetchAll() as $song) {
        $list[] = new Song($song['id'], $song['title'], $song['artist'],$song['tuning'],$song['length']);
      }
      return $list;
    }

    public static function find($id) {
      $db = Database_Connection::getInstance();
      // we make sure $id is an integer
      $id = intval($id);
      $req = $db->prepare('SELECT * FROM songs WHERE id = :id');
      // the query was prepared, now we replace :id with our actual $id value
      $req->execute(array('id' => $id));
      $song = $req->fetch();

      return new Song($song['id'], $song['title'], $song['artist'],$song['tuning'],$song['length']);
    }
    
    public function update($set,$key){
      $conn = Database_Connection::getInstance();

      $sql = "update songs set $set where id=$key";

      $stmt = $conn->prepare($sql);

      $stmt->execute();

      return $stmt->rowCount();
    }


    public static function create($set){
      $conn = Database_Connection::getInstance();

      $sql = "insert into songs set $set";

      $stmt = $conn->prepare($sql);

      $stmt->execute();

      return $conn->lastInsertId();
    }
    
    public static function delete($key){
      $conn = Database_Connection::getInstance();

      $sql = "DELETE FROM songs WHERE id=$key";

      $stmt = $conn->prepare($sql);

      $stmt->execute();
    }
  }
?>