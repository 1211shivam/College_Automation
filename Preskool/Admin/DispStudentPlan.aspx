<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="DispStudentPlan.aspx.cs" Inherits="Preskool.Admin.WebForm21" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content container-fluid">

        <div class="page-header">
            <div class="row">
                <div class="col">
                    <h3 class="page-title">Student Plans</h3>
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
                        <h5 class="card-title mb-2">Student Plans</h5>
                       
                        <%--<p class="card-text">
This is the most basic example of the datatables with zero configuration. Use the <code>.datatable</code> class to initialize datatables.
</p>--%>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class=" table table-stripped" id="default-datatable">
                                <thead>
                                    <tr>
                                        <th>Order ID</th>
                                        <th>Student Name</th>
                                        <th>Order Date</th>
                                        <th>Order Amount</th>
                                        <th>Order Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("Orderid") %></td>
                                                <td><%#Eval("uname") %></td>
                                                <td><%#Eval("Orderdate","{0:dd/M/yyyy}") %></td>
                                                <td><%#Eval("OrderAmt") %></td>
                                                <td><%#Eval("Ostatus") %></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT order_mstr.Orderid, order_mstr.Studid, order_mstr.Orderdate, order_mstr.Ostatus, user_mstr.uname, order_mstr.OrderAmt FROM order_mstr INNER JOIN user_mstr ON order_mstr.Studid = user_mstr.uid"></asp:SqlDataSource>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Order ID</th>
                                        <th>Student Name</th>
                                        <th>Order Date</th>
                                        <th>Order Amount</th>
                                        <th>Order Status</th>
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
