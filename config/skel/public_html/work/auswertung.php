<!DOCTYPE html>
<html>
<head>
	<title>Beispiel-Formular - Auswertung</title>
</head>
<body>
	<h1>Beispiel-Formular - Auswertung</h1>
	<?php
		$name = $_POST["name"];
		$email = $_POST["email"];
		$nachricht = $_POST["nachricht"];

		echo "<p>Name: $name</p>";
		echo "<p>E-Mail: $email</p>";
		echo "<p>Nachricht: $nachricht</p>";
	?>
</body>
</html>
