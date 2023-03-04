<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="GridFaculty.aspx.cs" Inherits="Preskool.Admin.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content container-fluid">

<div class="page-header">
<div class="row align-items-center">
<div class="col">
<h3 class="page-title">Teachers</h3>
<ul class="breadcrumb">
<%--<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>--%>
<%--<li class="breadcrumb-item active">Teachers</li>--%>
</ul>
</div>
</div>
</div>

<div class="student-group-form">
<div class="row">
</div>
</div>
<div class="row">
<div class="col-sm-12">
<div class="card card-table">
<div class="card-body">

<div class="page-header">
<div class="row align-items-center">
<div class="col">
<h3 class="page-title">Teachers</h3>
</div>
<div class="col-auto text-end float-end ms-auto download-grp">
<a href="DispFaculty.aspx" class="btn btn-outline-gray me-2"><i class="feather-list"></i></a>
<a href="GridFaculty.aspx" class="btn btn-outline-gray me-2 active"><i class="feather-grid "></i></a>
</div>
</div>
</div>
    <div class="student-pro-list">
<div class="row">

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <tr>
                <div class="col-xl-3 col-lg-4 col-md-6 d-flex">
<div class="card">
<div class="card-body">
<div class="student-box flex-fill">
<div class="student-img">
                <img height="200px" width="200px" src="../Faculty/Faculty Image/<%#Eval("fac_img") %>" class="card-image-top" alt="Card image cap" />
               <b> <td><%#Eval("fac_name") %></td><br /></b>
                <b><td><%#Eval("fac_email") %></td><br /></b>
                <b><td><%#Eval("pname") %></td></b>
            </tr>

            
    </div>
    </div>
    </div>
    </div>
    </div>
        </ItemTemplate>


    </asp:Repeater>

</div>
        </div>
    
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT faculty_mstr.fac_name, faculty_mstr.fac_email, faculty_mstr.posi_id, faculty_mstr.fac_img, position_mstr.pname FROM faculty_mstr INNER JOIN position_mstr ON faculty_mstr.posi_id = position_mstr.posi_id"></asp:SqlDataSource>
</div>
</div>
</div>
</div>
</div>

<%--<footer>
<p>Copyright © 2022 Dreamguys.</p>
</footer>--%>


<script src="assets/js/jquery-3.6.0.min.js"></script>

<script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="assets/js/feather.min.js"></script>

<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<script src="assets/plugins/datatables/datatables.min.js"></script>

<script src="assets/js/script.js"></script>

</asp:Content>
