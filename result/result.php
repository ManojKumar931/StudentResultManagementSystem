<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <!-- css file  -->
    <link rel="stylesheet" href="result.css">
    
    <title>Results</title>
</head>
<body>

    <header>

        <div class="content">
            <img src="../images/school logo.png" alt="logo">
            <h2>ABCD Matriculation higher secondary school</h2>
            <p>No:6,Dubai Cross Lane,Dubai Main Road,</p>
            <p>Vivekanandar Street,Dubai</p>
            <h2>Annual exam result 2020-21</h2>
        </div>    

    </header>

    <div class="result-form">

            <form action="student-result.php" method="post">
                <div class="roll">
                    <label >Roll No : </label>
                    <input type="text" name="id" id="rollno" placeholder="Enter Roll Number" required />
                </div>

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

                <input type="submit" value="Get Result" name="submit" id="submit">

            </form>    

    </div>        

</body>
</html>