<?php

        session_start();
        include "dbconnection.php";
        // $conn=mysqli_connect("localhost","root","","school");

        $id=$_GET['id'];
        $class=$_GET['class'];
        $sec=$_GET['sec'];
        $table_name=$_SESSION['class'];

        $sql="DELETE FROM `$table_name` WHERE `id`='$id' AND `class`='$class' AND `sec`='$sec' ;";

        if(mysqli_query($conn,$sql)){

            echo "<script>alert('Successfully Deleted');</script>";
            echo "<script>location.href='admin.php'</script>";

        }

        else{
            echo "<script>alert('Not Deleted');</script>";
            echo "<script>location.href='admin.php'</script>";
        }

?>