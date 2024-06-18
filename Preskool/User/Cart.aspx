<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Preskool.User.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="breadcrumb-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-12">
                    <div class="breadcrumb-list">
                        <nav aria-label="breadcrumb" class="page-breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item" aria-current="page">Pages</li>
                                <li class="breadcrumb-item" aria-current="page">Cart</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <section class="course-content cart-widget">
        <div class="container">
            <div class="student-widget">
                <div class="student-widget-group">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="cart-head">
                                <h4>Your cart
                                    <%--<asp:Label ID="lblCartcount" runat="server" Text=""></asp:Label>--%>
                                    <asp:Label ID="lblCartcount" runat="server" Text=""></asp:Label>
                                </h4>
                            </div>
                            <div class="cart-group">
                                <div class="row">


                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                        <ItemTemplate>
                                            <div class="col-lg-12 col-md-12 d-flex">
                                                <div class="course-box course-design list-course d-flex">
                                                    <div class="product">
                                                        <div class="product-img">
                                                            <a href="course-details.html">
                                                                <img class="img-fluid" alt="" src='../../Faculty/Subject Image/<%#Eval("simg") %>'>
                                                            </a>
                                                            <div class="price">
                                                                <h3 class="free-color"><%#Eval("Subpay") %></h3>
                                                            </div>
                                                        </div>
                                                        <div class="product-content">
                                                            <div class="head-course-title">
                                                                <h3 class="title"><a href="course-details.html"><%#Eval("sname") %></a></h3>
                                                            </div>
                                                            <div class="course-info d-flex align-items-center border-bottom-0 pb-0">
                                                                <div class="rating-img d-flex align-items-center">
                                                                    <p><%#Eval("sdesc") %></p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="cart-remove">
                                                            <a href="Delete-Cart.aspx?Cid=<%#Eval("cartid") %>" class="btn btn-primary">Remove</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            </div>
                                            </ItemTemplate>
                                    </asp:Repeater>

                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT subject_mstr.subid, subject_mstr.sdesc, subject_mstr.sname, subject_mstr.simg, subject_mstr.subpay, user_mstr.uid, AddtoCart.subid AS Expr2, AddtoCart.cartid FROM AddtoCart INNER JOIN subject_mstr ON AddtoCart.subid = subject_mstr.subid INNER JOIN user_mstr ON AddtoCart.Stud_id = user_mstr.uid WHERE (AddtoCart.Stud_id = @Stud_id)">
                                        <SelectParameters>
                                            <asp:SessionParameter SessionField="uid" Name="Stud_id"></asp:SessionParameter>


                                        </SelectParameters>
                                    </asp:SqlDataSource>
                            </div>
                            <div class="cart-total">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12">
                                        <div class="cart-subtotal">
                                            <p>
                                                Subtotal <span>
                                                    <%--<asp:Label ID="lblSubtotal" runat="server" Text=""></asp:Label></span>--%>
                                                    <asp:Label ID="lblSubtotal" runat="server" Text=""></asp:Label>
                                                    </span>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="check-outs">
                                            <a href="Checkout.aspx" class="btn btn-primary">Checkout</a>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="condinue-shop">
                                            <a href="UHome.aspx" class="btn btn-primary">Continue Shopping</a>
                                        </div>
                                    </div>
                                        
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            </div>
    </section>

</asp:Content>
