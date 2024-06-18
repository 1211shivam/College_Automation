<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="DispSubject.aspx.cs" Inherits="Preskool.Admin.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="content container-fluid">

        <div class="page-header">
            <div class="row">
                <div class="col">
                    <h3 class="page-title">Subjetcs</h3>
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
                        <h5 class="card-title mb-2">Subjects</h5>
                        <a href="GridSubject.aspx" class="btn btn-outline-gray me-2 float-end"><i class="feather-grid"></i></a>
                        <%--<p class="card-text">
This is the most basic example of the datatables with zero configuration. Use the <code>.datatable</code> class to initialize datatables.
</p>--%>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class=" table table-stripped" id="default-datatable">
                                <thead>
                                    <tr>
                                        <th>Subject Image</th>
                                        <th>Subject Name</th>
                                        <th>Subject Description</th>
                                        <th>Subject Fees</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                        <ItemTemplate>
                                            <tr>
                                                
                                                <td>
                                                    <h2 class="table-avatar">
                                                        <img class="avatar-img rounded-circle" height="50" width="50" src="../Faculty/Subject Image/<%#Eval("simg") %>" />
                                                    </h2>
                                                </td>
                                                <td><%#Eval("sname") %></td>
                                                <td><%#Eval("sdesc") %></td>
                                                <td><%#Eval("Subpay") %></td>
                                                <td><a href='AddSubject.aspx?subid=<%#Eval("subid") %>' ><i class="fas fa-edit"></i></a></td>
                                                <td><a href='Delete-Subject.aspx?subid=<%#Eval("subid") %>'><i class="fas fa-trash"></a></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>


                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [subject_mstr]"></asp:SqlDataSource>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Subject Image</th>
                                        <th>Subject Name</th>
                                        <th>Subject Description</th>
                                        <th>Subject Fees</th>
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
