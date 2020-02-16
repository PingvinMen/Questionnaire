<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Questionnaire</title>
		<link rel="stylesheet" href="elems/style.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
	</head>
	<body>
		<div class="Questionnaire">
			<h3 class="question">КАКИЕ ЖИВОТНЫЕ У ВАС ЕСТЬ?</h3><br>
			<div class="answer">
				<form name="Sum">
					<input type="checkbox" id="animals1" value="1"> Кошка <br>
					<input type="checkbox" id="animals2" value="2"> Собака <br>
					<input type="checkbox" id="animals3" value="4"> Попугай <br>
					<input type="checkbox" id="animals4" value="8"> Рыбки <br>
					<input type="checkbox" id="animals5" value="16"> Рептилии <br>
					<input type="checkbox" id="noanimals" value="0"> ЖИВОТНЫЕ ОТСУТСТВУЮТ <br>
					<output id="rezultat"></output>
				</form>	
			</div>
			<button type="button" name="submit" id="submit">Отправить</button>
		</div>
		<div class="info"></div>
		<script src="elems/JQuery.js"></script>
	</body>
</html>