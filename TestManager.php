<?php

    include('iTestManager.php');

    class TestManager implements iTestManager{

        private $dbConnection;


        public function __construct($dbConnection){

            $this->dbConnection = $dbConnection;
            
        }


        public function getDataList(){

            $query = " SELECT * from ngsi_case.questions ORDER BY RAND() LIMIT 10";
            $dbList = $this->dbConnection->query($query);
            $dataList = [];
            $i = 0;

            foreach($dbList as $data){

                $dataList[$i] = $data;
                $i++;
            }


            return $dataList;
            
        }

        public function scoreResult($answerResult){
            
            $query = " SELECT * from ngsi_case.questions ";
            $dbList = $this->dbConnection->query($query);   
            
            $trueDataList = [];
            $i = 0;

            foreach($dbList as $data){
                $trueDataList[$i] = $data['true_answer'];
                $i++;
            }

            $j = 0;
            $score = 0;
            $totalScore = 0;
            $dataCount = count($trueDataList);
            
            foreach($answerResult as $aa){

                
                for($k = 0 ; $k < $dataCount ; $k++){

                    if($aa == $trueDataList[$k])
                    {

                        $score++;
                        $totalScore = 10 * $score;
                      
                    }

                }

                $j++;

            }
          
            echo $this->addScore($score, $totalScore);

        }

        public function addScore($score, $totalScore){

            $sql = "INSERT INTO ngsi_case.scores (id, score, true_score_count)
                            VALUES ('', '$score', '$totalScore')"; 

            $this->dbConnection->query($sql);

            return "<script type='text/javascript'>alert('bildiğiniz soru sayısı =  $score toplam puanınız =  $totalScore');</script>";

        }

    }


?>