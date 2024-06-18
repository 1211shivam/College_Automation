<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="GridSubject.aspx.cs" Inherits="Preskool.Admin.WebForm28" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content container-fluid">

        <div class="page-header">
            <div class="row align-items-center">
                <div class="col">
                    <h3 class="page-title">Subjects</h3>
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
                                    <h3 class="page-title">Subjects</h3>
                                </div>
                                <div class="col-auto text-end float-end ms-auto download-grp">
                                    <a href="DispSubject.aspx" class="btn btn-outline-gray me-2"><i class="feather-list"></i></a>
                                    <a href="GridSubject.aspx" class="btn btn-outline-gray me-2 active"><i class="feather-grid "></i></a>
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
                                                                <img height="200" width="200" src="../Faculty/Subject Image/<%#Eval("simg") %>" class="card-image-top" alt="Card image cap" />
                                                                <b>
                                                                    <td><%#Eval("sname") %></td>
                                                                    <br />
                                                                </b>
                                                                <b>
                                                                    <td><%#Eval("sdesc") %></td>
                                                                    <br />
                                                                </b>
                                        </tr>


                                        </div>
    </div>
    </div>
    </div>
    </div>
                                    </ItemTemplate>


                                </asp:Repeater>

                                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [subject_mstr]"></asp:SqlDataSource>
                            </div>
                        </div>

                       
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
