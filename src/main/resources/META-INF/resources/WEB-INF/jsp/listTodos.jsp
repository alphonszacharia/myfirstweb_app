<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Todo List</title>

    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:Arial, Helvetica, sans-serif;
        }

        html, body{
            height:100%;
            margin:0;
        }

        body{
            display:flex;
            flex-direction:column;
            min-height:100vh;
            background:#f4f6f9;
        }

        /* This pushes the footer to the bottom */
        .content{
            flex:1;
            padding:40px;
        }

        .container{
            width:90%;
            margin:auto;
        }

        h2{
            text-align:center;
            color:#333;
            margin-bottom:20px;
        }

        .top-bar{
            display:flex;
            justify-content:flex-end;
            margin-bottom:20px;
        }

        .btn{
            background:#007bff;
            color:white;
            text-decoration:none;
            padding:10px 18px;
            border-radius:5px;
            font-weight:bold;
            transition:.3s;
        }

        .btn:hover{
            background:#0056b3;
        }

        table{
            width:100%;
            border-collapse:collapse;
            background:white;
            box-shadow:0 4px 12px rgba(0,0,0,0.15);
            border-radius:8px;
            overflow:hidden;
        }

        thead{
            background:#28a745;
            color:white;
        }

        th, td{
            padding:14px;
            text-align:center;
            border-bottom:1px solid #ddd;
        }

        tbody tr:nth-child(even){
            background:#f8f9fa;
        }

        tbody tr:hover{
            background:#eef5ff;
        }

        .done{
            color:green;
            font-weight:bold;
        }

        .pending{
            color:red;
            font-weight:bold;
        }

        .actions{
            display:flex;
            justify-content:center;
            gap:10px;
        }

        .update-btn,
        .delete-btn{
            display:inline-block;
            padding:8px 14px;
            text-decoration:none;
            border-radius:5px;
            font-size:14px;
            font-weight:bold;
            transition:.3s;
        }

        .update-btn{
            background:#ffc107;
            color:#212529;
        }

        .update-btn:hover{
            background:#e0a800;
        }

        .delete-btn{
            background:#dc3545;
            color:white;
        }

        .delete-btn:hover{
            background:#b02a37;
        }
    </style>
</head>

<body>

    <%@ include file="common/header.jspf" %>

    <div class="content">

        <div class="container">

            <h2>Todo List</h2>

            <div class="top-bar">
                <a href="${pageContext.request.contextPath}/add-todo" class="btn">
                    + Add New Todo
                </a>
            </div>

            <table>

                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Description</th>
                        <th>Target Date</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>

                <tbody>

                <c:forEach var="todo" items="${todos}">
                    <tr>

                        <td>${todo.id}</td>
                        <td>${todo.username}</td>
                        <td>${todo.description}</td>
                        <td>${todo.targetDate}</td>

                        <td>
                            <c:choose>
                                <c:when test="${todo.done}">
                                    <span class="done">✔ Completed</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="pending">✘ Pending</span>
                                </c:otherwise>
                            </c:choose>
                        </td>

                        <td>
                            <div class="actions">

                                <a href="${pageContext.request.contextPath}/update-todo?id=${todo.id}"
                                   class="update-btn">
                                    Update
                                </a>

                                <a href="${pageContext.request.contextPath}/delete-todo?id=${todo.id}"
                                   class="delete-btn"
                                   onclick="return confirm('Are you sure you want to delete this todo?');">
                                    Delete
                                </a>

                            </div>
                        </td>

                    </tr>
                </c:forEach>

                </tbody>

            </table>

        </div>

    </div>

    <%@ include file="common/footer.jspf" %>

</body>
</html>