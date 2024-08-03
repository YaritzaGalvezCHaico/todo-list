<?php  
session_start();  

// Redirigir a la página de tareas si el usuario ya está logueado  
if (isset($_SESSION['user_id'])) {  
    header("Location: tasks.php");  
    exit;  
}  
?>  

<!DOCTYPE html>  
<html lang="es">  
<head>  
    <meta charset="UTF-8">  
    <title>Bienvenido a la App de Tareas</title>  
    <link rel="stylesheet" href="styles.css">  
</head>  
<body>  
    <h1>Bienvenido a la Aplicación de Tareas</h1>  
    <p>  
        <a href="register.php">Registrar</a> -   
        <a href="login.php">Iniciar Sesión</a>  
    </p>  
</body>  
</html>