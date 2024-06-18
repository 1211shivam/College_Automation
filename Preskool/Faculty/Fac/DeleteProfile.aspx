<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Fac/Site1.Master" AutoEventWireup="true" CodeBehind="DeleteProfile.aspx.cs" Inherits="Preskool.Faculty.Fac.WebForm9" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xl-9 col-md-8">
        <div class="settings-widget profile-details">
            <div class="settings-menu p-0">
                <div class="profile-heading">
                    <h3>Deactivate your account</h3>
                    <%--<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>--%>
                </div>
                <div class="checkout-form personal-address">
                    <div class="personal-info-head">

                        <h4>Warning</h4>
                        <p>If you deactivate your account, you will be unsubscribed from all your courses, and will lose access after 30 days.</p>
                    </div>
                    <div class="un-subscribe p-0">
                        <form runat="server">
                            <%--<a href="#" class="btn btn-danger">Delete My Account</a>--%>
                            
                            <asp:Button ID="btn_deactivate" runat="server" Text="Deactivate My Account" class="btn btn-outline-warning btn-sm" OnClick="btn_deactivate_Click" />
    </form>
</div>
    
</div>
</div>
</div>
</div>


</asp:Content>
