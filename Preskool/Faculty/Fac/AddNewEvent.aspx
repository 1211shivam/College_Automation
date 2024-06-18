<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Fac/Site1.Master" AutoEventWireup="true" CodeBehind="AddNewEvent.aspx.cs" Inherits="Preskool.Faculty.Fac.WebForm7" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="col-xl-9 col-md-8">
        <div class="settings-widget profile-details">
            <div class="settings-menu p-0">
                <div class="profile-heading">
                    <h3>Add Event Details</h3>

                </div>
                <div class="checkout-form personal-address add-course-info">
                
                    <form runat="server">
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Select Faculty</label>
                                    <%--<input type="text" class="form-control" placeholder="Enter your first Name">--%>
                                    <asp:DropDownList ID="ddl_fac_name" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="fac_name" DataValueField="fac_id"></asp:DropDownList>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [fac_name], [fac_id] FROM [faculty_mstr] WHERE ([fac_id] = @fac_id)">
                                        <SelectParameters>
                                            <asp:SessionParameter SessionField="fac_id" Name="fac_id" Type="Int32"></asp:SessionParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="form-control-label">Event Name</label>
                                <%--<input type="text" class="form-control" placeholder="Enter your first Name">--%>
                                <asp:TextBox ID="txt_ename" runat="server" class="form-control" required=""></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Event Date</label>
                                <asp:TextBox ID="event_date" runat="server" class="form-control" required=""></asp:TextBox>
                                <asp:CalendarExtender runat="server" Enabled="True" TargetControlID="event_date" ID="event_date_CalendarExtender" Format="dd-MM-yyyy"></asp:CalendarExtender>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Event Venue</label>
                                <%--<input type="text" class="form-control" placeholder="Enter your Email">--%>
                                <asp:TextBox ID="txt_evenue" runat="server" class="form-control" required="Please Enter Field"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Event Description</label>
                                <%--<input type="text" class="form-control" placeholder="Enter your Email">--%>
                                <asp:TextBox ID="txt_event_desc" runat="server" class="form-control" TextMode="MultiLine" required="Please Enter Field"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Select Event Image</label>
                                <%--<input type="text" class="form-control" placeholder="Birth of Date">--%>
                                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" required="Please Enter Field" />
                            </div>
                        </div>
                        <div class="update-profile">
                            <%--<button type="button" class="btn btn-primary">Update Profile</button>--%>
                            <asp:Label ID="lbl_disp" runat="server" Text=""></asp:Label>
                            <asp:Button ID="btn_Create_event" runat="server" Text="Create Event" class="btn btn-primary" OnClick="btn_Create_event_Click" />
                            <asp:Button ID="btn_update_event" runat="server" Text="Update Event" class="btn btn-primary" OnClick="btn_update_event_Click" visible="false"/>

                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
    
    

    <%--</div>
</div>
</div>--%>
</asp:Content>
