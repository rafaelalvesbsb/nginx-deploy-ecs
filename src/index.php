<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
</head>
<body>
    <div class="container">
        <h1>Welcome to My Page!</h1>
        <img src="image.gif" alt="Moving Image">
        <p>
            <?php
                date_default_timezone_set('America/Sao_Paulo');
                echo "Current Time: " . date('H:i:s') . " (" . date_default_timezone_get() . ")";
            ?>
        </p>
    </div>
</body>
</html>
