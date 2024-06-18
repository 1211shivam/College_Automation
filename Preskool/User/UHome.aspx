<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site2.Master" AutoEventWireup="true" CodeBehind="UHome.aspx.cs" Inherits="Preskool.User.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="course-content">
        <div class="container">
            <div class="student-widget">
                <div class="student-widget-group">
                    <div class="row">
                        <div class="col-lg-12">

                            <div class="showing-list">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="show-filter choose-search-blk">
                                            <form action="#" runat="server">
                                                
                                                <div class="mycourse-student align-items-center">
                                                    <div class="student-search">
                                                        
                                                    </div>
                                                    <div class="student-filter">
                                                        <div class="form-group select-form mb-0">
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    <div class="col-xl-3 col-lg-4 col-md-6 d-flex">
                                        <div class="course-box course-design d-flex ">
                                            <div class="product">
                                                <div class="product-img">
                                                    <a href="Subjects.aspx?course_id=<%#Eval("course_id") %>">
                                                        <img class="img-fluid" alt="" src='../../Admin/Course Image/<%#Eval("cimage") %>'>
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <h3 class="title"><a "><%#Eval("cname") %></a></h3>


                                                    <%--<div class="student-percent">
                                                        <p>Fees : <%#Eval("") %></p>
                                                    </div>
                                                    <div class="start-leason d-flex align-items-center">
                                                        <a href="Subject-Detail.aspx?subid=<%#Eval("subid") %>" class="btn btn-primary">Start Lesson</a>
                                                        
                                                    </div>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [course_mstr]">
                            </asp:SqlDataSource>
                        </div>




                    </div>
                </div>
            </div>
        </div>
        
    </section>


</asp:Content>
