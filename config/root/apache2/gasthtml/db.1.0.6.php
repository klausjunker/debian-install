<?php
echo "Klaus junker db.php wird ausgeführt<br>";
$file = "../../.php.config";
if (file_exists($file)) {
    include $file;
    $output = exec("ls -l $file");
    echo "debug: $output<br>";
} else {
    echo "Die Datei existiert nicht.";
}
$conn = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);
// Daten aus dem Formular abrufen
$vorname = $_POST['vorname'];
$nachname = $_POST['nachname'];
// SQL-Abfrage zum Einfügen der Daten
$sql = "INSERT INTO personen (vorname, nachname) VALUES ('$vorname', '$nachname')";
// Ausführen der SQL-Abfrage
if (mysqli_query($conn, $sql)) {
    echo "Die Daten wurden erfolgreich in die Datenbank eingefügt.";
} else {
    echo "Fehler beim Einfügen der Daten: " . mysqli_error($conn);
}
// Verbindung zur Datenbank schließen
#mysqli_close($conn);
#include "dbausgabe.php";

$sql = "select * from personen";
echo "$sql <br>";
$result = mysqli_query($conn, $sql);

// Ergebnisse ausgeben
if (mysqli_num_rows($result) > 0) {
    echo "<table border=1 cellspacing=2 cellpadding=2>";
#    echo "<table border=1>";
    echo "<tr>";
    // Spaltenüberschriften ausgeben
    while ($fieldinfo = mysqli_fetch_field($result)) {
        echo "<th>" . $fieldinfo->name . "</th>";
    }
    echo "</tr>";
    while($row = mysqli_fetch_assoc($result)) {
        echo "<tr>";
        foreach ($row as $value) {
            echo "<td>" . $value . "</td>";
        }
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "Keine Ergebnisse gefunden.<br>";
}
echo "Ende des mysql-Befehls!<br>";

// Verbindung schließen
mysqli_close($conn);
?>


