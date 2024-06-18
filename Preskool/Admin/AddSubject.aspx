<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="AddSubject.aspx.cs" Inherits="Preskool.Admin.WebForm27" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row">
        <div class="col-xl-12 d-flex">
            <div class="card flex-fill">
                <div class="card-header">
                    <h5 class="card-title">Add Subject Here</h5>
                </div>
                <div class="card-body">
                    <form action="#" runat="server" id="form1">
                        <div class="form-group row">
                            <%--<label class="col-lg-3 col-form-label">Course Name</label>--%>
                            <asp:Label ID="Label1" runat="server" Text="Course Name" class="col-lg-3 col-form-label"></asp:Label>
                            <div class="col-lg-9">
                                <%--<input type="text" class="form-control" placeholder="Enter Course Name">--%>
                                <asp:DropDownList ID="ddl_cname" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="course_id"></asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [course_id], [cname] FROM [course_mstr]"></asp:SqlDataSource>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label">Subject Name</label>
                            <div class="col-lg-9">
                                <%--<input type="text" class="form-control" placeholder="Enter Course Name">--%>
                                <asp:TextBox ID="txt_sname" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label">Subject Description</label>
                            <div class="col-lg-9">
                                <%--<textarea rows="4" cols="5" class="form-control" placeholder="Enter Description"></textarea>--%>
                                <asp:TextBox ID="txt_sdesc" TextMode="MultiLine" runat="server" Rows="4" cols="5" class="form-control" placeholder="Enter Description" required="Please Enter Field"></asp:TextBox>
                            </div>
                            <div>
                            <div class="form-group row">
                            <label class="col-lg-3 col-form-label">Select Subject Image</label>
                            <div class="col-lg-9">
                                <%--<textarea rows="4" cols="5" class="form-control" placeholder="Enter Description"></textarea>--%>
                                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" required="Please Enter Field"/>
                            </div>
                             </div>   

                                <div class="form-group row">
                            <label class="col-lg-3 col-form-label">Subject Fees</label>
                            <div class="col-lg-9">
                                <%--<textarea rows="4" cols="5" class="form-control" placeholder="Enter Description"></textarea>--%>
                                <asp:TextBox ID="txt_fees" runat="server" class="form-control" required="Please Enter Field"></asp:TextBox>
                            </div>
                             </div>   

                                 <div class="form-group row">
                            <label class="col-lg-3 col-form-label">Subject Tutorial</label>
                            <div class="col-lg-9">
                                <%--<textarea rows="4" cols="5" class="form-control" placeholder="Enter Description"></textarea>--%>
                                <asp:TextBox ID="txt_suburl" runat="server" class="form-control" required="Please Enter Field"></asp:TextBox>
                            </div>
                             </div>   

                               
                        </div>
                        <div class="text-end">
                            <%--<button type="submit" class="btn btn-primary">Submit</button>--%>
                            <asp:Label ID="lbl_disp" runat="server" Text=""></asp:Label>
                            <asp:Button ID="btn_submit" runat="server" Text="Submit" class="btn btn-primary"  OnClick="btn_submit_Click"/>
                            <asp:Button ID="btn_cancel" runat="server" Text="Cancel" class="btn btn-danger" OnClick="btn_cancel_Click"/>
                            <asp:Button ID="btn_update" runat="server" Text="Update" class="btn btn-primary" Visible="false" OnClick="btn_update_Click"/>
                            <asp:Button ID="btn_delete" runat="server" Text="Delete" class="btn btn-primary" Visible="false"/>
                        </div>
                            </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
