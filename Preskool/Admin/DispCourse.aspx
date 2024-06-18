<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="DispCourse.aspx.cs" Inherits="Preskool.Admin.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content container-fluid">

        <div class="page-header">
            <div class="row">
                <div class="col">
                    <h3 class="page-title">Courses</h3>
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
                        <h5 class="card-title mb-2">Courses</h5>
                        <a href="GridCourse.aspx" class="btn btn-outline-gray me-2 float-end"><i class="feather-grid"></i></a>
                        <%--<p class="card-text">
This is the most basic example of the datatables with zero configuration. Use the <code>.datatable</code> class to initialize datatables.
</p>--%>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class=" table table-stripped" id="default-datatable">
                                <thead>
                                    <tr>
                                        <th>Course Image</th>
                                        <th>Course Name</th>
                                        <th>Course Description</th>
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
                                                        <img class="avatar-img rounded-circle" height="50" width="50" src="../Admin/Course Image/<%#Eval("cimage") %>" />
                                                    </h2>
                                                </td>
                                                <td><%#Eval("cname") %></td>
                                                <td><%#Eval("cdesc") %></td>
                                                
                                                <td><a href='AddCourse.aspx?course_id=<%#Eval("course_id") %>'><i class="fas fa-edit"></i></a></td>
                                                <td><a href='DeleteCourse.aspx?course_id=<%#Eval("course_id") %>'><i class="fas fa-trash"></a></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>


                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [course_mstr]"></asp:SqlDataSource>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Course Image</th>
                                        <th>Course Name</th>
                                        <th>Course Description</th>
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

    <%--<footer>
<p>Copyright © 2022 Dreamguys.</p>
</footer>  --%>
</asp:Content>
