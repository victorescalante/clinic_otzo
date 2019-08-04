<?php

ob_start();

include '../conection.php';

$name = $_POST['name'];
$last_name = $_POST['last_name'];
$maternal_name = $_POST['maternal_name'];

$query = "INSERT INTO 
users (name, last_name,maternal_last_name) 
values ('".$name."', '".$last_name."', '".$maternal_name."')";

if ($enlace->query($query) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $query . "<br>" . $enlace->error;
}

mysqli_close($enlace);

header('Location: index.php');

?>