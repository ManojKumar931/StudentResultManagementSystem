<?php
    // $conn=mysqli_connect('localhost','root','','school');
    session_start();
    include "dbconnection.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- my css file  -->
    <link rel="stylesheet" href="adminlogin.css">

    <title>Admin-Login</title>
</head>
<body>

    <header>

        <div class="content">
            <img src="../images/school logo.png" alt="logo">
            <h2>ABCD Matriculation higher secondary school</h2>
            <p>No:6,Dubai Cross Lane,Dubai Main Road,</p>
            <p>Vivekanandar Street,Dubai</p>
            <h2 id="admin-login">Admin Login</h2>
        </div>  

     </header>  


     <div class="admin-form">

            <form action="adminlogincheck.php" method="post">
                <div class="username">
                    <label >Username : </label>
                    <input type="text" name="username" id="username" placeholder="Enter Username" required oninput="this.value = this.value.toLowerCase()">
                </div>

                <div class="password">
                    <label >Password :</label>
                    <input type="password" name="password" id="password" placeholder="Enter Password" required oninput="this.value = this.value.toLowerCase()" >
                </div>

                <input type="submit" value="Login" name="submit" id="submit">

            </form>    

    </div>     
    

</body>
</html>
