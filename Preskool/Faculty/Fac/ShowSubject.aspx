<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Fac/Site1.Master" AutoEventWireup="true" CodeBehind="ShowSubject.aspx.cs" Inherits="Preskool.Faculty.Fac.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xl-9 col-lg-8 col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="settings-widget">
                    <div class="settings-inner-blk p-0">
                        <div class="sell-course-head comman-space">
                            <h3>Subject</h3>
                            <p>Manage your Subjects and its update like live, draft and insight.</p>
                        </div>
                        <div class="comman-space pb-0">
                            <div class="instruct-search-blk">
                                <div class="show-filter choose-search-blk">
                                    <form action="#">
                                        <div class="row gx-2 align-items-center">
                                            <div class="col-md-6 col-item">
                                                <div class=" search-group">
                                                    <i class="feather-search"></i>
                                                    <input type="text" class="form-control" placeholder="Search our courses">
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-lg-6 col-item">
                                                <div class="form-group select-form mb-0">
                                                    <select class="form-select select" name="sellist1">
                                                        <option>Choose</option>
                                                        <option>Angular</option>
                                                        <option>React</option>
                                                        <option>Node</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="settings-tickets-blk course-instruct-blk table-responsive">

                                <table class="table table-nowrap mb-2 table-hover">
                                    <thead>
                                        <tr>
                                            <th>Subject Image</th>
                                            <th>Subject Name</th>
                                            <th>Subject Semester</th>
                                            <th>Subject Payment</th>
                                            <th>Action</th>
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
                                                    <td><%#Eval("sem") %></td>
                                                    <td><%#Eval("subpay") %></td>
                                                    <td><a href='AddSubject.aspx?subid=<%#Eval("subid") %>'><i class="fas fa-edit"></i></a></td>
                                                    <td><a href='DeleteSubject.aspx?subid=<%#Eval("subid") %>'><i class="fas fa-trash"></a></td>

                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [subject_mstr]">
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

    <%--</div>
</div>
</div>--%>
</asp:Content>
