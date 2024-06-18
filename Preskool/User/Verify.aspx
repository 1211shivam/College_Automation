<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verify.aspx.cs" Inherits="Preskool.User.Verify" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.svg">
    <title>Responsive OTP Verification Form Using Bootstrap 5</title>
	<!-- Bootstrap 5 CDN Link -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom CSS Link -->
	<link rel="stylesheet" href="style.css">
	<style>
body{
background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(105,246,131,1) 46%, rgba(0,212,255,1) 100%);
}
p{
text-align:center
}

</style>
</head>
<body> 

    <section class="wrapper">
		<div class="container">
			<div class="col-sm-8 offset-sm-2 col-lg-6 offset-lg-3 col-xl-6 offset-xl-3 text-center ">
				
				<form class="rounded bg-white shadow p-5" runat="server">
					<h3 class="text-dark fw-bolder fs-4 mb-2 ">Two Step Verification</h3>

					<div class="fw-normal text-muted mb-4 ">
						Enter the verification code we sent to
						Your Email Address
					</div>  
					<div class="otp_input text-start mb-2">
                        <p>Type your 5 digit security code</p>
						<div class="d-flex align-items-center justify-content-between mt-2">
                            <%--<input type="text" class="form-control" placeholder="">--%>
							<asp:TextBox ID="txt_otp" runat="server" class="form-control" placeholder="Enter Otp" required="This Field Is Compulsory"  MaxLength="5"></asp:TextBox>
                        </div> 
					</div>  

					<%--<button type="submit" class="btn btn-primary submit_btn my-4">Submit</button>--%>
					<asp:Label ID="Label1" runat="server" Text=""></asp:Label><br>
					<asp:Button ID="btn_submit" runat="server" Text="Submit" class="btn btn-primary submit_btn my-4" OnClick="btn_submit_Click"/>
                    <div class="fw-normal text-muted mb-2">
						Didn’t get the code ? <a href="Resend.aspx" class="text-primary fw-bold text-decoration-none">Resend</a>
					</div>
				</form>
			</div>
		</div>
	</section>
</body>
</html>



