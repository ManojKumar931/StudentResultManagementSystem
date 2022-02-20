<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- my css file  -->
    <link rel="stylesheet" href="updatestudentresult.css">

    <title>Update Student</title>
</head>
<body>
    <?php
    session_start();
    include "dbconnection.php";
        // $conn=mysqli_connect("localhost","root","","school");

        $id=$_GET['id'];
        $class=$_GET['class'];
        $sec=$_GET['sec'];

        $table_name=$_SESSION['class'];

        $query="SELECT * FROM `$table_name` WHERE `id`='$id' AND `class`='$class' AND `sec`='$sec'";
        
        $result=mysqli_query($conn,$query);

        $resultrow=mysqli_num_rows($result);

        if($resultrow==1){

            while($row=mysqli_fetch_assoc($result)){

    ?>

    <header>

        <div class="content">
            <img src="../images/school logo.png" alt="logo">
            <h2>ABCD Matriculation higher secondary school</h2>
            <p>No:6,Dubai Cross Lane,Dubai Main Road,</p>
            <p>Vivekanandar Street,Dubai</p>
            <h2 id="admin-login">Welcome <?php echo $_SESSION['username']; ?></h2>
            <a href="adminlogout.php">LogOut</a>
        </div>  

    </header>  

    <section class="update-form">

        <form action="" method="post">
            <div>
                <label  >Name : </label>
                <label ><?php echo $row['name'] ?></label>
            </div> 

            <div>
                <label >Roll No : </label>
                <input type="text" name="id" id="id" value="<?php echo $row['id'] ?> ">
            </div> 

            <div>
                <label >Class : </label>
                <input type="text" name="class" id="class" value="<?php echo $row['class'] ?> ">  
            </div>

            <div>
                <label >Section : </label>
                <input type="text" name="sec" id="sec" value="<?php echo $row['sec'] ?> "> 
            </div>

            <div>
                <label >English : </label>
                <input type="text" name="english" id="english" value="<?php echo $row['english'] ?> ">
            </div>

            <div>
                <label >Tamil : </label>
                <input type="text" name="tamil" id="tamil" value="<?php echo $row['tamil'] ?> ">
            </div>

            <div>
                <label >Maths : </label>
                <input type="text" name="maths" id="maths" value="<?php echo $row['maths'] ?> ">
            </div>

            <div>
                <label >Physics : </label>
                <input type="text" name="physics" id="physics" value="<?php echo $row['physics'] ?> ">
            </div>

            <div>
                <label >Chemistry : </label>
                <input type="text" name="chemistry" id="chemistry" value="<?php echo $row['chemistry'] ?> ">
            </div>

            <div>
                <label >Biology : </label>
                <input type="text" name="biology" id="biology" value="<?php echo $row['biology'] ?> ">
            </div>

            <input type="submit" id="update" name="update" value="Update">
        </form>
        
    </section>

    <?php 

            }

        }
        else{
            "No Records Found";
        }

        if(isset($_POST['update'])){
            $id=$_POST['id'];
            $name=$_POST['name'];
            $class=$_POST['class'];
            $sec=$_POST['sec'];
            $english=$_POST['english'];
            $tamil=$_POST['tamil'];
            $maths=$_POST['maths'];
            $physics=$_POST['physics'];
            $chemistry=$_POST['chemistry'];
            $biology=$_POST['biology'];
            $table_name=$_SESSION['class'];


            $query_two="UPDATE `$table_name` SET `english`='$english',`tamil`='$tamil',`maths`='$maths',`physics`='$physics',`chemistry`='$chemistry',`biology`='$biology' WHERE `id`='$id' AND `class`='$class' AND `sec`='$sec'; ";

            $queryresulttwo=mysqli_query($conn,$query_two);

            if($queryresulttwo){
                echo "<script>alert('Successfully Updated');</script>";
                echo "<script>location.href='admin.php';</script>";
            }
            else{
                echo "<script>alert('Updation Failed!');</script>";
                echo "<script>location.href='admin.php?error';</script>";
            }

        }

    ?>
    
</body>
</html>