<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="DispPosition.aspx.cs" Inherits="Preskool.Admin.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="content container-fluid">

<div class="page-header">
<div class="row">
<div class="col">
<h3 class="page-title">Position</h3>
<ul class="breadcrumb">
<%--<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
<li class="breadcrumb-item active">Data Tables</li>--%>
</ul>
</div>
</div>
</div>

<div class="row">
<div class="col-sm-12">
<div class="card">
<div class="card-header">
<h5 class="card-title mb-2">Positions</h5>
<%--<p class="card-text">
This is the most basic example of the datatables with zero configuration. Use the <code>.datatable</code> class to initialize datatables.
</p>--%>
</div>
<div class="card-body">
<div class="table-responsive">
<table class=" table table-stripped" id="default-datatable">
<thead>
<tr>
<th>Name</th>
<th>Position</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</thead>
<tbody>
          <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [position_mstr]"></asp:SqlDataSource> 
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <tr>

                <td><%#Eval("posi_id") %></td>
                <td><%#Eval("pname") %></td>
                <td><a href='AddPosition.aspx?posi_id=<%#Eval("posi_id") %>'><i class="fas fa-edit"></i></a></td>
                <td><a href='DeletePosition.aspx?posi_id=<%#Eval("posi_id") %>'><i class="fas fa-trash"></i></a></td>
            </tr>


        </ItemTemplate>

    </asp:Repeater>



</tbody>
    <tfoot>
        <tr>
<th>Name</th>
<th>Position</th>
<th>Edit</th>
<th>Delete</th>
</tr>
    </tfoot>
</table>
</div>
</div>
</div>
</div>
</div>
</div>




</asp:Content>
