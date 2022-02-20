<?php
    session_start();
    include "dbconnection.php";
    // $conn=mysqli_connect("localhost","root","","school");

    if(isset($_POST['submit'])){
        $username=$_POST['username'];
        $password=$_POST['password'];
        
        $sql="SELECT * FROM `admin` WHERE `username`='$username' AND `password`='$password' ;";

        $result=mysqli_query($conn,$sql);
        $numresult=mysqli_num_rows($result);

        if($numresult==1){
            echo "<script>window.alert('Login Successful')</script>";
            $_SESSION['username']=$username;
            echo "<script>location.href='admin.php'</script>";

        }
        else{
            echo "<script>window.alert('Invalid Login details')</script>";
            echo "<script>location.href='adminlogin.php'</script>";
        } 
    }
        ?>