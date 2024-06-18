<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site2.Master" AutoEventWireup="true" CodeBehind="Update-Profile.aspx.cs" Inherits="Preskool.User.WebForm23" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xl-12 col-md-12">
<div class="settings-widget profile-details">
<div class="settings-menu p-0">
<div class="profile-heading">
<h3>Profile Details</h3>
<p>You have full control to manage your own account setting.</p>
</div>
<div class="checkout-form personal-address add-course-info">

<form runat="server">
<div class="row">
<div class="col-lg-6">
<div class="form-group">
<label class="form-control-label">Enter Name</label>
<%--<input type="text" class="form-control" placeholder="Enter your first Name">--%>
    <asp:TextBox ID="txt_uname" runat="server" class="form-control" placeholder="Enter your Name" required="Please Enter Field"></asp:TextBox>
</div>
</div>
<div class="col-lg-6">
<div class="form-group">
<label class="form-control-label">Enter Mobile Number</label>
<%--<input type="text" class="form-control" placeholder="Enter your last Name">--%>
    <asp:TextBox ID="txt_mob" runat="server" class="form-control" placeholder="Enter your Mobile Number" required="Please Enter Field"></asp:TextBox>
</div>
</div>
<div class="col-lg-6">
<div class="form-group">
<label class="form-control-label">Enter Email</label>
<%--<input type="text" class="form-control" placeholder="Enter your Phone">--%>
    <asp:TextBox ID="txt_email" runat="server" class="form-control" placeholder="Enter your Email" required="Please Enter Field"></asp:TextBox>
</div>
</div>
<div class="col-lg-6">
<div class="form-group">
<label class="form-control-label">Enter Password</label>
<%--<input type="text" class="form-control" placeholder="Enter your Email">--%>
    <asp:TextBox ID="txt_pass" runat="server" class="form-control" placeholder="Enter your Password" required="Please Enter Field"></asp:TextBox>
</div>
</div>
<div class="col-lg-6">
<div class="form-group">
<label class="form-control-label">Select New Image</label>
<%--<input type="text" class="form-control" placeholder="Birth of Date">--%>
    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" required="Please Select File"/>
</div>
</div>
<div class="update-profile">
<%--<button type="button" class="btn btn-primary">Update Profile</button>--%>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <asp:Button ID="btn_submit" runat="server" Text="Update Profile" class="btn btn-primary" OnClick="btn_submit_Click1"/>
</div>
</div>
</form>
</div>
</div>
</div>
</div>

</asp:Content>
