<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="AddReview.aspx.cs" Inherits="Preskool.User.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="card comment-sec">
<div class="card-body">
<h5 class="subs-title">Add a review</h5>
<form runat="server">
<div class="row">
</div>
<div class="form-group">
<%--<input type="email" class="form-control" placeholder="Subject">--%>
    <asp:TextBox ID="txt_subject" runat="server"  class="form-control" placeholder="Subject"></asp:TextBox>
</div>
<div class="form-group">
<%--<textarea rows="4" class="form-control" placeholder="Your Comments"></textarea>--%>
    <asp:TextBox ID="txt_comment" runat="server" class="form-control" TextMode="MultiLine" placeholder="Your Comments"></asp:TextBox>
</div>
<div class="submit-section">
<%--<button class="btn submit-btn" type="submit">Submit</button>--%>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <asp:Button ID="btn_submit" runat="server" Text="Submit" class="btn submit-btn" OnClick="btn_submit_Click"/>
</div>
</form>
</div>
</div>


    

</asp:Content>
