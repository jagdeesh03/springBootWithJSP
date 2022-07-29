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
   <header>
       <div class="index_header">
            <div class="d-flex  align-items-center justify-content-center crudOperation">
                <h2>Crud Operation</h2>
            </div>
       </div>
   </header>
   <section>
        <div class="flex-wrap container">
            <div class="row d-flex  align-items-center justify-content-center">
            <div class="card contain">
                <div class=" card-body text-center cons">
                    <img src="images/user.jpeg" alt="Create User Icon">
                    <h5 class="card-title">User Creation</h5>
                    <p class="card-text">If you want to create new Employee details click below button</p>
                    <a href="userCreation" class="btn btn-primary btn-lg" >User Creation</a>
                </div>
            </div>

            <div class="card contain">
                <div class="card-body text-center cons">
                    <img src="images/images.jpg" alt="List User Icon">
                    <h5 class="card-title">List User</h5>
                    <p class="card-text">If you want to list all employees click below button</p>
                    <a href="listAllUser" class="btn btn-primary btn-lg">List All</a>
                </div>
            </div>
        </div>
        <div class="row d-flex  align-items-center justify-content-center">

            <div class="card  contain">
                <div class="card-body text-center cons">
                    <img src="images/removeuser.jpeg" alt="Remove User Icon">
                    <h5 class="card-title">Remove User</h5>
                    <p class="card-text">If you want to remove any specific Employee details click below button</p>
                    <a href="removedUser" class="btn btn-primary btn-lg">Remove</a>
                </div>
            </div>


            <div class="card  contain">
                <div class="card-body text-center cons">
                    <img src="images/update.jpeg" alt="Update User Icon">
                    <h5 class="card-title">User Update</h5>
                    <p class="card-text">If you want to update a existing Employee details click below button</p>
                    <a href="updateUser" class="btn btn-primary btn-lg" id="valid">Update</a>
                </div>
            </div>
        </div>
       </div>
   </section>
</body>
</html>