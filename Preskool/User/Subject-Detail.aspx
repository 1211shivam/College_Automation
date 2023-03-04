<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Subject-Detail.aspx.cs" Inherits="Preskool.User.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="breadcrumb-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-12">
                <div class="col-md-12 col-12">
                    <div class="breadcrumb-list">
                        <nav aria-label="breadcrumb" class="page-breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item" aria-current="page">Courses</li>
                                <li class="breadcrumb-item" aria-current="page">All Courses</li>
                                <li class="breadcrumb-item" aria-current="page">The Complete Web Developer Course 2.0</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </div>
    
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <div class="inner-banner">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="instructor-wrap border-bottom-0 m-0">
                                <div class="about-instructor align-items-center">
                                    <div class="abt-instructor-img">
                                        <a href='Faculty-Detail.aspx?Fid=<%#Eval("fac_id")%> '>
                                            <img src='../Faculty/Faculty Image/<%#Eval("fac_img") %>' alt="img" class="img-fluid"></a>
                                    </div>
                                    <div class="instructor-detail me-3">
                                        <h5><a href="instructor-profile.html"><%#Eval("fac_name") %></a></h5>
                                        <p><%#Eval("pname") %></p>
                                    </div>
                                    <div class="rating mb-0">
                                        <i class="fas fa-star filled"></i>
                                        <i class="fas fa-star filled"></i>
                                        <i class="fas fa-star filled"></i>
                                        <i class="fas fa-star filled"></i>
                                        <i class="fas fa-star"></i>
                                        <span class="d-inline-block average-rating"><span>4.5</span> (15)</span>
                                    </div>
                                </div>
                                <span class="web-badge mb-3">WEB DEVELPMENT</span>
                            </div>
                            <h2><%#Eval("sname") %></h2>
                            <p><%#Eval("sdesc") %></p>
                            <div class="course-info d-flex align-items-center border-bottom-0 m-0 p-0">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>


    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT faculty_mstr.fac_id, faculty_mstr.fac_name, faculty_mstr.subid, faculty_mstr.posi_id, faculty_mstr.fac_img, subject_mstr.subid AS Expr1, subject_mstr.fac_id AS Expr2, subject_mstr.sname, subject_mstr.sdesc, position_mstr.pname FROM faculty_mstr INNER JOIN subject_mstr ON faculty_mstr.subid = subject_mstr.subid INNER JOIN position_mstr ON faculty_mstr.posi_id = position_mstr.posi_id"></asp:SqlDataSource>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>

            <section class="page-content course-sec">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                        </div>
                        <div class="col-lg-4">
                            <div class="sidebar-sec">

                                <div class="video-sec vid-bg">
                                    <div class="card">
                                        <div class="card-body">
                                            <%--<a href="https://www.youtube.com/embed/1trvO6dqQUI" class="video-thumbnail" data-fancybox="">--%>
                                            <a href='<%#Eval("Suburl") %>' class="video-thumbnail" data-fancybox="">
                                                <div class="play-icon">
                                                    <i class="fa-solid fa-play"></i>
                                                </div>
                                                <img class="" src='../Faculty/Subject Image/<%#Eval("simg") %>' alt="">
                                            </a>
                                            <div class="video-details">
                                                <div class="course-fee">
                                                    <h2><%#Eval("subpay") %></h2>
                                                    <p><span>$99.00</span> 50% off</p>
                                                </div>
                                                <div class="row gx-2">
                                                    <div class="col-md-6">
                                                        <a href="course-wishlist.html" class="btn btn-wish w-100"><i class="feather-heart"></i>Add to Wishlist</a>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <a href="javascript:;" class="btn btn-wish w-100"><i class="feather-share-2"></i>Share</a>
                                                    </div>
                                                </div>
                                                <a href="checkout.html" class="btn btn-enroll w-100">Enroll Now</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [subid], [simg], [subpay], [SubUrl] FROM [subject_mstr] WHERE ([subid] = @subid)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="subid" Name="subid" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    
    
</asp:Content>
