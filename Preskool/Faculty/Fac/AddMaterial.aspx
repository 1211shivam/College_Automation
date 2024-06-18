<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Fac/Site1.Master" AutoEventWireup="true" CodeBehind="AddMaterial.aspx.cs" Inherits="Preskool.Faculty.Fac.WebForm19" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xl-9 col-md-8">
        <div class="settings-widget profile-details">
            <div class="settings-menu p-0">
                <div class="profile-heading">
                    <h3>Subject Material</h3>
                    <p>Add Subject Material as per your subject</p>
                </div>
               
                <div class="checkout-form personal-address add-course-info">
                   
                    <form runat="server">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Faculty Name</label>
                                    <%--<input type="text" class="form-control" placeholder="Enter your first Name">--%>
                                    <asp:DropDownList ID="ddl_fname" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="fac_name" DataValueField="fac_id"></asp:DropDownList>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [fac_id], [fac_name] FROM [faculty_mstr] WHERE ([fac_id] = @fac_id)">
                                        <SelectParameters>
                                            <asp:SessionParameter SessionField="fac_id" Name="fac_id" Type="Int32"></asp:SessionParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Subject Name</label>
                                    <%--<input type="text" class="form-control" placeholder="Enter your last Name">--%>
                                    <asp:DropDownList ID="ddl_sname" runat="server" class="form-control" DataSourceID="SqlDataSource2" DataTextField="sname" DataValueField="subid"></asp:DropDownList>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT subject_mstr.subid, subject_mstr.sname FROM faculty_mstr INNER JOIN subject_mstr ON faculty_mstr.subid = subject_mstr.subid WHERE (faculty_mstr.fac_id = @fac_id)">
                                        <SelectParameters>
                                            <asp:SessionParameter SessionField="fac_id" Name="fac_id"></asp:SessionParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                           
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Material Pdf</label>
                                    <%--<input type="text" class="form-control" placeholder="Enter your Email">--%>
                                    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" ToolTip="Please Select Only Pdf" AllowMultiple="true"/>
                                </div>
                            </div>
                            
                            <div class="update-profile">
                                <%--<button type="button" class="btn btn-primary">Update Profile</button>--%>
                                <asp:Label ID="lbl_disp" runat="server" Text=""></asp:Label>
                                <asp:Button ID="btn_submit" runat="server" Text="Submit" class="btn btn-primary" OnClick="btn_submit_Click"/>
                            </div>
                            <%--<asp:GridView ID="GridView1" runat="server" ></asp:GridView>--%>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
