<?php
    $servername = "localhost";
    $username = "root";
    $password = " ";
    $dbname = "garbage_collector.SQL";
    
        $conn = mysqli_connect("localhost", "root", "", "gamelogin");
        
        if (!$conn) {
            die("connection faild: " . mysqli_connect_error());
        }
        $fusername=$_POST['user'];
        $fpassword=$_POST['pass'];

        $data = "INSERT INTO login (username, password) VALUES ('$fusername', '$fpassword')";
        $check = mysqli_query($conn,$data);
       
        if($check){
            echo "Data transferred sucessfully";
        }
        else{
            echo "Faild";
        }
?>