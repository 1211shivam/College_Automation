<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Fac/Site1.Master" AutoEventWireup="true" CodeBehind="ShowSubject.aspx.cs" Inherits="Preskool.Faculty.Fac.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xl-9 col-lg-8 col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="settings-widget">
                    <div class="settings-inner-blk p-0">
                        <div class="sell-course-head comman-space">
                            <h3>Subject</h3>
                            <p>Manage your Subjects and its updates.</p>
                        </div>
                        <div class="comman-space pb-0">
                            
                            <div class="settings-tickets-blk course-instruct-blk table-responsive">

                                <table class="table table-nowrap mb-2 table-hover">
                                    <thead>
                                        <tr>
                                            <th>Subject Image</th>
                                            <th>Subject Name</th>
                                            <th>Subject Description</th>
                                            
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="ShowSubject.aspx">
                                                                <img class="avatar-img rounded-rectangle" height="150" width="170" src="../../Faculty/Subject Image/<%#Eval("simg") %>" />
                                                        </h2>
                                                    </td>
                                                    
                                                    <td><%#Eval("sname") %></td>
                                                    <td><%#Eval("sdesc") %></td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT subject_mstr.subid, subject_mstr.sname, subject_mstr.simg, faculty_mstr.fac_id, subject_mstr.sdesc FROM subject_mstr INNER JOIN faculty_mstr ON subject_mstr.subid = faculty_mstr.subid WHERE (faculty_mstr.fac_id = @fac_id)">
                                            <SelectParameters>
                                                <asp:SessionParameter SessionField="fac_id" Name="fac_id" Type="Int32"></asp:SessionParameter>


                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </tbody>

                                    <tfoot>
                                        <tr>
                                            <th>Subject Image</th>
                                            <th>Subject Name</th>
                                            <th>Subject Description</th>
                                            
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

    <%--</div>
</div>
</div>--%>
</asp:Content>
