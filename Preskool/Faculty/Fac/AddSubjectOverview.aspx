<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Fac/Site1.Master" AutoEventWireup="true" CodeBehind="AddSubjectOverview.aspx.cs" Inherits="Preskool.Faculty.Fac.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xl-9 col-md-8">
        <div class="settings-widget profile-details">
            <div class="settings-menu p-0">
                <div class="profile-heading">
                    <h3>Add Subject Overview
                    </h3>
                    
                </div>
                <div class="checkout-form personal-address add-course-info">
                    
                    <form runat="server">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="form-control-label">Subject Name</label>
                                    <%--<input type="text" class="form-control" placeholder="Enter your first Name">--%>
                                    <asp:DropDownList ID="ddlSname" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="sname" DataValueField="subid"></asp:DropDownList>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT subject_mstr.subid, subject_mstr.sname, faculty_mstr.fac_id FROM subject_mstr INNER JOIN faculty_mstr ON subject_mstr.subid = faculty_mstr.subid WHERE (faculty_mstr.fac_id = @fac_id)">

                                        <SelectParameters>
                                            <asp:SessionParameter SessionField="fac_id" Name="fac_id"></asp:SessionParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="form-control-label">Subject Topic</label>
                                    <%--<input type="text" class="form-control" placeholder="Enter your first Name">--%>
                                    <asp:TextBox ID="txtSubtopic" runat="server" class="form-control" required="Please Enter Field"></asp:TextBox>
                                </div>
                            </div>


                            <div class="update-profile">
                                <%--<button type="button" class="btn btn-primary">Submit</button>--%>
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-primary" OnClick="btnSubmit_Click"/>
                                <asp:Label ID="lbldisp" runat="server" Text=""></asp:Label>
                                <asp:Button ID="btnUpdate" runat="server" Text="Update" class="btn btn-primary" Visible="false" OnClick="btnUpdate_Click"/>
                                
                            </div>


                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
