<?php  
	if(isset($_POST["itog"])){
		$connect = mysqli_connect("localhost", "root", "", "questionnaire");
		$query = "INSERT INTO questionnaire(Answer) VALUES ('".$_POST["itog"]."')";
		$result = mysqli_query($connect, $query) or die(mysqli_error($link));
	}
?>