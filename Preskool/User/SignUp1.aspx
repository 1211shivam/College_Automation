<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp1.aspx.cs" Inherits="Preskool.User1.SignUp1" %>


<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from dreamslms.dreamguystech.com/html/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Dec 2022 12:57:08 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>Dreams LMS</title>

<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.svg">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/owl.theme.default.min.css">

<link rel="stylesheet" href="assets/plugins/feather/feather.css">

<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

<div class="main-wrapper log-wrap">
<div class="row">

<div class="col-md-6 login-bg">
<div class="owl-carousel login-slide owl-theme">
<div class="welcome-login">
<div class="login-banner">
<img src="assets/img/login-img.png" class="img-fluid" alt="Logo">
</div>
<div class="mentor-course text-center">
<h2>Welcome to <br>DreamsLMS Courses.</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
</div>
</div>
<div class="welcome-login">
<div class="login-banner">
<img src="assets/img/login-img.png" class="img-fluid" alt="Logo">
</div>
<div class="mentor-course text-center">
<h2>Welcome to <br>DreamsLMS Courses.</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
</div>
</div>
<div class="welcome-login">
<div class="login-banner">
<img src="assets/img/login-img.png" class="img-fluid" alt="Logo">
</div>
<div class="mentor-course text-center">
<h2>Welcome to <br>DreamsLMS Courses.</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
</div>
</div>
</div>
</div>

<div class="col-md-6 login-wrap-bg">

<div class="login-wrapper">
<div class="loginbox">
<div class="img-logo">
<img src="assets/img/logo.svg" class="img-fluid" alt="Logo">
<div class="back-home">
<a href="SignUp.aspx">Back</a>
</div>
</div>
<h1>Sign up</h1>
<form runat="server">
<%--<div class="form-group">
<label class="form-control-label">Your Course</label>
<%--<input type="text" class="form-control" placeholder="Enter your Full Name">--%>
    <%--<asp:DropDownList ID="ddl_UCourse" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="course_id"></asp:DropDownList>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [course_id], [cname] FROM [course_mstr]"></asp:SqlDataSource>-
</div>--%>
<%--<div class="form-group">
<label class="form-control-label">Your Semester</label>
<%--<input type="email" class="form-control" placeholder="Enter your email address">--%>
    <%--<asp:DropDownList ID="ddl_USemester" runat="server" class="form-control" DataSourceID="SqlDataSource2" DataTextField="sem" DataValueField="sub_id"></asp:DropDownList>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT  [sem] FROM [subject_mstr]"></asp:SqlDataSource>
</div>--%>
<div class="form-group">
<label class="form-control-label">Select Your Image</label>
<%--<input type="email" class="form-control" placeholder="Enter your email address">--%>
    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"/>
</div>
<div class="form-check remember-me">
<label class="form-check-label mb-0">
    <asp:Label ID="lbl_disp" runat="server" Text=""></asp:Label>
</label>
</div>
<div class="d-grid">
<%--<button class="btn btn-primary btn-start" type="submit">Create Account</button>--%>
    <asp:Button ID="btn_submit" runat="server" Text="Create Account" class="btn btn-primary btn-start" OnClick="btn_submit_Click"/>
</div>
</form>
</div>
<div class="google-bg text-center">
<span><a href="#">Or sign in with</a></span>
<div class="sign-google">
<ul>
<li><a href="#"><img src="assets/img/net-icon-01.png" class="img-fluid" alt="Logo"> Sign In using Google</a></li>
<li><a href="#"><img src="assets/img/net-icon-02.png" class="img-fluid" alt="Logo">Sign In using Facebook</a></li>
</ul>
</div>
<p class="mb-0">Already have an account? <a href="login.html">Sign in</a></p>
</div>
</div>

</div>
</div>
</div>


<script src="assets/js/jquery-3.6.0.min.js"></script>

<script src="assets/js/bootstrap.bundle.min.js"></script>

<script src="assets/js/owl.carousel.min.js"></script>

<script src="assets/js/validation.js"></script>

<script src="assets/js/script.js"></script>
</body>

<!-- Mirrored from dreamslms.dreamguystech.com/html/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Dec 2022 12:57:08 GMT -->
</html>
