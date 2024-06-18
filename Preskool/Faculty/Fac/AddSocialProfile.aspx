<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Fac/Site1.Master" AutoEventWireup="true" CodeBehind="AddSocialProfile.aspx.cs" Inherits="Preskool.Faculty.Fac.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xl-9 col-md-8">
<div class="settings-widget profile-details">
<div class="settings-menu p-0">
<div class="profile-heading">
<h3>Social Profiles</h3>
<p>Add your social profile links in below social accounts.</p>
</div>
<div class="checkout-form personal-address">
<form runat="server">
<div class="row">
<div class="col-lg-12">
<div class="form-group">
<label class="form-control-label">Twitter</label>
<%--<input type="text" class="form-control" placeholder="Twitter Profile Name">--%>
    <asp:TextBox ID="txt_twitter" runat="server" class="form-control" placeholder="Twitter Profile Name" required="Please Enter Field"></asp:TextBox>
</div>
</div>
<div class="col-lg-12">
<div class="form-group">
<label class="form-control-label">Facebook</label>
<%--<input type="text" class="form-control" placeholder="Facebook Profile Name">--%>
    <asp:TextBox ID="txt_facebook" runat="server" class="form-control" placeholder="Facebook Profile Name" required="Please Enter Field"></asp:TextBox>
</div>
</div>
<div class="col-lg-12">
<div class="form-group">
<label class="form-control-label">Instagram</label>
<%--<input type="text" class="form-control" placeholder="Instagram Profile Name">--%>
    <asp:TextBox ID="txt_instagram" runat="server" class="form-control" placeholder="Instagram Profile Name" required="Please Enter Field"></asp:TextBox>
</div>
</div>
<div class="col-lg-12">
<div class="form-group">
<label class="form-control-label">LinkedIn Profile URL</label>
<%--<input type="text" class="form-control" placeholder="LinkedIn Profile URL">--%>
    <asp:TextBox ID="txt_linkedIn" runat="server" class="form-control" placeholder="LinkedIn Profile URL" required="Please Enter Field"></asp:TextBox>
</div>
</div>
<div class="col-lg-12">
<div class="form-group">
<label class="form-control-label">YouTube</label>
<%--<input type="text" class="form-control" placeholder="YouTube">--%>
    <asp:TextBox ID="txt_youtube" runat="server" class="form-control" placeholder="YouTube" required="Please Enter Field"></asp:TextBox>
</div>
</div>
<div class="update-profile save-social">
<%--<button type="button" class="btn btn-primary">Save Social Profile</button>--%>
    <asp:Label ID="lbl_disp" runat="server" Text=""></asp:Label>
    <asp:Button ID="btn_save" runat="server" Text="Save Social Profile"  class="btn btn-primary" OnClick="btn_save_Click"/>
    
</div>
</div>
</form>
</div>
</div>
</div>
</div>

<%--</div>
</div>
</div>--%>

</asp:Content>
