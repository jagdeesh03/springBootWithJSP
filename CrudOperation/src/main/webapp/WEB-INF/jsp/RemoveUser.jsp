<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
            <h2>Remove User</h2>
        </div>
    </div>
</header>
<section>
    <div class="container">
    <form id="needsValidation" method="post" action="removeUser">
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Firstname</th>
                <th scope="col">Lastname</th>
                <th scope="col">Email</th>
                <th scope="col">UserName</th>
                <th scope="col">Password</th>
                <th scope="col">Role</th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.userId}</td>
                    <td>${user.firstName}</td>
                    <td>${user.lastName}</td>
                    <td>${user.email}</td>
                    <td>${user.userName}</td>
                    <td>${user.password}</td>
                    <td>${user.userRole}</td>
                    <td>
                        <button class="btn btn-danger" type="button"  id="valid" onclick="show('${user.userName}')">Remove</button>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
          </table>
        </form>
    </div>


</section>
<script type="text/javascript">
    function show(username) {
        console.log(username);
        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, to delete user!'
        }).then((result) => {
            if (result.isConfirmed) {
                Swal.fire({
                        title :'Deleted!',
                        text :'Your profile has been Deleted successfully.',
                        icon :'success',
                        confirmButtonColor:'#3085d6',
                    }
                ).then((result)=>{
                    if(result.isConfirmed) {
                        document.getElementById('needsValidation').action = "/removeUser?userName="+username;
                        document.getElementById('needsValidation').submit();

                    }
                })
            }
        })
    }
</script>

</body>
</html>