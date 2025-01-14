﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPass.aspx.cs" Inherits="Preskool.User.ForgetPass" %>


<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from dreamslms.dreamguystech.com/html/forgot-password.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Dec 2022 12:57:08 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Dream College</title>

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

    <div class="main-wrapper">
        <div class="row">

            <div class="col-md-6 login-bg">
                <div class="owl-carousel login-slide owl-theme aos" data-aos="fade-up">
                    <div class="welcome-login">
                        <div class="login-banner">
                            <img src="assets/img/login-img.png" class="img-fluid" alt="Logo">
                        </div>
                        <div class="mentor-course text-center">
                            <h2>Welcome to
                                <br>
                                Dream College</h2>
                            
                        </div>
                    </div>
                   
                </div>
            </div>

            <div class="col-md-6 login-wrap-bg">

                <div class="login-wrapper">
                    <div class="loginbox">
                        <div class="img-logo">
                            <img src="assets/img/logo1.png" class="img-fluid" alt="Logo">
                            <div class="back-home">
                                <a href="SignIn.aspx">Back</a>
                            </div>
                        </div>
                        <h1>Forgot Password ?</h1>
                        <div class="reset-password">
                            <p>Enter your email to reset your password.</p>
                        </div>
                        <form runat="server">
                            <div class="form-group">
                                <label class="form-control-label">Email</label>
                                <%--<input type="email" class="form-control" placeholder="Enter your email address">--%>
                                <asp:TextBox ID="txt_uemail" runat="server" class="form-control" placeholder="Enter your email address"></asp:TextBox>
                            </div>
                            <div class="d-grid">
                                <%--<button class="btn btn-start" type="submit">Submit</button>--%>
                                <asp:Label ID="lbl_disp" runat="server" Text=""></asp:Label>
                                <asp:Button ID="btn_submit" runat="server" Text="Submit" class="btn btn-start" OnClick="btn_submit_Click" />
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <script src="assets/js/jquery-3.6.0.min.js"></script>

    <script src="assets/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/owl.carousel.min.js"></script>

    <script src="assets/js/script.js"></script>
</body>

<!-- Mirrored from dreamslms.dreamguystech.com/html/forgot-password.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Dec 2022 12:57:08 GMT -->
</html>
