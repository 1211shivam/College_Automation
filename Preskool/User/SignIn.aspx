<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Preskool.User1.SignIn" %>


<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from dreamslms.dreamguystech.com/html/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Dec 2022 12:57:08 GMT -->
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
                        <div class="w-100">
                            <div class="img-logo">
                                <img src="assets/img/logo1.png" class="img-fluid" alt="Logo">
                                <div class="back-home">
                                    <a href="Index.aspx">Back to Home</a>
                                </div>
                            </div>
                            <h1>Sign into Your Account</h1>
                            <form runat="server">
                                <div class="form-group">
                                    <label class="form-control-label">Email</label>
                                    <%--<input type="email" class="form-control" placeholder="Enter your email address">--%>
                                    <asp:TextBox ID="txt_uemail" runat="server" class="form-control" placeholder="Enter your email address" required="Please Enter Field" TextMode="Email"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="form-control-label">Password</label>
                                    <div class="pass-group">
                                        <%--<input type="password" class="form-control pass-input" placeholder="Enter your password">--%>
                                        <asp:TextBox ID="txt_upass" runat="server" type="password" class="form-control pass-input" placeholder="Enter your password" required="Please Enter Field"></asp:TextBox>
                                        <span class="feather-eye toggle-password"></span>
                                    </div>
                                </div>
                                <div class="forgot">
                                    <span><a class="forget-link" href="ForgetPass.aspx">Forget Password ?</a></span>
                                </div>
                                
                                <div class="d-grid">
                                    <%--<button class="btn btn-primary btn-start" type="submit">Sign In</button>--%>
                                    <asp:Label ID="lbl_disp" runat="server" Text=""></asp:Label>
                                    <asp:Button ID="btn_signin" runat="server" Text="Sign In" class="btn btn-primary btn-start" OnClick="btn_signin_Click" />
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="google-bg text-center">
                        
                        
                        <p class="mb-0">New User ? <a href="SignUp.aspx">Create an Account</a></p>
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

<!-- Mirrored from dreamslms.dreamguystech.com/html/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Dec 2022 12:57:08 GMT -->
</html>
