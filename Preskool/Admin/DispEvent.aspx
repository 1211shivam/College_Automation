<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="DispEvent.aspx.cs" Inherits="Preskool.Admin.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content container-fluid">

        <div class="page-header">
            <div class="row">
                <div class="col">
                    <h3 class="page-title">Events</h3>
                    <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
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
                        <h5 class="card-title mb-2">Events</h5>
                        <a href="GridEvent.aspx" class="btn btn-outline-gray me-2 float-end"><i class="feather-grid"></i></a>
                        <%--<p class="card-text">
This is the most basic example of the datatables with zero configuration. Use the <code>.datatable</code> class to initialize datatables.
</p>--%>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class=" table table-stripped" id="default-datatable">
                                <thead>
                                    <tr>
                                        <th>Event Name</th>
                                        <th>Image</th>
                                        <th>Event Date</th>
                                        <th>Event Venue</th>
                                        <th>Event Description</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                        <ItemTemplate>
                                            <tr>

                                                <td><%#Eval("event_name") %></td>
                                                <td>
                                                    <h2 class="table-avatar">
                                                        <img class="avatar-img rounded-circle" height="50" width="50" src="../Faculty/Event Image/<%#Eval("event_img") %>" />
                                                    </h2>
                                                </td>

                                                <td><%#Eval("event_date","{0:dd/M/yyyy}") %></td>
                                                <td><%#Eval("event_venue") %></td>
                                                <td><%#Eval("event_desc") %></td>
                                                <td><a href='DeleteEvent.aspx?event_id=<%#Eval("event_id") %>'><i class="fas fa-trash"></a></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>


                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [event_mstr] WHERE ([event_date] >= @event_date)">
                                        <SelectParameters>
                                <asp:ControlParameter ControlID="Label1" PropertyName="Text" Name="event_date" DbType="Date"></asp:ControlParameter>
                            </SelectParameters>
                                    </asp:SqlDataSource>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Event Name</th>
                                        <th>Image</th>
                                        <th>Event Date</th>
                                        <th>Event Venue</th>
                                        <th>Event Description</th>
                                        <th>Action</th>
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
