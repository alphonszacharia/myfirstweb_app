<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>

    <title>
        ${action == 'add-todo' ? 'Add Todo' : 'Update Todo'}
    </title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, Helvetica, sans-serif;
        }

        html, body {
            height: 100%;
            margin: 0;
        }

        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background: linear-gradient(135deg, #4facfe, #00f2fe);
        }

        .content {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px;
        }

        .card {
            width: 500px;
            background: #fff;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, .2);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #444;
        }

        textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            resize: vertical;
        }

        input[type="date"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            background: white;
        }

        textarea:focus,
        input[type="date"]:focus {
            outline: none;
            border-color: #4facfe;
            box-shadow: 0 0 8px rgba(79, 172, 254, .4);
        }

        /* Checkbox */
        .checkbox-group {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 20px;
        }

        .checkbox-group label {
            margin: 0;
            font-weight: bold;
            cursor: pointer;
        }

        input[type="checkbox"] {
            width: 18px;
            height: 18px;
            cursor: pointer;
        }

        .btn {
            width: 100%;
            padding: 14px;
            background: #4facfe;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: .3s;
        }

        .btn:hover {
            background: #2196f3;
        }

        .error {
            color: red;
            font-size: 14px;
            margin-top: 5px;
            display: block;
        }

    </style>

</head>

<body>

    <%@ include file="common/header.jspf" %>


    <div class="content">

        <div class="card">

            <!-- Page Heading -->
            <h2>
                ${action == 'add-todo'
                    ? 'Add New Todo'
                    : 'Update Todo'}
            </h2>


            <form:form
                    action="${pageContext.request.contextPath}/${action}"
                    method="post"
                    modelAttribute="todo">


                <!-- ========================= -->
                <!-- Hidden ID                  -->
                <!-- ========================= -->

                <form:hidden path="id"/>


                <!-- ========================= -->
                <!-- Hidden Username            -->
                <!-- ========================= -->

                <form:hidden path="username"/>


                <!-- ========================= -->
                <!-- Description                -->
                <!-- ========================= -->

                <div class="form-group">

                    <label for="description">
                        Todo Description
                    </label>

                    <form:textarea
                            path="description"
                            id="description"
                            rows="5"
                            placeholder="Enter your todo..."/>

                    <form:errors
                            path="description"
                            cssClass="error"/>

                </div>


                <!-- ========================= -->
                <!-- Target Date                -->
                <!-- ========================= -->

                <div class="form-group">

                    <label for="targetDate">
                        Target Date
                    </label>

                    <form:input
                            path="targetDate"
                            type="date"
                            id="targetDate"/>

                    <form:errors
                            path="targetDate"
                            cssClass="error"/>

                </div>


                <!-- ========================= -->
                <!-- Done Checkbox               -->
                <!-- ========================= -->

                <div class="checkbox-group">

                    <form:checkbox
                            path="done"
                            id="done"/>

                    <label for="done">
                        Mark as completed
                    </label>

                </div>


                <!-- ========================= -->
                <!-- Submit Button              -->
                <!-- ========================= -->

                <button type="submit" class="btn">

                    ${action == 'add-todo'
                        ? 'Save Todo'
                        : 'Update Todo'}

                </button>


            </form:form>

        </div>

    </div>


    <%@ include file="common/footer.jspf" %>

</body>

</html>