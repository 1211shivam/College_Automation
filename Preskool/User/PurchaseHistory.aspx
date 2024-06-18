<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="PurchaseHistory.aspx.cs" Inherits="Preskool.User.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="course-content purchase-widget">
        <div class="container">
            <div class="student-widget">
                <div class="student-widget-group">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">

                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        <div class="col-lg-12 col-md-12 d-flex">
                                            <div class="course-box course-design list-course d-flex">
                                                <div class="product">
                                                    <div class="product-img">
                                                        <a href="view-invoice.aspx?Oid=<%#Eval("Orderid") %>">
                                                            <img class="img-fluid" alt="" src='../../Faculty/Subject Image/<%#Eval("simg") %>'>
                                                        </a>
                                                        <div class="price">
                                                            <h3 class="free-color"><%#Eval("subpay") %></h3>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <div class="head-course-title">
                                                            <h3 class="title"><a href="course-details.html"><%#Eval("sname") %></a></h3>
                                                            <div class="all-btn all-category d-flex align-items-center">
                                                                <a href="view-invoice.aspx?Oid=<%#Eval("Orderid") %>" class="btn btn-primary">Invoice</a>
                                                            </div>
                                                        </div>

                                                        <div class="course-group d-flex mb-0">
                                                            <div class="course-group-img d-flex">
                                                                <a href="student-profile.html">
                                                                    <%--<img src='../../Faculty/FacultyImage/<%#Eval("fac_img") %>' alt="" class="img-fluid"></a>--%>
                                                                <div class="course-name">
                                                                    <%--<h4><a href="student-profile.html"><%#Eval("fac_name") %></a></h4>--%>
                                                                    <p></p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>


                                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT order_mstr.Orderid, order_mstr.Studid, order_mstr.Orderdate, order_mstr.OrderAmt, order_mstr.Ostatus, order_details.Ordid, order_details.Orderid AS Expr1, order_details.Subid, order_details.Subpay, order_details.Studid AS Expr2, subject_mstr.subid AS Expr3, subject_mstr.sname, user_mstr.uid, user_mstr.uname, subject_mstr.simg FROM order_mstr INNER JOIN order_details ON order_mstr.Orderid = order_details.Orderid INNER JOIN subject_mstr ON order_details.Subid = subject_mstr.subid INNER JOIN user_mstr ON order_details.Studid = user_mstr.uid AND order_mstr.Studid = user_mstr.uid WHERE (user_mstr.uid = @uid)">
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
