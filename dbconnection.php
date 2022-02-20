<?php

    $conn = mysqli_connect("localhost","root","","school");

    if($conn){
        echo "Connected";
    }
    else{
        echo "Not Connected";
    }


?>