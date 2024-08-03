<?php  
session_start();  
require 'db.php';  

if ($_SERVER['REQUEST_METHOD'] === 'POST') {  
    $email = $_POST['email'];  
    $password = $_POST['password'];  

    $stmt = $pdo->prepare("SELECT * FROM users WHERE email = ?");  
    $stmt->execute([$email]);  
    $user = $stmt->fetch();  

    if ($user && password_verify($password, $user['password'])) {  
        $_SESSION['user_id'] = $user['id'];  
        header("Location: tasks.php");  
        exit;  
    } else {  
        echo "Credenciales incorrectas.";  
    }  
}  
?>  

<!DOCTYPE html>  
<html lang="es">  
<head>  
    <meta charset="UTF-8">  
    <title>Iniciar Sesión</title>  
    <link rel="stylesheet" href="styles.css">  
</head>  
<body>  
    <h2>Iniciar Sesión</h2>  
    <form method="POST">  
        <input type="email" name="email" placeholder="Email" required>  
        <input type="password" name="password" placeholder="Contraseña" required>  
        <button type="submit">Iniciar Sesión</button>  
    </form>  
    <a href="register.php">Registrar</a>  
</body>  
</html>