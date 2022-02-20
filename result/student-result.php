<?php

include "dbconnection.php";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Results</title>
</head>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Andada+Pro:wght@500&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    text-decoration: none;
    text-transform: capitalize;
    transition:all .2s linear;
}

html{
    font-size: 62.5%;
    overflow-x: hidden;
}

.result{
    
    height: 100vh;
    position: relative;
}

.table-container{
    
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-55%);
}

.table{
    font-size: 1.5rem;
    text-align: center;
}

.table-head img{
    width: 100px;
    height: 100px;
}
.table-head{
    font-family: 'Andada Pro', serif;
    font-size: 2rem;
    font-weight: bolder;
}

.result .table-container tbody{
    font-family: 'Poppins', sans-serif;
}

th, td {
  padding:1rem 1.5rem ;
}

/* media query  */

@media(max-width:580px){
    
    html{
        font-size:55%;
    }
    th,td{
        padding:1rem 1rem;
    }

}

@media(max-width:470px){

    html{
        font-size:50%;
    }

    th,td{
        padding:.5rem 0;
    }

}

</style>

<body>
    <?php
    if(isset($_POST['submit'])){
        $id=$_POST['id'];
        $class=$_POST['class'];
        $sec=$_POST['section'];
     
    $sql="SELECT `id`,`name`,`class`,`english`,`tamil`,`maths`,`physics`,`chemistry`,`biology` FROM $class WHERE `id`=$id AND `sec`='$sec';";

    $totalquery="SELECT (`english`+`tamil`+`maths`+`physics`+`chemistry`+`biology`) AS `total` FROM $class WHERE `id`=$id AND `sec`='$sec'; ";
    $totalresult=mysqli_query($conn,$totalquery);
    

    $result = mysqli_query($conn,$sql);
    $resultrow = mysqli_num_rows($result);  
    if($resultrow>0){
        while($row=mysqli_fetch_assoc($result)){

    ?>

<div class="result">
            <div class="table-container">
                    <table  class="table" border="2">
                        <tr class="table-head" >
                            <td><img src="../images/school logo.png" alt="logo"></td>
                            <td colspan="4"><h2>ABCD Higher Secondary School</h2>
                                <p style=" font-weight : 100 ; margin:5px;" >No:6,Dubai Cross Lane,Dubai Main Road,</p>
                                <p style=" font-weight : 100 ;" >Vivekanandar Street,Dubai</p>
                            </td>
                        </tr>
                        <tr class="student-detail">
                                <td colspan="3"><p><b>Name : </b><?php echo $row['name'];  ?></p>
                                <p><b>Class & Section : </b><?php echo $row['class']." & ".$sec;  ?></p></td>
                                <td colspan="2"><b>Roll Number : </b><?php echo $row['id'] ; ?></p></td>
                        </tr>
                        <tbody>
                            <tr>
                            
                                    <th>Subject Code</th>
                                    <th>Subject Name</th>
                                    <th>Pass Mark</th>
                                    <th>Maximum Mark</th>
                                    <th>Marks Obtained</th>
                            
                            </tr>

                            <tr>
                                <td>ENG</td>
                                <td>English</td>
                                <td>50</td>
                                <td>100</td>
                                <td><?php echo $row['english'] ; ?></td>
                            </tr>

                            <tr>
                                <td>TAM</td>
                                <td>Tamil</td>
                                <td>50</td>
                                <td>100</td>
                                <td><?php echo $row['tamil'] ; ?></td>
                            </tr>

                            <tr>
                                <td>MAT</td>
                                <td>Mathematics</td>
                                <td>50</td>
                                <td>100</td>
                                <td><?php echo $row['maths'] ; ?></td>
                            </tr>

                            <tr>
                                <td>PHY</td>
                                <td>Physics</td>
                                <td>50</td>
                                <td>100</td>
                                <td><?php echo $row['physics'] ; ?></td>
                            </tr>

                            <tr>
                                <td>CHE</td>
                                <td>Chemistry</td>
                                <td>50</td>
                                <td>100</td>
                                <td><?php echo $row['chemistry'] ; ?></td>
                            </tr>

                            <tr>
                                <td>BIO</td>
                                <td>Biology</td>
                                <td>50</td>
                                <td>100</td>
                                <td><?php echo $row['biology'] ; ?></td>
                            </tr>

                            <tr>
                                <td colspan="4">Total</td>
                                <td><?php while($totalresultrow=mysqli_fetch_assoc($totalresult)){
                                    echo $totalresultrow['total'];
                                }  ?></td>
                            </tr>


                        </tbody>    

                    </table>
                </div>   
            
        </div>
        <?php 
                  }
                }
          else{
              echo "<script>window.alert('Enter Roll no,Class and section Correctly');</script>";
              echo "<script>location.href='result.php'</script>";
          }
        }      

        ?>
    
</body>
</html>