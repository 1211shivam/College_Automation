<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Admin-Profile.aspx.cs" Inherits="Preskool.Admin.WebForm22" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
        <div class="content container-fluid">

            <div class="page-header">
                <div class="row">
                    <div class="col">
                        
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="profile-header">
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <div class="row align-items-center">
                                    <div class="col-auto profile-image">
                                        <a href="#">
                                            <img class="rounded-square" alt="Admin Image" src='../../Admin/Admin Image/<%#Eval("aimg") %>' style="height:150px;width:200px">
                                        </a>
                                    </div>
                                    <div class="col ms-md-n2 profile-user-info">
                                        <h4 class="user-name mb-0"><%#Eval("aname") %></h4>
                                    </div>

                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [admin_mstr]"></asp:SqlDataSource>
                    </div>
                    <div class="tab-content profile-tab-cont">

                        <div class="tab-pane fade show active" id="per_details_tab">

                            <div class="row">
                                <div class="col-lg-12 justify-content-end" >
                                    <div class="card">
                                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                                            <ItemTemplate>
                                                <div class="card-body">
                                                    <h5 class="card-title d-flex justify-content-between">
                                                        <span>Personal Details</span>

                                                    </h5>
                                                    <div class="row">
                                                        <p class="col-sm-3 text-muted text-sm-end mb-0 mb-sm-3">Name</p>
                                                        <p class="col-sm-9"><%#Eval("aname") %></p>
                                                    </div>

                                                    <div class="row">
                                                        <p class="col-sm-3 text-muted text-sm-end mb-0 mb-sm-3">Email ID</p>
                                                        <p class="col-sm-9"><%#Eval("aemail") %></p>
                                                    </div>
                                                    <div class="row">
                                                        <p class="col-sm-3 text-muted text-sm-end mb-0 mb-sm-3">Mobile</p>
                                                        <p class="col-sm-9"><%#Eval("amob") %></p>
                                                    </div>

                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [admin_mstr]"></asp:SqlDataSource>
                                    </div>
                                </div>
                               
                            </div>

                        </div>


                        <div id="password_tab" class="tab-pane fade">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Change Password</h5>
                                    <div class="row">
                                        <div class="col-md-10 col-lg-6">
                                            <form>
                                                <div class="form-group">
                                                    <label>Old Password</label>
                                                    <input type="password" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>New Password</label>
                                                    <input type="password" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>Confirm Password</label>
                                                    <input type="password" class="form-control">
                                                </div>
                                                <button class="btn btn-primary" type="submit">Save Changes</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    

</asp:Content>
