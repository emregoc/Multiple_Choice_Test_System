<?php

class Database{

    private $host = "localhost";
    private $dbName = "ngsi_case";
    private $userName = "root";
    private $password = "";
    public $connection = null;

    public function getConnection(){

        $this->connection = null;
        try{

            $this->connection =  new PDO(
                "mysql:host=" . $this->host . 
                ";dbName=" . $this->dbName, $this->userName, $this->password
            );

        }
        catch(PDOException $exception){

            echo "Connection error: " . $exception->getMessage();

        }

        return $this->connection;

    }

}

?>
