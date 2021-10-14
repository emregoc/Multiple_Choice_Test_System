<?php

    interface iTestManager{


        public function getDataList();
        public function scoreResult($answerResult);
        public function addScore($score, $totalScore);


    }

?>