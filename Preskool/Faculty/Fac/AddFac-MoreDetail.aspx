﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Fac/Site1.Master" AutoEventWireup="true" CodeBehind="AddFac-MoreDetail.aspx.cs" Inherits="Preskool.Faculty.Fac.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xl-9 col-md-8">
<div class="settings-widget profile-details">
<div class="settings-menu p-0">
<div class="profile-heading">
<h3>Profile Details</h3>
<p>You have full control to manage your own account setting.</p>
</div>

<div class="checkout-form personal-address add-course-info">
<form runat="server">
<div class="col-lg-6">
    <div class="form-group">
<label class="form-control-label">Faculty Name</label>
<%--<input type="text" class="form-control" placeholder="Enter your first Name">--%>
        <asp:DropDownList ID="ddl_fname" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="fac_name" DataValueField="fac_id"></asp:DropDownList>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [faculty_mstr] WHERE ([fac_id] = @fac_id)">
            <SelectParameters>
                <asp:SessionParameter SessionField="fac_id" Name="fac_id" Type="Int32"></asp:SessionParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
<div class="form-group">
<label class="form-control-label">About Details</label>
<%--<input type="text" class="form-control" placeholder="Enter your first Name">--%>
    <asp:TextBox ID="txt_about" runat="server" class="form-control" TextMode="MultiLine" required="Please Enter Field"></asp:TextBox>
</div>
</div>
<div class="col-lg-6">
<div class="form-group">
<label class="form-control-label">Enter Your Education</label>
<%--<input type="text" class="form-control" placeholder="Enter your last Name">--%>
    <asp:TextBox ID="txt_education" runat="server" class="form-control" TextMode="MultiLine" required="Please Enter Field"></asp:TextBox>
</div>
</div>
<div class="col-lg-6">
<div class="form-group">
<label class="form-control-label">Enter Your Experience</label>
<%--<input type="text" class="form-control" placeholder="Enter your Phone">--%>
    <asp:TextBox ID="txt_experience" runat="server" class="form-control" TextMode="MultiLine" required="Please Enter Field"></asp:TextBox>
</div>
</div>
<div class="update-profile">
<%--<button type="button" class="btn btn-primary">Update Profile</button>--%>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <asp:Button ID="btn_submit" runat="server" Text="Submit" class="btn btn-primary" OnClick="btn_submit_Click"/>
    
</div>
</form>
</div>
</div>
</div>

</div>

</asp:Content>
