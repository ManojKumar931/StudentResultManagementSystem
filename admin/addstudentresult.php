<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- my css file  -->
    <link rel="stylesheet" href="addstudentresult.css">

    <title>Add Student</title>
</head>
<body>
    <?php
        session_start();
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

    <section class="add-form">

        <form action="" method="post">
            <div>
                <label  >Name : </label>
                <input type="text" name="name" id="name" value="" placeholder="Enter Name">
            </div> 

            <div>
                <label  >UserName : </label>
                <input type="text" name="username" id="username" value="" placeholder="Enter UserName">
            </div> 

            <div>
                <label >Roll No : </label>
                <input type="text" name="id" id="id" value="" placeholder="Enter Roll No">
            </div> 

            <div class="class">
                    <label >Class : </label>
                    <select name="classtable" id="classtable" required>
                        <option value="" default hidden required>Select Class</option>
                        <option value="vresult">V</option>
                        <option value="viresult">VI</option>
                        <option value="viiresult">VII</option>
                        <option value="viiiresult">VIII</option>
                        <option value="ixresult">IX</option>
                    </select>
                </div>

                <div class="section">
                    <label >Section : </label>
                    <select name="section" id="section" required>
                        <option value="" default hidden>Select Section</option>
                        <option value="A">A</option>
                        <option value="B">B</option>
                        <option value="C">C</option>

                    </select>
                </div>

            <div>
                <label >English : </label>
                <input type="text" name="english" id="english" value="" placeholder="Enter Marks">
            </div>

            <div>
                <label >Tamil : </label>
                <input type="text" name="tamil" id="tamil" value="" placeholder="Enter Marks">
            </div>

            <div>
                <label >Maths : </label>
                <input type="text" name="maths" id="maths" value="" placeholder="Enter Marks">
            </div>

            <div>
                <label >Physics : </label>
                <input type="text" name="physics" id="physics" value="" placeholder="Enter Marks">
            </div>

            <div>
                <label >Chemistry : </label>
                <input type="text" name="chemistry" id="chemistry" value="" placeholder="Enter Marks">
            </div>

            <div>
                <label >Biology : </label>
                <input type="text" name="biology" id="biology" value="" placeholder="Enter Marks">
            </div>

            <input type="submit" id="add" name="add" value="Add Result">
        </form>
        
    </section>

    <?php
    include "dbconnection.php";
    // $conn=mysqli_connect("localhost","root","","school");

    if(isset($_POST['add'])){
        $classtable=$_POST['classtable'];

        if($classtable=='vresult'){
            $class='V';
        }
        else if($classtable=='viresult'){
            $class='VI';
        }
        else if($classtable=='viiresult'){
            $class='VII';
        }
        else if($classtable=='viiiresult'){
            $class='VIII';
        }
        else if($classtable=='ixresult'){
            $class='IX';
        }

        $id=$_POST['id'];
        $name=$_POST['name'];
        $username=$_POST['username'];
        $sec=$_POST['section'];
        $english=$_POST['english'];
        $tamil=$_POST['tamil'];
        $maths=$_POST['maths'];
        $physics=$_POST['physics'];
        $chemistry=$_POST['chemistry'];
        $biology=$_POST['biology'];

        $sql="INSERT INTO `$classtable`(`id`, `username`, `name`, `class`, `sec`, `english`, `tamil`, `maths`, `physics`, `chemistry`, `biology`) VALUES ('$id','$username','$name','$class','$sec','$english','$tamil','$maths','$physics','$chemistry','$biology') ;";

        if(mysqli_query($conn,$sql)){
            echo "<script>alert('Student added successfully') ;</script>";
            echo "<script>location.href='admin.php' ;</script>";
        }
        else{
            echo "<script>alert('Failed to add student') ;</script>";
            echo "<script>location.href='admin.php' ;</script>";
        }

    }

    ?>

    
</body>
</html>