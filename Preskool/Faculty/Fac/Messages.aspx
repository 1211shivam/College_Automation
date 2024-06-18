<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Fac/Site1.Master" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="Preskool.Faculty.Fac.WebForm15" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xl-9 col-md-8">
        <div class="settings-widget profile-details">
            <div class="settings-menu p-0">
                <div class="profile-heading">
                    <h3>Compose Your Message Here</h3>
                    <p>You have full control to manage your own account setting.</p>
                </div>
                <div class="checkout-form personal-address add-course-info ">

                    <form runat="server">
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="form-control-label">Faculty Name</label>
                                    <%--<input type="text" class="form-control" placeholder="Enter your first Name">--%>
                                    <asp:DropDownList ID="ddl_fname" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="fac_name" DataValueField="fac_id"></asp:DropDownList>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [fac_name], [fac_id] FROM [faculty_mstr] WHERE ([fac_id] = @fac_id)">
                                        <SelectParameters>
                                            <asp:SessionParameter SessionField="fac_id" Name="fac_id" Type="Int32"></asp:SessionParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="form-control-label">Select Student</label>
                                    <%--<input type="text" class="form-control" placeholder="Enter your last Name">--%>
                                    <asp:DropDownList ID="ddl_sname" runat="server" class="form-control" DataSourceID="SqlDataSource3" DataTextField="uname" DataValueField="uid"></asp:DropDownList>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [uid], [uname] FROM [user_mstr] WHERE ([uid] = @uid)">
                                        <SelectParameters>
                                            <asp:QueryStringParameter QueryStringField="uid" Name="uid" Type="Int32"></asp:QueryStringParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="form-control-label">Subject</label>
                                    <%--<input type="text" class="form-control" placeholder="Enter your Phone">--%>
                                    <asp:TextBox ID="txt_subject" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="form-control-label">Message</label>
                                    <%--<input type="text" class="form-control" placeholder="Enter your Email">--%>
                                    <asp:TextBox ID="txt_msg" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="form-control-label">Select Date</label>
                                    <%--<input type="text" class="form-control" placeholder="Birth of Date">--%>
                                    <asp:TextBox ID="txt_date" runat="server" class="form-control"></asp:TextBox>
                                    <asp:CalendarExtender runat="server" Enabled="True" TargetControlID="txt_date" ID="txt_date_CalendarExtender"></asp:CalendarExtender>
                                </div>
                            </div>
                            <div class="update-profile">
                                <%--<button type="button" class="btn btn-primary">Update Profile</button>--%>
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                <asp:Button ID="txt_submit" runat="server" Text="Submit" class="btn btn-primary" OnClick="txt_submit_Click"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

   

</asp:Content>
