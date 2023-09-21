<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %> -->
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <title>Login Page</title>
</head>

<body class="vh-100">
    <main class="vh-100 d-flex align-items-center justify-conent-center">
        <div class="container">
            <div style="background-color: hsl(40, 5%, 90%);">
                <p class="m-0 px-3 py-1 fs-3 fw-bold text-primary">Login</p>
            </div>
            <form action="Login" method = "post" class="px-3 py-1" style="background-color: hsla(40, 5%, 95%, 0.3);">
                <div class="row my-3">
                    <label class="col-2 form-label" for="username">User name:</label>
                    <div class="col-6">
                        <input class="form-control" type="text" name="uname" id="username">
                    </div>
                </div>
                <div class="row my-3">
                    <label class="col-2 form-label" for="password">Password:</label>
                    <div class="col-6">
                        <input class="form-control" type="password" name="pass" id="password">
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-2"></div>
                    <div class="col-6">
                        <a href="#">Forgot your password?</a>
                    </div>
                </div>
                <div class="container-fluid w-100% p-1">
                    <input class="d-block ms-auto" type="submit" value="Login >>">
                </div>
            </form>
        </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>

</body>

</html>