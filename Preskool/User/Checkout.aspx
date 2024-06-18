<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Preskool.User.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="course-content checkout-widget">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <div class="student-widget">
                        <div class="student-widget-group add-course-info">
                            <div class="cart-head">
                                <h4>Billing Address</h4>
                            </div>
                            <div class="checkout-form">
                                <form runat="server">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="form-control-label">First Name</label>
                                            <%--<input type="text" class="form-control" placeholder="Enter your first Name">--%>
                                            <asp:Label ID="lblDate" runat="server" Text="" Visible="false"></asp:Label>
                                            <asp:TextBox ID="txtFirstname" runat="server" class="form-control" placeholder="Enter your first Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="form-control-label">Last Name</label>
                                            <%--<input type="text" class="form-control" placeholder="Enter your last Name">--%>
                                            <asp:TextBox ID="txtLastname" runat="server" class="form-control" placeholder="Enter your last Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label class="form-control-label">Phone Number</label>
                                            <%--<input type="text" class="form-control" placeholder="Phone Number">--%>
                                            <asp:TextBox ID="txtMobno" runat="server" class="form-control" placeholder="Phone Number"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label class="form-control-label">Address Line</label>
                                            <%--<input type="text" class="form-control" placeholder="Address">--%>
                                            <asp:TextBox ID="txtAddress" runat="server" class="form-control" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label class="form-control-label">Total Amount</label>
                                            <%--<input type="text" class="form-control" placeholder="Address">--%>
                                            <asp:TextBox ID="txtTotalAmount" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="payment-btn btn btn-block">
                                    <%--<button class="btn btn-primary" type="submit">Make a Payment</button>--%>
                                    <asp:Button ID="btnPayment" runat="server" Text="Make A Payment" class="btn btn-primary" OnClick="btnPayment_Click1"/>
                                </div>
                                <asp:Label ID="lblStud" runat="server" Text=""></asp:Label>
                                <asp:Label ID="lblOamt" runat="server" Text=""></asp:Label>
                                <asp:Label ID="lblDisp" runat="server" Text=""></asp:Label>
                                
                                    </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

</asp:Content>
