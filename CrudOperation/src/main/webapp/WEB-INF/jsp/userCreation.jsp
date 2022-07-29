<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="jspcsss/indexpage.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" integrity="sha512-c42qTSw/wPZ3/5LBzD+Bw5f7bSF2oxou6wEb+I/lqeaKV5FDIfMvvRp772y4jcJLKuGUOpbJMdg/BTl50fJYAw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.1.9/sweetalert2.min.css" integrity="sha512-cyIcYOviYhF0bHIhzXWJQ/7xnaBuIIOecYoPZBgJHQKFPo+TOBA+BY1EnTpmM8yKDU4ZdI3UGccNGCEUdfbBqw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.1.9/sweetalert2.all.min.js" integrity="sha512-IZ95TbsPTDl3eT5GwqTJH/14xZ2feLEGJRbII6bRKtE/HC6x3N4cHye7yyikadgAsuiddCY2+6gMntpVHL1gHw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</head>
<body>
<style>
    .btn {
        width : 100%;
    }
</style>
<header>
    <div class="index_header">
        <div class="d-flex  align-items-center justify-content-center crudOperation">
            <h2>User Creation</h2>
        </div>
    </div>
</header>
<section>
   <div class="container">
    <form method="POST" modelAttribute="user" id="needsValidation" novalidate>
        <div class="form-row">
            <div class="col-md-6 mb-3">
                <label for="validationDefault01">First name</label>
                <input type="text" class="form-control" id="validationDefault01" placeholder="First name" name="firstName" required>
                <div class="valid-feedback">
                    Looks good!
                </div>
                <div class="invalid-feedback">
                    Doesn't look good!
                </div>
            </div>
            <div class="col-md-6 mb-3">
                <label for="validationDefault02">Last name</label>
                <input type="text" class="form-control" id="validationDefault02" placeholder="Last name" name="lastName"  required>
                <div class="valid-feedback">
                    Looks good!
                </div>
                <div class="invalid-feedback">
                    Doesn't look good!
                </div>
            </div>

        </div>
        <div class="form-row">

            <div class="col-md-6 mb-3">
                <label for="validationDefaultUsername">Username</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="inputGroupPrepend2">@</span>
                    </div>
                    <input type="text" class="form-control" id="validationDefaultUsername" name="userName"  placeholder="Username" aria-describedby="inputGroupPrepend2" required>
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                    <div class="invalid-feedback">
                        Doesn't look good!
                    </div>
                 </div>
            </div>
            <div class="col-md-6 mb-3">
                <label for="validationDefault03">password</label>
                <input type="password" class="form-control" name="password" id="validationDefault03" placeholder="Password" required>
                <div class="valid-feedback">
                    Looks good!
                </div>
                <div class="invalid-feedback">
                    Doesn't look good!
                </div>
            </div>

            <div class="col-md-6 mb-3">
                <label for="validationDefault04">Email</label>
                <input type="Email" class="form-control" name="email" id="validationDefault04" placeholder="Email" required>
                <div class="valid-feedback">
                    Looks good!
                </div>
                <div class="invalid-feedback">
                    Doesn't look good!
                </div>
            </div>
            <div class="col-md-6 mb-3">
<%--                <label for="validationDefault05">UserRole</label>--%>
<%--                <input type="text" class="form-control" name="userRole" id="validationDefault05" placeholder="Role" required>--%>
                <div style="margin-top:8px;">
                <br>
                <select name="userRole" class="browser-default custom-select">
                    <option selected>User Role</option>
                      <option value="Admin">Admin</option>
                      <option value="Developer">Developer</option>
                      <option value="Admin And Developer">Admin And Developer</option>
                </select>
                </div>
            </div>
        </div>
        <br>
        <div class="form-group">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
                <label class="form-check-label" for="invalidCheck2">
                    Agree to terms and conditions
                </label>
                <div class="valid-feedback">
                    Looks good!
                </div>
                <div class="invalid-feedback">
                    Doesn't look good!
                </div>
            </div>

        </div>
        <button class="btn btn-primary " style="margin:20px 0" type="button"  id="valid" onclick="showpopup()" >Submit form</button>
    </form>
   </div>
</section>

<script type="text/javascript">
    function showpopup() {
        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'success',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, to create user!'
        }).then((result) => {
            if (result.isConfirmed == true) {
                Swal.fire(
                    {
                        Title: 'Created!',
                        text :'Your profile has been Created successfully.',
                        icon :'success',
                        confirmButtonColor:'#3085d6',
                    }
                ).then((result)=>{
                    if(result.isConfirmed) {
                        document.getElementById('needsValidation').action = "/getValue";
                        document.getElementById('needsValidation').submit();

                    }
                })
            }
        })
    }
</script>
</body>
</html>