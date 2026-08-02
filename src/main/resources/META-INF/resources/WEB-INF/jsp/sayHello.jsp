<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NovaTech Solutions</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    font-family:Arial, Helvetica, sans-serif;
    background:#f5f7fb;
    color:#333;
    line-height:1.6;
}

header{
    background:linear-gradient(135deg,#2563eb,#4f46e5);
    color:white;
    padding:18px 8%;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.logo{
    font-size:28px;
    font-weight:bold;
}

nav a{
    color:white;
    text-decoration:none;
    margin-left:20px;
    font-weight:bold;
}

nav a:hover{
    text-decoration:underline;
}

.hero{
    display:flex;
    flex-wrap:wrap;
    align-items:center;
    justify-content:space-between;
    padding:80px 8%;
    background:white;
}

.hero-text{
    max-width:550px;
}

.hero-text h1{
    font-size:48px;
    margin-bottom:20px;
    color:#1e3a8a;
}

.hero-text p{
    font-size:18px;
    color:#555;
    margin-bottom:30px;
}

.btn{
    display:inline-block;
    background:#2563eb;
    color:white;
    padding:14px 28px;
    text-decoration:none;
    border-radius:8px;
    transition:.3s;
}

.btn:hover{
    background:#1d4ed8;
}

.hero-image img{
    width:100%;
    max-width:480px;
}

.features{
    padding:70px 8%;
}

.features h2{
    text-align:center;
    margin-bottom:40px;
    color:#1e3a8a;
}

.grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
    gap:25px;
}

.card{
    background:white;
    padding:30px;
    border-radius:12px;
    box-shadow:0 10px 25px rgba(0,0,0,.08);
    transition:.3s;
}

.card:hover{
    transform:translateY(-6px);
}

.card h3{
    margin-bottom:15px;
    color:#2563eb;
}

footer{
    background:#1e293b;
    color:white;
    text-align:center;
    padding:25px;
    margin-top:60px;
}
</style>
</head>

<body>

<header>
    <div class="logo">NovaTech</div>

    <nav>
        <a href="#">Home</a>
        <a href="#">Services</a>
        <a href="#">Portfolio</a>
        <a href="#">Contact</a>
    </nav>
</header>

<section class="hero">

    <div class="hero-text">
        <h1>Build Modern Web Experiences</h1>

        <p>
            We create beautiful, responsive, and high-performance websites
            that help businesses grow online.
        </p>

        <a href="#" class="btn">Get Started</a>
    </div>

    <div class="hero-image">
        <img src="https://images.unsplash.com/photo-1516321318423-f06f85e504b3?w=700" alt="Web Development">
    </div>

</section>

<section class="features">

    <h2>Our Services</h2>

    <div class="grid">

        <div class="card">
            <h3>💻 Web Development</h3>
            <p>Responsive websites built using modern technologies.</p>
        </div>

        <div class="card">
            <h3>🎨 UI/UX Design</h3>
            <p>Elegant interfaces focused on usability and customer experience.</p>
        </div>

        <div class="card">
            <h3>🚀 Performance</h3>
            <p>Fast-loading pages optimized for SEO and user satisfaction.</p>
        </div>

        <div class="card">
            <h3>🔒 Security</h3>
            <p>Reliable and secure applications following best practices.</p>
        </div>

    </div>

</section>

<footer>
    <p>&copy; 2026 NovaTech Solutions. All Rights Reserved.</p>
</footer>

</body>
</html>