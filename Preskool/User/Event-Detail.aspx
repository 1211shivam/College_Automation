<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Event-Detail.aspx.cs" Inherits="Preskool.User.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumb-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-12">
                    <div class="breadcrumb-list">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>


    <section class="course-content">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-14">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <div class="blog">
                                <div class="blog-image">
                                    <a>
                                        <img class="img-fluid" src='../Faculty/Event Image/<%#Eval("event_img") %>' alt="Post Image" style="height: 440px; width: 960px"></a>
                                </div>
                                <div class="blog-info clearfix">
                                    <div class="post-left">
                                        <ul>
                                            <li>
                                                <%--<div class="post-author">
                                    <a href="instructor-profile.html">
                                        <img src="assets/img/user/user.jpg" alt="Post Author">
                                        <span>Ruby Perrin</span></a>
                                </div>--%>
                                            </li>
                                            <li>
                                                <img class="img-fluid" src="assets/img/icon/icon-22.svg" alt=""><%#Eval("event_date","{0:dd/M/yyyy}") %></li>
                                            <li>
                                                <%--<img class="img-fluid" src="assets/img/icon/icon-23.svg" alt="">Programming, Web Design</li>--%>
                                        </ul>
                                    </div>
                                </div>
                                <h3 class="blog-title"><a href="blog-details.html"><%#Eval("event_name") %></a></h3>
                                <div class="blog-content">
                                    <p><%#Eval("event_desc") %></p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [event_mstr] WHERE ([event_id] = @event_id)">
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="event_id" Name="event_id" Type="Int32"></asp:QueryStringParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>

            </div>
        </div>
    </section>

</asp:Content>
