<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="DispFaculty.aspx.cs" Inherits="Preskool.Admin.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content container-fluid">

        <div class="page-header">
            <div class="row">
                <div class="col">
                    <h3 class="page-title">Faculty</h3>
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
                        <h5 class="card-title mb-2">Faculty</h5>
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
                                        <th>Name</th>
                                        <th>Image</th>
                                        <th>Mobile Number</th>
                                        <th>Course Name</th>
                                        <th>Subject Name</th>
                                        <th>Position Name</th>
                                        <th>Verify</th>
                                        <th>Action</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                        <ItemTemplate>
                                            <tr>

                                                <td><%#Eval("fac_name") %></td>
                                                <td>
                                                    <h2 class="table-avatar">
                                                        <img class="avatar-img rounded-circle" height="50" width="50" src="../Faculty/Faculty Image/<%#Eval("fac_img") %>" />
                                                    </h2>
                                                </td>

                                                <td><%#Eval("fac_mob") %></td>
                                                <td><%#Eval("cname") %></td>
                                                <td><%#Eval("sname") %></td>
                                                <td><%#Eval("pname") %></td>
                                                <td><%#Eval("verify") %></td>
                                                <td><a href='Approve.aspx?fid=<%#Eval("fac_id")%>'>Approved</a></td>
                                                <td><a href='Delete_Fac.aspx?fac_id=<%#Eval("fac_id") %>'><i class="fas fa-trash"></a></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>


                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT faculty_mstr.fac_id, faculty_mstr.fac_name, faculty_mstr.fac_mob, faculty_mstr.course_id, faculty_mstr.subid, faculty_mstr.posi_id, faculty_mstr.fac_img, faculty_mstr.verify, course_mstr.cname, position_mstr.pname, subject_mstr.sname FROM faculty_mstr INNER JOIN course_mstr ON faculty_mstr.course_id = course_mstr.course_id INNER JOIN position_mstr ON faculty_mstr.posi_id = position_mstr.posi_id INNER JOIN subject_mstr ON faculty_mstr.subid = subject_mstr.subid WHERE (faculty_mstr.verify = @verify)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="0" Name="verify"></asp:Parameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Name</th>
                                        <th>Image</th>
                                        <th>Mobile Number</th>
                                        <th>Course Name</th>
                                        <th>Subject Name</th>
                                        <th>Position Name</th>
                                        <th>Verify</th>
                                        <th>Action</th>
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
