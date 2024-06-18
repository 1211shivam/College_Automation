<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forget-Password.aspx.cs" Inherits="Preskool.Faculty.Register1.Forget_Password" %>


<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from preschool.dreamguystech.com/template/forgot-password.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 09 Jan 2023 16:00:51 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>Dream College - Forgot Password</title>

<link rel="shortcut icon" href="assets/img/favicon1.svg">

<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400;1,500;1,700&amp;display=swap" rel="stylesheet">

<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" href="assets/plugins/feather/feather.css">

<link rel="stylesheet" href="assets/plugins/icons/flags/flags.css">

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
<h1>Forget Password</h1>
<p class="account-subtitle">Let Us Help You</p>

<form runat="server">
<div class="form-group">
<label>Enter your registered email address <span class="login-danger">*</span></label>
<%--<input class="form-control" type="text">--%>
    <asp:TextBox ID="txt_email" runat="server" class="form-control"  TextMode="Email" required="Please enter this field"></asp:TextBox>
<span class="profile-views"><i class="fas fa-envelope"></i></span>
</div>
<div class="form-group">
<%--<button class="btn btn-primary btn-block" type="submit">Reset My Password</button>--%>
    <asp:Button ID="btn_reset_pass" runat="server" Text="Forget My Password" class="btn btn-primary btn-block" OnClick="btn_reset_pass_Click1" />
</div>
<div class="form-group mb-0">
<%--<button class="btn btn-primary primary-reset btn-block" type="submit">Login</button>--%>
    <%--<asp:Button ID="btn_login" runat="server" Text="Log In" class="btn btn-primary primary-reset btn-block" OnClick="btn_login_Click"/>--%>
    <a href="SignIn.aspx">Log In</a>
    <asp:Label ID="lbl_disp" runat="server" Text=""></asp:Label>
</div>
</form>

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

<!-- Mirrored from preschool.dreamguystech.com/template/forgot-password.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 09 Jan 2023 16:00:51 GMT -->
</html>
