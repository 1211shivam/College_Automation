<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site2.Master" AutoEventWireup="true" CodeBehind="Disp-Wishlist.aspx.cs" Inherits="Preskool.User.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="course-content">
        <div class="container">
            <div class="student-widget">
                <div class="student-widget-group">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">

                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        <div class="col-xl-3 col-lg-4 col-md-6 d-flex">
                                            <div class="course-box course-design d-flex ">
                                                <div class="product">
                                                    <div class="product-img">
                                                        
                                                            <img class="img-fluid" alt="" src='../../Faculty/Subject Image/<%#Eval("simg") %>'>
                                                        </a>
                                                        <div class="price">
                                                            <h3 class="free-color"><%#Eval("subpay") %></h3>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <div class="course-group d-flex">
                                                            <div class="course-group-img d-flex">
                                                                <a >
                                                                    <img src='../../Faculty/Faculty Image/<%#Eval("fac_img") %>' alt="" class="img-fluid"></a>
                                                                <div class="course-name">
                                                                    <h4><a ><%#Eval("fac_name") %></a></h4>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <h3 class="title"><a ><%#Eval("sname")%></a></h3>


                                                        <div class="all-btn all-category d-flex align-items-center">
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>


                                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT wishlist_mstr.Wid, wishlist_mstr.Wsubid, wishlist_mstr.Wstudid, wishlist_mstr.Wfid, subject_mstr.sname, subject_mstr.simg, subject_mstr.subpay, faculty_mstr.fac_name, faculty_mstr.fac_id, faculty_mstr.fac_img, position_mstr.pname, faculty_mstr.subid, user_mstr.uid FROM faculty_mstr INNER JOIN subject_mstr ON faculty_mstr.subid = subject_mstr.subid INNER JOIN position_mstr ON faculty_mstr.posi_id = position_mstr.posi_id INNER JOIN wishlist_mstr ON subject_mstr.subid = wishlist_mstr.Wsubid AND faculty_mstr.subid = wishlist_mstr.Wsubid INNER JOIN user_mstr ON wishlist_mstr.Wstudid = user_mstr.uid WHERE (user_mstr.uid = @uid)">
                                    <SelectParameters>
                                        <asp:SessionParameter SessionField="uid" Name="uid"></asp:SessionParameter>

                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
