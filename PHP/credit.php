<meta http-http-equiv="Content-type" content="text/html; charset=utf-8">
<?php
if(isset($_POST['Credit_number']) &&isset($_POST['Expiration_Date']) &&isset($_POST['CVV']))
{
$Credit_number = $_POST['Credit_number'];
  $Expiration_Date = $_POST['Expiration_Date'];
  $CVV = $_POST['CVV'];
 

  $dbhost="localhost";
  $dbuser="root";
  $dbpass="";
  $dbname="user_db";
  $conn = new mysqli($dbhost,$dbuser,$dbpass,$dbname);

  $conn->query("SET NAMES utf8");
  $conn->query("SET CHARACTER SET utf8");
  if ($conn->connect_error){
    die('could not connect to the database');
  }
  else {
    $Insert = "INSERT INTO credit_card(Credit_number,Expiration_Date,CVV) values (?,?,?)";
    $stmt = $conn->prepare($Insert);
    $stmt->bind_param("iii",$Credit_number,$Expiration_Date,$CVV);
      if($stmt->execute()){
      echo"
      <script> alert ('new record inserted successfully.');
      location.href ='/new gtp/index.html';
      </script>";
    }else
    {
      echo $stmt->error;
    }
  }
  $stmt->close();
  $conn->close();
}
else{
  echo "all field are required.";
  die();
}
?>