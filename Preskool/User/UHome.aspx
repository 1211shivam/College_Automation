<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site2.Master" AutoEventWireup="true" CodeBehind="UHome.aspx.cs" Inherits="Preskool.User.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="course-content">
<div class="container">
<div class="student-widget">
<div class="student-widget-group">
<div class="row">
<div class="col-lg-12">

<div class="showing-list">
<div class="row">
<div class="col-lg-12">
<div class="show-filter choose-search-blk">
<form action="#" runat="server">
<div class="mycourse-student align-items-center">
<div class="student-search">
<div class=" search-group">
<i class="feather-search"></i>
<input type="text" class="form-control" placeholder="Search our courses">
</div>
</div>
<div class="student-filter">
<div class="form-group select-form mb-0">
</div>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
    
    <div class="row">        
            
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="col-xl-3 col-lg-4 col-md-6 d-flex">
                    <div class="course-box course-design d-flex ">
                        <div class="product">
                            <div class="product-img">
                                <a href="Subject-Detail.aspx?Sid=<%#Eval("subid") %>">
                                    <img class="img-fluid" alt="" src='../../Faculty/Subject Image/<%#Eval("simg") %>'>
                                </a>
                            </div>
                            <div class="product-content">
                                <h3 class="title"><a href="course-details.html"><%#Eval("sname") %></a></h3>


                                <div class="student-percent">
                                    <p>Fees : <%#Eval("subpay") %></p>
                                </div>
                                <div class="start-leason d-flex align-items-center">
                                    <a href="course-lesson.html" class="btn btn-primary">Start Lesson</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [subid], [sname], [sdesc], [simg], [subpay] FROM [subject_mstr]"></asp:SqlDataSource>
    </div>

    


</div>
</div>
</div>
</div>
</section>

</asp:Content>
