<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #4facfe, #00c6fb);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        background: white;
        padding: 40px;
        width: 400px;
        text-align: center;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
    }

    h1 {
        color: #2196F3;
        margin-bottom: 15px;
    }

    p {
        color: #555;
        font-size: 18px;
        margin: 10px 0;
    }

    .btn {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        background-color: #2196F3;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        font-size: 16px;
    }

    .btn:hover {
        background-color: #1976D2;
    }
</style>

</head>
<body>

<div class="container">
    <h1>Welcome ${name}!</h1>
    <p>You have successfully logged in.</p>
    <p>Have a Nice Day!...</p>

    <a href="list-todos" class="btn">View Todos</a>
</div>

</body>
</html>