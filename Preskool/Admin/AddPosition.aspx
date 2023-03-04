<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="AddPosition.aspx.cs" Inherits="Preskool.Admin.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="row">
        <div class="col-xl-12 d-flex">
            <div class="card flex-fill">
                <div class="card-header">
                    <h5 class="card-title">Add Position Here</h5>
                </div>
                <div class="card-body">
                    <form action="#" runat="server" id="form1">
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label">Position Name</label>
                            <div class="col-lg-9">
                                <%--<input type="text" class="form-control" placeholder="Enter Course Name">--%>
                                <asp:TextBox ID="txt_pname" runat="server" class="form-control" placeholder="Enter Course Name"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="text-end">
                            <%--<button type="submit" class="btn btn-primary">Submit</button>--%>
                            <asp:Button ID="btn_submit" runat="server" Text="Submit" class="btn btn-primary" OnClick="btn_submit_Click"  />
                            <asp:Button ID="btn_cancel" runat="server" Text="Cancel" class="btn btn-danger" OnClick="btn_cancel_Click" /> 
                            <asp:Button ID="btn_delete" runat="server" Text="Delete" class="btn btn-danger" Visible="false"/>
                             <asp:Button ID="btn_update" runat="server" Text="Update" class="btn btn-primary" OnClick="btn_update_Click" Visible="false"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
