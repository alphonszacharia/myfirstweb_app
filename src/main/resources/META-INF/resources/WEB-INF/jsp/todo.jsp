<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Todo</title>

    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:Arial, Helvetica, sans-serif;
        }

        body{
            background:linear-gradient(135deg,#4facfe,#00f2fe);
            min-height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
        }

        .card{
            width:500px;
            background:#fff;
            padding:35px;
            border-radius:15px;
            box-shadow:0 10px 25px rgba(0,0,0,.2);
        }

        h2{
            text-align:center;
            margin-bottom:25px;
            color:#333;
        }

        .form-group{
            margin-bottom:20px;
        }

        label{
            display:block;
            margin-bottom:8px;
            font-weight:bold;
            color:#444;
        }

        textarea{
            width:100%;
            padding:12px;
            border:1px solid #ccc;
            border-radius:8px;
            font-size:15px;
            resize:vertical;
        }

        textarea:focus{
            outline:none;
            border-color:#4facfe;
            box-shadow:0 0 8px rgba(79,172,254,.4);
        }

        .btn{
            width:100%;
            padding:14px;
            background:#4facfe;
            color:white;
            border:none;
            border-radius:8px;
            font-size:16px;
            font-weight:bold;
            cursor:pointer;
            transition:.3s;
        }

        .btn:hover{
            background:#2196f3;
        }
    </style>

</head>
<body>

<div class="card">

    <h2>Add New Todo</h2>

    <form:form action="${pageContext.request.contextPath}/add-todo"
               method="post"
               modelAttribute="todo">

        <!-- Hidden fields -->
        <form:hidden path="id"/>
        <form:hidden path="username"/>
        <form:hidden path="targetDate"/>
        <form:hidden path="done"/>

        <div class="form-group">
            <label for="description">Todo Description</label>

            <form:textarea
                    path="description"
                    id="description"
                    rows="5"
                    placeholder="Enter your todo..."
                    required="true"/>
            <form:errors path="description" cssClass="error"/>
        </div>

        <button type="submit" class="btn">
            Save Todo
        </button>

    </form:form>

</div>

</body>
</html>