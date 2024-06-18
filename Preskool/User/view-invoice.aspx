<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="view-invoice.aspx.cs" Inherits="Preskool.User.WebForm22" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-content">
        <div class="container">
            <div class="row justify-content-center">

                <div class="col-xl-9 col-md-8">
                    <div class="settings-widget profile-details">
                        <div class="settings-menu invoice-list-blk p-0 ">
                            <div class="card pro-post border-0 mb-0">
                                <div class="card-body">

                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT billing_detail.Bdid, billing_detail.Orderid, billing_detail.Studid, billing_detail.Fname, billing_detail.Lname, billing_detail.Phno, billing_detail.Address, order_mstr.Orderdate, order_mstr.Orderid AS Expr1 FROM billing_detail INNER JOIN order_mstr ON billing_detail.Orderid = order_mstr.Orderid WHERE (billing_detail.Orderid = @Orderid)">
                                        <SelectParameters>
                                            <asp:QueryStringParameter QueryStringField="Oid" Name="Orderid"></asp:QueryStringParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                        <ItemTemplate>
                                            <div class="invoice-item">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="invoice-logo">
                                                            <img src="assets/img/logo1.png" alt="logo">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <p class="invoice-details">
                                                            <strong>Order:</strong> # <%#Eval("Orderid") %>
                                                            <br>
                                                            <strong>Issued:</strong><%#Eval("Orderdate"," {0:MMMM d,yyyy}") %>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="invoice-item">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="invoice-info">
                                                            <strong class="customer-text">Invoice From</strong>
                                                            <p class="invoice-details invoice-details-two">
                                                                College World
                                                        <br>
                                                                806 Twin Willow Lane, Old Forge,<br>
                                                                Newyork, USA
                                                        <br>
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="invoice-info invoice-info2">
                                                            <strong class="customer-text">Invoice To</strong>
                                                            <p class="invoice-details">
                                                                <%#Eval("Fname") %> <%#Eval("Lname") %>
                                                                <br>
                                                                <%#Eval("Address") %>
                                                                <br>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                </div>
                            </div>
                        </div>

                        <div class="invoice-item invoice-table-wrap">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="invoice-table table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Course Name</th>
                                                    <th>Course Description</th>
                                                    <%--<th class="text-center">Quantity</th>--%>
                                                    <th class="text-end">Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%--<tr>
                                                    <td>Research</td>
                                                    <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-end">$100</td>
                                                </tr>
                                                <tr>
                                                    <td>Research 101</td>
                                                    <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-end">$250</td>
                                                </tr>--%>
                                                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td><%#Eval("sname") %></td>
                                                            <td><%#Eval("sdesc") %></td>
                                                            <%--<td class="text-center">1</td>--%>
                                                            <td class="text-end"><%#Eval("subpay") %></td>
                                                        </tr>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT order_details.Ordid, order_details.Orderid, order_details.Subid, order_details.Subpay, order_details.Studid, subject_mstr.subid AS Expr1, subject_mstr.sname, subject_mstr.sdesc FROM order_details INNER JOIN subject_mstr ON order_details.Subid = subject_mstr.subid WHERE (order_details.Orderid = @Orderid)">
                                                    <SelectParameters>
                                                        <asp:QueryStringParameter QueryStringField="Oid" Name="Orderid"></asp:QueryStringParameter>
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-md-6 col-xl-4 ms-auto">
                                    <div class="table-responsive">
                                        <table class="invoice-table-two table table-borderless">
                                            <tbody>
                                                <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <th>Subtotal:</th>
                                                            <td><span><%#Eval("OrderAmt") %></span></td><br /><br />
                                                        </tr>
                                                        
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                                <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [order_mstr] WHERE ([Orderid] = @Orderid)">
                                                    <SelectParameters>
                                                        <asp:QueryStringParameter QueryStringField="Oid" Name="Orderid" Type="Int32"></asp:QueryStringParameter>
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </tbody>
                                        </table>
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
