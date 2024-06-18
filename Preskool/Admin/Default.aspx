<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Preskool.Admin.Default" %>


<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from preschool.dreamguystech.com/template/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 09 Jan 2023 15:59:57 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Dream College- Login</title>

    <link rel="shortcut icon" href="assets/img/favicon1.svg">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400;1,500;1,700&amp;display=swap" rel="stylesheet">

    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

    <link rel="stylesheet" href="assets/plugins/feather/feather.css">

    <link rel="stylesheet" href="assets/plugins/icons/flags/flags.css">

    <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
                            <h1>Welcome to Dream College</h1>
                            <%--<p class="account-subtitle">Need an account? <a href="register.html">Sign Up</a></p>--%>
                            <h2>Sign in</h2>

                            <form runat="server">
                                <div class="form-group">
                                    <label>Email <span class="login-danger">*</span></label>
                                    <%--<input class="form-control" type="text">--%>
                                    <asp:TextBox ID="txt_email" runat="server" class="form-control" required="Please Enter Email" TextMode="Email"></asp:TextBox>
                                    <span class="profile-views"><i class="fas fa-user-circle"></i></span>
                                </div>
                                <div class="form-group">
                                    <label>Password <span class="login-danger">*</span></label>
                                    <%--<input class="form-control pass-input" type="text">--%>
                                    <asp:TextBox ID="txt_pass" runat="server" class="form-control pass-input" TextMode="Password" required="Please Enter Password"></asp:TextBox>
                                    <span class="profile-views feather-eye toggle-password"></span>
                                </div>
                                <asp:Label ID="lbl_disp" runat="server" Text=""></asp:Label>
                                <div class="forgotpass">
                                    <div class="remember-me">
                                        
                                    </div>
                                    <a href="Forget-Password.aspx">Forgot Password?</a>
                                </div>
                                <div class="form-group">
                                    <%--<button class="btn btn-primary btn-block" type="submit">Login</button>--%>
                                    <asp:Button ID="btn_login" runat="server" Text="Log In" class="btn btn-primary btn-block" OnClick="btn_login_Click" />
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

<!-- Mirrored from preschool.dreamguystech.com/template/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 09 Jan 2023 15:59:58 GMT -->
</html>
