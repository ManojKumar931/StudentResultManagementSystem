<?php
    session_start();
    include "dbconnection.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- font-awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- My css file  -->
    <link rel="stylesheet" href="admin.css">

    <title>Admin</title>

</head>
<body>

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

     <section class="select-class">
         <form action="" method="get">
                <div class="class">
                    <label >Class : </label>
                    <select name="class" id="class" required>
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
                <input type="submit" value="Get Details" name="submit">

                <a href="addstudentresult.php"><i class='fas fa-user-plus'></i>Add Student</a>
        </form>       
     </section>

    
    <?php
    
    if(isset($_GET['submit'])){
        // $conn=mysqli_connect("localhost","root","","school");
        $class=$_GET['class'];
        $section=$_GET['section'];
             
        
        $_SESSION['class']=$class;
        $_SESSION['section']=$section;

        $query="SELECT * FROM `$class` WHERE `sec`='$section' ;";
        $queryresult=mysqli_query($conn,$query);
        $queryresultrow=mysqli_num_rows($queryresult);

        if($queryresultrow>0){
        ?>
  <section class="table">
    <table>
                        <thead>
                            <tr>
                                <th>Roll No</th>
                                <th>Name</th>
                                <th>Class</th>
                                <th>Section</th>
                                <th>English</th>
                                <th>Tamil</th>
                                <th>Maths</th>
                                <th>Physics</th>
                                <th>Chemistry</th>
                                <th>Biology</th>
                                <th>Edit/Update</th>
                                <th>Remove</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i=0;
                    while($row=mysqli_fetch_assoc($queryresult)){
                        echo "<tr>";
                        echo "<td data-label='Roll  No' >" . $row['id'] . "</td>";
                        echo "<td data-label='Name' >" . $row['name'] . "</td>";
                        echo "<td data-label='Class' >" . $row['class'] . "</td>";
                        echo "<td data-label='Section' >" . $row['sec'] . "</td>";
                        echo "<td data-label='English' >" . $row['english'] . "</td>";
                        echo "<td data-label='Tamil' >" . $row['tamil'] . "</td>";
                        echo "<td data-label='Maths' >" . $row['maths'] . "</td>";
                        echo "<td data-label='Physics' >" . $row['physics'] . "</td>";
                        echo "<td data-label='Chemistry' >" . $row['chemistry'] . "</td>";
                        echo "<td data-label='Biology' >" . $row['biology'] . "</td>";
                        ?>
                        <td data-label='Edit/Update' ><a id="edit-icon" href="updatestudentresult.php?id=<?php echo $row['id'];?> & class=<?php echo $row['class'] ;?>& sec=<?php echo $row['sec'];?> " ><i class="fas fa-edit"></i>Edit</a></td> 
                        <td data-label='Remove' ><a id="delete-icon" href='deletestudentresult.php?id=<?php echo $row['id'];?> & class=<?php echo $row['class'] ;?>& sec=<?php echo $row['sec'];?>' onclick='return confirm(`Are you sure you want to delete this item`)' ><i class="fas fa-trash"></i>Delete</a></td>
                    <?php
                    echo "</tr>";
                    $i++;
                }
                   
                    echo "</tbody>";
                   
              
            }
            else{
                echo "0 Records Founds";
            }

        }
       
    ?>

    </table>
    </section>
    
</body>
</html>