<?php
    $conn = mysqli_connect(
        'docker-mysql-test.c2xagqgtpzeb.ap-south-1.rds.amazonaws.com',
        'user',
        'password',
        'TEST',
        '3306'
    );
    print_r($conn);
    if(mysqli_connect_errno()){
        echo "Failed to connect to MySQL: ".mysqli_connect_error();
    }
    $sql = "SELECT VERSION()";

    $result = mysqli_query($conn, $sql);

    $row = mysqli_fetch_array($result);


    print_r($row["VERSION()"]);
?>
