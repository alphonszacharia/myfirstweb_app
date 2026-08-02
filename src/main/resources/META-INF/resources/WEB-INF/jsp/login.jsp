
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, sans-serif;
}

body{
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
    background:linear-gradient(135deg,#4facfe,#00c6fb);
}

.container{
    background:#fff;
    width:360px;
    padding:35px;
    border-radius:15px;
    box-shadow:0 8px 20px rgba(0,0,0,0.2);
    text-align:center;
}

h1{
    color:#333;
    margin-bottom:10px;
}

p{
    color:#666;
    margin-bottom:20px;
}

.error{
    color:red;
    font-size:14px;
    margin-bottom:15px;
    font-weight:bold;
}

.input-box{
    margin-bottom:18px;
}

.input-box input{
    width:100%;
    padding:12px;
    border:1px solid #ccc;
    border-radius:8px;
    font-size:15px;
    outline:none;
}

.input-box input:focus{
    border-color:#2196F3;
}

button{
    width:100%;
    padding:12px;
    background:#2196F3;
    color:white;
    border:none;
    border-radius:8px;
    font-size:16px;
    cursor:pointer;
}

button:hover{
    background:#1976D2;
}
</style>

</head>
<body>

<div class="container">

    <h1>Welcome</h1>
    <p>Please login to continue</p>

    <!-- Display error message here -->
    <div class="error">
        ${errorMessage}
    </div>

    <form action="login" method="post">

        <div class="input-box">
            <input type="text"
                   name="username"
                   placeholder="Enter Username"
                   required>
        </div>

        <div class="input-box">
            <input type="password"
                   name="password"
                   placeholder="Enter Password"
                   required>
        </div>

        <button type="submit">Login</button>

    </form>

</div>

</body>
</html>