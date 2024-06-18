<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Fac/Site1.Master" AutoEventWireup="true" CodeBehind="Inbox.aspx.cs" Inherits="Preskool.Faculty.Fac.WebForm14" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xl-9 col-md-8">
        
        <div class="settings-widget">
            <div class="settings-inner-blk p-0">
                <div class="comman-space pb-0">
                    <div class="filter-grp user-referred table-select-blk d-flex align-items-center justify-content-between">
                        <h3>Your Inbox Messages</h3>
                       
                    </div>
                    <div class="settings-referral-blk table-responsive">

                        <table class="table table-nowrap mb-0">
                            <thead>
                                <tr>
                                    <th>Student</th>
                                    <th>Subject</th>
                                    <th>Message</th>
                                    <th>Date</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                        <ItemTemplate>
                                            <tr>
                                            <td>
                                                <a class="refer-avatar-blk d-flex align-items-center">
                                                    <img src="../../User/User image/<%#Eval("uimg") %>" class="rounded-circle me-2" alt="Referred User Info" height="60" width="60">
                                                    <p><%#Eval("uname") %></p>
                                                </a>
                                            </td>
                                            <td><%#Eval("Subject") %></td>
                                            <td><%#Eval("Message") %></td>
                                            <td><%#Eval("Mdate") %></td>
                                            <td><a href='Messages.aspx?uid=<%#Eval("uid") %>' class="btn btn-reply">Respond</a></td>
                                                </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Message_mstr.FromId, Message_mstr.Subject, Message_mstr.Message, Message_mstr.Mdate, user_mstr.uimg, user_mstr.uname, Message_mstr.ToId, user_mstr.uid FROM user_mstr INNER JOIN Message_mstr ON user_mstr.uid = Message_mstr.FromId WHERE (Message_mstr.ToId = @fac_id)">
                                        <SelectParameters>
                                            <asp:SessionParameter SessionField="fac_id" Name="fac_id"></asp:SessionParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                               
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
