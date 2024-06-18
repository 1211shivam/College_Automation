<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Fac/Site1.Master" AutoEventWireup="true" CodeBehind="AddSubject.aspx.cs" Inherits="Preskool.Faculty.Fac.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xl-9 col-md-8">
        <div class="settings-widget profile-details">
            <div class="settings-menu p-0">
                <div class="profile-heading">
                    <h3>Add Subject Here</h3>
                    <p>You have full control to manage your own account setting.</p>
                </div>
                <div class="checkout-form personal-address add-course-info">

                    <form action="#" runat="server">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Course Name</label>
                                    <%--<input type="text" class="form-control" placeholder="Enter your first Name">--%>
                                    <asp:DropDownList ID="ddl_cname" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="course_id"></asp:DropDownList>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [course_id], [cname] FROM [course_mstr]"></asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Subject Name</label>
                                    <%--<input type="text" class="form-control" placeholder="Enter your last Name">--%>
                                    <asp:TextBox ID="txt_sname" runat="server" class="form-control" required="Please Enter Field"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Faculty Name</label>
                                    <%--<input type="text" class="form-control" placeholder="Enter your Phone">--%>
                                    <asp:DropDownList ID="ddl_fname" runat="server" class="form-control" DataSourceID="SqlDataSource2" DataTextField="fac_name" DataValueField="fac_id"></asp:DropDownList>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [fac_id], [fac_name] FROM [faculty_mstr]"></asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Subject Description</label>
                                    <%--<input type="text" class="form-control" placeholder="Enter your Email">--%>
                                    <asp:TextBox ID="txt_sdesc" runat="server" class="form-control" TextMode="MultiLine" required="Please Enter Field"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Subject Semester</label>
                                    <%--<input type="text" class="form-control" placeholder="Birth of Date">--%>
                                    <%--<asp:TextBox ID="txt_sem" runat="server" class="form-control" required="Please Enter Field"></asp:TextBox>--%>
                                    <asp:DropDownList ID="ddl_sem" runat="server" class="form-control" required="Please Enter Field">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-label">Select Subject Image</label>
                                    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" required="Please Enter Field" />
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Subject Fees</label>
                                    <%--<input type="text" class="form-control" placeholder="Address">--%>
                                    <asp:TextBox ID="txt_pay" runat="server" class="form-control" required="Please Enter Field"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Subject Video URL</label>
                                    <%--<input type="text" class="form-control" placeholder="Address">--%>
                                    <asp:TextBox ID="txt_SubUrl" runat="server" class="form-control" required="Please Enter Field"></asp:TextBox>
                                </div>
                            </div>
                            <div class="update-profile">
                                <%--<button type="button" class="btn btn-primary">Update Profile</button>--%>
                                <asp:Label ID="lbl_disp" runat="server" Text=""></asp:Label>
                                <asp:Button ID="btn_submit" runat="server" Text="Submit" class="btn btn-primary" OnClick="btn_submit_Click" />
                                <asp:Button ID="btn_update" runat="server" Text="Update" Visible="false" class="btn btn-primary" OnClick="btn_update_Click" />
                                <asp:Button ID="btn_delete" runat="server" Text="Delete" class="btn btn-primary" Visible="false" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
