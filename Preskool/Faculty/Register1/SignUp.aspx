<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Preskool.Faculty.SignUp" %>


<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from preschool.dreamguystech.com/template/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 09 Jan 2023 16:00:51 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>Preskool - Register</title>

<link rel="shortcut icon" href="assets/img/favicon.png">

<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400;1,500;1,700&amp;display=swap" rel="stylesheet">

<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" href="assets/plugins/feather/feather.css">

<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

<div class="main-wrapper login-body">
<div class="login-wrapper">
<div class="container">
<div class="loginbox">
<div class="login-left">
<img class="img-fluid" src="assets/img/login.png" alt="Logo">
</div>
<div class="login-right">
<div class="login-right-wrap">
<h1>Sign Up</h1>
<p class="account-subtitle">Enter details to create your account</p>

<form runat="server">
<div class="form-group">
<label>Your Name <span class="login-danger">*</span></label>
<%--<input class="form-control" type="text">--%>
    <asp:TextBox ID="txt_fac_name" runat="server" class="form-control"></asp:TextBox>
<span class="profile-views"><i class="fas fa-user-circle"></i></span>
</div>
<div class="form-group">
<label>Mobile Number <span class="login-danger">*</span></label>
<%--<input class="form-control" type="text">--%>
    <asp:TextBox ID="txt_fac_mob" runat="server" class="form-control"></asp:TextBox>
<span class="profile-views"><i class="fa-duotone fa-mobile"></i></span>
</div>
<div class="form-group">
<label>Email <span class="login-danger">*</span></label>
<%--<input class="form-control pass-input" type="text">--%>
    <asp:TextBox ID="txt_email" runat="server" class="form-control"></asp:TextBox>
<span class="profile-views"><i class="fas fa-envelope"></i></span>
</div>
<div class="form-group">
<label>password <span class="login-danger">*</span></label>
<%--<input class="form-control pass-confirm" type="text">--%>
    <asp:TextBox ID="txt_pass" runat="server" class="form-control"></asp:TextBox>
<span class="profile-views feather-eye reg-toggle-password"></span>
</div>

<div class=" dont-have">Already Registered? <a href="SignIn.aspx">Login</a></div>
<div class="form-group mb-0">
<%--<button class="btn btn-primary btn-block" type="submit">Register</button>--%>
    <asp:Button ID="btn_next" runat="server" Text="Next" class="btn btn-primary btn-block" OnClick="btn_next_Click"/>
</div>
</form>

<div class="login-or">
<span class="or-line"></span>
<span class="span-or">or</span>
</div>

<div class="social-login">
<a href="#"><i class="fab fa-google-plus-g"></i></a>
<a href="#"><i class="fab fa-facebook-f"></i></a>
<a href="#"><i class="fab fa-twitter"></i></a>
<a href="#"><i class="fab fa-linkedin-in"></i></a>
</div>

</div>
</div>
</div>
</div>
</div>
</div>


<script src="assets/js/jquery-3.6.0.min.js"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="assets/js/feather.min.js"></script>

<script src="assets/js/script.js"></script>
</body>

<!-- Mirrored from preschool.dreamguystech.com/template/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 09 Jan 2023 16:00:51 GMT -->
</html>