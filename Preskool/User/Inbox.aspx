<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site2.Master" AutoEventWireup="true" CodeBehind="Inbox.aspx.cs" Inherits="Preskool.User.WebForm14" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="settings-widget">
        <div class="settings-inner-blk p-5">
            <div class="comman-space pb-0">
                <div class="filter-grp user-referred table-select-blk d-flex align-items-center justify-content-between">
                    <h3>Your Inbox Messages</h3>
                    <div class="filter-blk d-flex">
                    </div>
                </div>
                <div class="settings-referral-blk table-responsive">

                    <table class="table table-nowrap mb-0">
                        <thead>
                            <tr>
                                <th>Faculty</th>
                                <th>Subject</th>
                                <th>Message</th>
                                <th>Date</th>

                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <a class="refer-avatar-blk d-flex align-items-center">
                                                <img src="../../Faculty/Faculty Image/<%#Eval("fac_img") %>" class="rounded-circle me-2" alt="Referred User Info" height="60" width="60">
                                                <p><%#Eval("fac_name") %></p>
                                            </a>
                                        </td>
                                        <td><%#Eval("Subject") %></td>
                                        <td><%#Eval("Message") %></td>
                                        <td><%#Eval("Mdate") %></td>

                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>

                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Message_mstr.Mid, Message_mstr.ToId, Message_mstr.FromId, Message_mstr.Subject, Message_mstr.Mdate, Message_mstr.Message, faculty_mstr.fac_id, faculty_mstr.fac_name, faculty_mstr.fac_img, user_mstr.uid FROM Message_mstr INNER JOIN faculty_mstr ON Message_mstr.FromId = faculty_mstr.fac_id INNER JOIN user_mstr ON Message_mstr.ToId = user_mstr.uid WHERE (Message_mstr.ToId = @uid)">
                                <SelectParameters>
                                    <asp:SessionParameter SessionField="uid" Name="uid"></asp:SessionParameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>


</asp:Content>
