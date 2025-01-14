﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Preskool.User1.WebForm3" %>


<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from dreamslms.dreamguystech.com/html/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Dec 2022 12:57:08 GMT -->
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

    <div class="main-wrapper log-wrap">
        <div class="row">

            <div class="col-md-6 login-bg">
                <div class="owl-carousel login-slide owl-theme">
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
                                <a href="Index.aspx">Back to Home</a>
                            </div>
                        </div>
                        <h1>Sign up</h1>
                        <form runat="server">
                            <div class="form-group">
                                <label class="form-control-label">Full Name</label>
                                <%--<input type="text" class="form-control" placeholder="Enter your Full Name">--%>
                                <asp:TextBox ID="txt_uname" runat="server" class="form-control" placeholder="Enter your Full Name" required="Please Enter Field"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="form-control-label">Email</label>
                                <%--<input type="email" class="form-control" placeholder="Enter your email address">--%>
                                <asp:TextBox ID="txt_uemail" runat="server" class="form-control" placeholder="Enter your email address" required="Please Enter Field" TextMode="Email"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="form-control-label">Password</label>
                                <div class="pass-group" id="passwordInput">
                                    <%--<input type="password" class="form-control pass-input" placeholder="Enter your password">--%>
                                    <asp:TextBox ID="txt_upass" runat="server" class="form-control pass-input" placeholder="Enter your password" type="password" required="Please Enter Field"></asp:TextBox>
                                    <span class="toggle-password feather-eye"></span>
                                    <span class="pass-checked"><i class="feather-check"></i></span>
                                </div>
                                <div class="password-strength" id="passwordStrength">
                                    <span id="poor"></span>
                                    <span id="weak"></span>
                                    <span id="strong"></span>
                                    <span id="heavy"></span>
                                </div>
                                <div id="passwordInfo"></div>
                            </div>
                            <div class="form-group">
                                <label class="form-control-label">Mobile No.</label>
                                <%--<input type="email" class="form-control" placeholder="Enter your email address">--%>
                                <asp:TextBox ID="txt_umob" runat="server" class="form-control" placeholder="Enter your mobile number" required="Please Enter Field" TextMode="Number"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label class="form-control-label">Select Your Image</label>
                                <%--<input type="email" class="form-control" placeholder="Enter your email address">--%>
                                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" required="Please Enter Field"/>
                            </div>

                            <%--<div class="form-check remember-me">
<label class="form-check-label mb-0">
<input class="form-check-input" type="checkbox" name="remember"> I agree to the <a href="term-condition.html">Terms of Service</a> and <a href="privacy-policy.html">Privacy Policy.</a>
</label>
</div>--%>
                            <div class="d-grid">
                                <%--<button class="btn btn-primary btn-start" type="submit">Create Account</button>--%>
                                <asp:Label ID="lbl_disp" runat="server" Text=""></asp:Label>
                                <asp:Button ID="btn_next" runat="server" Text="Create An Account" class="btn btn-primary btn-start" OnClick="btn_next_Click1" />
                            </div>
                        </form>
                    </div>
                    <div class="google-bg text-center">
                       
                        <p class="mb-0">Already have an account? <a href="SignIn.aspx">Sign in</a></p>
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
