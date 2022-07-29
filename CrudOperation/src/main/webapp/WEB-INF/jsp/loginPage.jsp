<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="jspcsss/loginpage.css">
</head>
<body class="d-flex flex-column min-vh-100">
<section class="vh-100">
    <div class="container-fluid h-custom">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md-9 col-lg-6 col-xl-5">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                     class="img-fluid" alt="Sample image">
            </div>
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                <form action="getIndex" method="POST" modelAttribute="users" id="needValidation">
                    <!-- Email input -->
                    <div class="form-outline mb-4">
                        <input type="email" id="form3Example3" name="email" class="form-control form-control-lg"
                               placeholder="Enter a valid email address" />
                        <label class="form-label" for="form3Example3">Email address</label>
                    </div>

                    <!-- Password input -->
                    <div class="form-outline mb-3">
                        <input type="password" id="form3Example4" name="password"  class="form-control form-control-lg"
                               placeholder="Enter password" />
                        <label class="form-label" for="form3Example4">Password</label>
                    </div>

                    <div class="d-flex justify-content-between align-items-center">
                        <!-- Checkbox -->
                        <div class="form-check mb-0">
                            <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
                            <label class="form-check-label" for="form2Example3">
                                Remember me
                            </label>
                        </div>
                        <a href="#!" class="text-body">Forgot password?</a>
                    </div>

                    <div class="text-center text-lg-start mt-4 pt-2">
                        <a class="btn btn-primary btn-lg" type="button"  onclick="redirection()" style="padding-left: 2.5rem; padding-right: 2.5rem;">Login </a>

                    </div>

                </form>
            </div>
        </div>
    </div>

</section>

<script type="text/javascript">
    function redirection() {
        // var count = 0;
        // var fieldemail = document.getElementById("form3Example3").value;
        // var fieldpassword = document.getElementById("form3Example4").value;
        // for(let i=0; i< users.size();i++) {
        //     if(fieldemail === email[i] && fieldpassword === password[i] ) {
        //         alert(fieldemail);
                 document.getElementById("needValidation").action = "/getIndex";
                 document.getElementById('needValidation').submit();
        //         count = 0;
        //     }
        //     count = 1;
        // }
        // if(count === 1){
        //     Swal.fire({
        //         title: 'invalid username or password',
        //         showClass: {
        //             popup: 'animate__animated animate__fadeInDown'
        //         },
        //         hideClass: {
        //             popup: 'animate__animated animate__fadeOutUp'
        //         }
        //     })
        // }
    }
</script>
</body>
</html>