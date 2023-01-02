<?php
// connaction
	include_once("config.php");
	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//something was posted
		$F_Name = $_POST['F_Name'];
		$L_Name = $_POST['L_Name'];
        $Email_ID = $_POST['Email_ID'];
        $Password = $_POST['Password'];
        $confirm_Pass = $_POST['confirm_Pass'];
		$year = $_POST['year'];
		$type_car = $_POST['type_car'];
		$Phone = $_POST['Phone'];
		$model_car = $_POST['model_car'];

		if ($_POST["Password"] === $_POST["confirm_Pass"]) {
		   // success!
		   
			//save to database
			$query = "INSERT INTO sign_up1(F_Name,L_Name,Email_ID,`Password`,confirm_Pass,`year`,type_car,model_car,phone) VALUES('$F_Name', '$L_Name','$Email_ID', '$Password', '$confirm_Pass', '$year', '$type_car', '$model_car','$Phone')" ;
			mysqli_query($conn, $query);
			$userId = $conn->insert_id;


			$Insert = "INSERT INTO techs(`year`,`phone`,`model_car`,`type_car`,`userid`) values ('$year','$Phone','$model_car','$type_car','$userId')";
			mysqli_query($conn, $Insert);


			
			$Insert = "INSERT INTO elct(`year`,`phone`,`model_car`,`userid`) values ('$year','$Phone','$model_car','$userId')";
			mysqli_query($conn, $Insert);

			
			header("Location:/new gtp/Login.php");
      echo "<script> alert(' Success ');</script>";
		  die;
		}
		else {
			echo "<script> alert(' Please enter same password');
			 location.href ='/new gtp/index.html';
			</script>";

			die();

		}

}
?>