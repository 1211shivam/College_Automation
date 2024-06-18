<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="DispReview.aspx.cs" Inherits="Preskool.Admin.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content container-fluid">

        <div class="page-header">
            <div class="row">
                <div class="col">
                    <h3 class="page-title">Review</h3>
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
                        <h5 class="card-title mb-2">Review</h5>
                        <%--<a href="GridFaculty.aspx" class="btn btn-outline-gray me-2 float-end"><i class="feather-grid"></i></a>--%>
                        <%--<p class="card-text">
This is the most basic example of the datatables with zero configuration. Use the <code>.datatable</code> class to initialize datatables.
</p>--%>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class=" table table-stripped" id="default-datatable">
                                <thead>
                                    <tr>
                                        <th>Faculty</th>
                                        <th>Subject</th>
                                        <th>Review</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("fac_name") %></td>
                                                <td><%#Eval("Subject") %></td>
                                                <td><%#Eval("Overview") %></td>
                                                <td><a href='Delete_Review.aspx?review_id=<%#Eval("review_id") %>'><i class="fas fa-trash"></a></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>


                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT faculty_mstr.fac_name, review_mstr.fac_id, review_mstr.Subject, review_mstr.Overview, review_mstr.review_id FROM faculty_mstr INNER JOIN review_mstr ON faculty_mstr.fac_id = review_mstr.fac_id"></asp:SqlDataSource>
                                </tbody>
                                <tfoot>
                                    <tr>
                                         <th>Faculty</th>
                                        <th>Subject</th>
                                        <th>Review</th>
                                        <th>Action</th>
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
