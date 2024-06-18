<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Fac/Site1.Master" AutoEventWireup="true" CodeBehind="ShowEvents.aspx.cs" Inherits="Preskool.Faculty.Fac.WebForm16" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xl-9 col-lg-8 col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="settings-widget">
                    <div class="settings-inner-blk p-0">
                        <div class="sell-course-head comman-space">
                            <h3>Events</h3>
                            <p>Manage your Events and its updates.</p>
                            <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
                        </div>
                        <div class="comman-space pb-0">

                            <div class="settings-tickets-blk course-instruct-blk table-responsive">

                                <table class="table table-nowrap mb-2 table-hover">
                                    <thead>
                                        <tr>
                                            <th>Event Image</th>
                                            <th>Event Name</th>
                                            <th>Event Date</th>
                                            <th>Event Venue</th>
                                            <th>Action</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a>
                                                                <img class="avatar-img rounded-rectangle" height="150" width="170" src="../../Faculty/Event Image/<%#Eval("event_img") %>" />
                                                        </h2>
                                                    </td>

                                                    <td><%#Eval("event_name") %></td>
                                                    <td><%#Eval("event_date","{0:dd/M/yyyy}")%></td>
                                                    <td><%#Eval("event_venue") %></td>
                                                    <td><a href='AddNewEvent.aspx?event_id=<%#Eval("event_id") %>'><i class="fas fa-edit"></i></a></td>
                                                    <td><a href='DeleteEvent.aspx?event_id=<%#Eval("event_id") %>'><i class="fas fa-trash"></a></td>

                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT event_id, event_name, event_date, event_venue, event_desc, event_img, fac_id FROM event_mstr WHERE (event_date >= @event_date) AND (fac_id = @fac_id)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="Label1" PropertyName="Text" DbType="Date" Name="event_date"></asp:ControlParameter>

                                                <asp:SessionParameter SessionField="fac_id" Name="fac_id" Type="Int32"></asp:SessionParameter>

                                            </SelectParameters>
                        </asp:SqlDataSource>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                         <th>Event Image</th>
                                            <th>Event Name</th>
                                            <th>Event Date</th>
                                            <th>Event Venue</th>
                                            <th>Action</th>
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
    </div>


</asp:Content>
