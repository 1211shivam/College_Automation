<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Fac/Site1.Master" AutoEventWireup="true" CodeBehind="ShowSubjectTopic.aspx.cs" Inherits="Preskool.Faculty.Fac.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="col-xl-9 col-lg-8 col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="settings-widget">
                    <div class="settings-inner-blk p-0">
                        <div class="sell-course-head comman-space">
                            <h3>Subject Topics</h3>
                            <p>Manage your Subject Topics.</p>
                        </div>
                        <div class="comman-space pb-0">
                            
                            <div class="settings-tickets-blk course-instruct-blk table-responsive">

                                <table class="table table-nowrap mb-2 table-hover">
                                    <thead>
                                        <tr>
                                            
                                            <th>Subject Name</th>
                                            <th>Subject Topic</th>
                                            <th>Action</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("sname") %></td>
                                                    <td><%#Eval("Subject_topic") %></td>
                                                     <td><a href='AddSubjectOverview.aspx?STopic_id=<%#Eval("STopic_id") %>'><i class="fas fa-edit"></i></a></td>
                                                    <td><a href='DeleteSubjectTopic.aspx?STopic_id=<%#Eval("STopic_id") %>'><i class="fas fa-trash"></a></td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>

                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Subject_Overview_mstr.Subid, Subject_Overview_mstr.Subject_topic, Subject_Overview_mstr.STopic_id, subject_mstr.sname FROM Subject_Overview_mstr INNER JOIN subject_mstr ON Subject_Overview_mstr.Subid = subject_mstr.subid INNER JOIN faculty_mstr ON subject_mstr.subid = faculty_mstr.subid WHERE (faculty_mstr.fac_id = @fac_id)">
                                            <SelectParameters>
                                                <asp:SessionParameter SessionField="fac_id" Name="fac_id"></asp:SessionParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </tbody>

                                    <tfoot>
                                        <tr>
                                           
                                            <th>Subject Name</th>
                                            <th>Subject Topic</th>
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
