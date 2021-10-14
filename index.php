<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>

<body>

    <?php

    include('Database.php');
    include('TestManager.php');

    $databaseConnection = new Database();
    $dbConnection = $databaseConnection->getConnection();
    $testManager = new TestManager($dbConnection);

    $dataList = $testManager->getDataList();

    echo '<pre>';

    $req = $_SERVER['REQUEST_METHOD'];

    if($req == 'POST')
    {

        $testManager->scoreResult($_POST);

    }
    

    ?>

    <div class="container">
        <form action = "index.php" method = "POST">
        <h1>Multiple Choice Questions Answers</h1>
        <?php 
        $i = 0;
        $count = 1;    

        foreach($dataList as $data) {
        
        ?>
            <h4>Ques <?php echo $count; ?> : <?php echo $data['question'];  ?> </h4>
            <div class="form-group">
                <ol type = "A" >
                    <li>
                        <input type="radio" name="<?php echo $data['answer1'];?>" value="<?php echo $data['answer1'];?>" /><?php echo $data['answer1'];  ?>
                    </li>
                    <li>
                        <input type="radio" name="<?php echo $data['answer2'];?>" value="<?php echo $data['answer2'];?>" /><?php echo $data['answer2'];  ?>
                    </li>
                    <li>
                        <input type="radio" name="<?php echo $data['answer3'];?>" value="<?php echo $data['answer3'];?>" /><?php echo $data['answer3'];  ?>
                    </li>
                    <li>
                        <input type="radio" name="<?php echo $data['answer4'];?>" value="<?php echo $data['answer4'];?>" /><?php echo $data['answer4'];  ?>
                    </li>
                    <li>
                        <input type="radio" name="<?php echo $data['answer5'];?>" value="<?php echo $data['answer5'];?>" /><?php echo $data['answer5'];  ?>
                    </li>
                </ol>
            </div>

            <?php
            $count++;
            $i++;
             } 
             ?>

            <br />
            
            <div class="form-group">
                <input type="submit" value="submit" name="" class="btn btn-primary" />
            </div>
        </form>
    </div>


</body>

</html>