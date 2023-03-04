<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp1.aspx.cs" Inherits="Preskool.Faculty.SignUp1" %>

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
<label>Select Your Course <span class="login-danger">*</span></label>
<%--<input class="form-control" type="text">--%>

    <asp:DropDownList ID="ddl_course" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="course_id"></asp:DropDownList>
    <%--<span class="profile-views"><i class="fas fa-user-circle"></i></span>--%>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [course_mstr]"></asp:SqlDataSource>
</div>
<div class="form-group">
<label>Select Your Subject <span class="login-danger">*</span></label>
<%--<input class="form-control" type="text">--%>
    <asp:DropDownList ID="ddl_subject" runat="server" class="form-control" DataSourceID="SqlDataSource2" DataTextField="sname" DataValueField="subid"></asp:DropDownList>
    <%--<span class="profile-views"><i class="fas fa-envelope"></i></span>--%>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [subject_mstr]"></asp:SqlDataSource>
</div>
<div class="form-group">
<label>Select Your Position <span class="login-danger">*</span></label>
<%--<input class="form-control pass-input" type="text">--%>
    <asp:DropDownList ID="ddl_position" runat="server" class="form-control" DataSourceID="SqlDataSource3" DataTextField="pname" DataValueField="posi_id"></asp:DropDownList>
    <%--<span class="profile-views feather-eye toggle-password"></span>--%>
    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [position_mstr]"></asp:SqlDataSource>
</div>
<div class="form-group">
<label>Add Image <span class="login-danger">*</span></label>
<%--<input class="form-control pass-confirm" type="text">--%>
    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"/>
<%--<span class="profile-views feather-eye reg-toggle-password"></span>--%>
</div>
    <asp:Label ID="lbl_disp" runat="server" Text=""></asp:Label>
<div class=" dont-have">Already Registered? <a href="SignIn.aspx">Login</a></div>
<div class="form-group mb-0">
<%--<button class="btn btn-primary btn-block" type="submit">Register</button>--%>
    <asp:Button ID="btn_submit" runat="server" Text="Submit" class="btn btn-primary btn-block" OnClick="btn_submit_Click"/>
    <asp:Label ID="Label1" runat="server" Text="" Font-Size="X-Large"></asp:Label>
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