<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Faculty-Detail.aspx.cs" Inherits="Preskool.User.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumb-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-12">
                    <div class="breadcrumb-list">
                    <div class="breadcrumb-list">
                        <nav aria-label="breadcrumb" class="page-breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a >Home</a></li>
                                <li class="breadcrumb-item" aria-current="page">Courses</li>
                                <li class="breadcrumb-item" aria-current="page">All Courses</li>
                                
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
                </div>
        </div>
    </div>

    <div class="page-banner instructor-bg-blk">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-12">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <div class="profile-info-blk">
                                <a href="javascript:;" class="profile-info-img">
                                    <%--img src="assets/img/instructor/profile-avatar.jpg" alt="" class="img-fluid">--%>
                                    <img src='../../Faculty/Faculty Image/<%#Eval("fac_img") %>' alt="img" class="avatar-img rounded-square" height="90" width="90">
                                </a>
                                <h4><a href="javascript:;"><%#Eval("fac_name") %></a></h4>

                                
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [fac_id], [fac_name], [fac_img] FROM [faculty_mstr] WHERE ([fac_id] = @fac_id)">
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="fac_id" Name="fac_id" Type="Int32"></asp:QueryStringParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>


    <section class="page-content course-sec">
        
        <div class="container ">
            <div class="row">
                <div class="col-lg-8">

                    <div class="card overview-sec">
                        <div class="card-body">
                            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                                <ItemTemplate>
                                    <h5 class="subs-title">About</h5>
                                    <p><%#Eval("FAbout") %></p>
                                    
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [faculty_info] WHERE ([fac_id] = @fac_id)">
                                <SelectParameters>
                                    <asp:QueryStringParameter QueryStringField="fac_id" Name="fac_id" Type="Int32"></asp:QueryStringParameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>


                    <div class="card education-sec">
                        <div class="card-body">
                            <h5 class="subs-title">Education</h5>
                            <div class="edu-wrap">
                                <div class="edu-name">
                                    
                                </div>
                                <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
                                    <ItemTemplate>
                                        <div class="col-md-5">
                                            <h6><%#Eval("FEducat") %></h6>
                                            <%--<p class="edu-duration">International University - (2004 - 2010)</p>--%>
                                            <%--<p>There are many variations of passages of available, but the majority alteration in some form. As a highly skilled and successfull product development and design specialist with more than 4 Years of My experience.</p>--%>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [faculty_info] WHERE ([fac_id] = @fac_id)">
                                    <SelectParameters>
                                        <asp:QueryStringParameter QueryStringField="fac_id" Name="fac_id" Type="Int32"></asp:QueryStringParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>


                    <div class="card education-sec">
                        <div class="card-body">
                            <h5 class="subs-title">Experience</h5>
                            <div class="edu-wrap">
                                <div class="edu-name">
                                    
                                </div>
                                <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource4">
                                    <ItemTemplate>
                                        <div class="col-md-5">
                                            <h6><%#Eval("FExp") %></h6>
                                            <%--<p class="edu-duration">Creative Agency - (2013 - 2016)</p>--%>
                                            <%--<p>There are many variations of passages of available, but the majority alteration in some form. As a highly skilled and successfull product development and design specialist with more than 4 Years of My experience.</p>--%>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [faculty_info] WHERE ([fac_id] = @fac_id)">
                                    <SelectParameters>
                                        <asp:QueryStringParameter QueryStringField="fac_id" Name="fac_id" Type="Int32"></asp:QueryStringParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>


                    <div class="card education-sec">
                        <div class="card-body pb-0">
                            <h5 class="subs-title">Courses</h5>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 d-flex">
                                    <div class="course-box course-design d-flex ">
                                        <asp:Repeater ID="Repeater6" runat="server" DataSourceID="SqlDataSource6">
                                            <ItemTemplate>
                                                <div class="product">
                                                    <div class="product-img">
                                                        <a <%--href="course-details.html"--%>>
                                                            <img class="img-fluid" alt="" src='../../Faculty/Subject Image/<%#Eval("simg") %>'>
                                                        </a>
                                                        <div class="price">
                                                            <h3><%#Eval("subpay") %></h3>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <div class="course-group d-flex">
                                                            <div class="course-group-img d-flex">
                                                                <a<%-- href="instructor-profile.html"--%>>
                                                                    <img src='../../Faculty/Faculty Image/<%#Eval("fac_img") %>' alt="" class="img-fluid" height="150" width="150"></a>
                                                                <div class="course-name">
                                                                    <h4><a ><%#Eval("fac_name") %></a></h4>
                                                                    <p><%#Eval("pname") %></p>
                                                                </div>
                                                            </div>
                                                            <div class="course-share d-flex align-items-center justify-content-center">
                                                                
                                                            </div>
                                                        </div>
                                                        <h3 class="title instructor-text"><a <%--href="course-details.html.html"--%>><%#Eval("sname") %></a></h3>
                                                        <div class="course-info d-flex align-items-center border-0 m-0">
                                                            
                                                           
                                                        </div>
                                                        <div class="all-btn all-category d-flex align-items-center">
                                                            <a href="UHome.aspx" class="btn btn-primary">BUY NOW</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT faculty_mstr.fac_id, subject_mstr.subid, subject_mstr.sname, subject_mstr.simg, subject_mstr.subpay, faculty_mstr.fac_name, faculty_mstr.posi_id, position_mstr.pname, faculty_mstr.fac_img FROM faculty_mstr INNER JOIN subject_mstr ON faculty_mstr.subid = subject_mstr.subid INNER JOIN position_mstr ON faculty_mstr.posi_id = position_mstr.posi_id WHERE (faculty_mstr.fac_id = @fac_id)">
                                            <SelectParameters>
                                                <asp:QueryStringParameter QueryStringField="fac_id" Name="fac_id"></asp:QueryStringParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                    </div>
                               
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-lg-4">
                    <div class="card overview-sec">
                        <asp:Repeater ID="Repeater7" runat="server" DataSourceID="SqlDataSource7">
                            <ItemTemplate>
                                <div class="card-body overview-sec-body">
                                    <h5 class="subs-title">Social Profiles</h5>
                                    <div class="sidebar-tag-labels">
                                        <ul class="list-unstyled">
                                            <li class="list-inline-item">
                                                <h5>Twitter</h5>
                                                <a href="<%#Eval("fac_twitter") %>">
                                                    <i class="fa-brands fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <h5>Facebook</h5>
                                                <a href="<%#Eval("fac_facebook") %>">
                                                    <i class="fa-brands fa-facebook"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <h5>Instagram</h5>
                                                <a href="<%#Eval("fac_insta") %>">
                                                    <i class="fa-brands fa-instagram"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <h5>Linked In</h5>
                                                <a href="<%#Eval("fac_linkedin") %>">
                                                    <i class="fa-brands fa-linkedin"></i>
                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <h5>Youtube</h5>
                                                <a href="<%#Eval("fac_youtube") %>">
                                                    <i class="fa-brands fa-youtube"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource7" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [social_profile] WHERE ([fac_id] = @fac_id)">
                            <SelectParameters>
                                <asp:QueryStringParameter QueryStringField="fac_id" Name="fac_id" Type="Int32"></asp:QueryStringParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>

                  <div class="col-lg-4">
                        <div class="card-body">
                            <h5 class="subs-title">Contact Details</h5>
                            <div>
                            <asp:Repeater ID="Repeater5" runat="server" DataSourceID="SqlDataSource5">
                                <ItemTemplate>
                                    <div class="contact-info-list">
                                        <div class="edu-wrap">
                                            <div class="edu-name">
                                                <span>
                                                    <img src="assets/img/instructor/email-icon.png" alt="Address"></span>
                                            </div>
                                            <div class="edu-detail">
                                                <h6>Email</h6>
                                                <p><a "><%#Eval("fac_email") %></a></p>
                                            </div>
                                        </div>
                                        <div class="edu-wrap">
                                            <div class="edu-name">
                                                <span>
                                                    <img src="assets/img/instructor/phone-icon.png" alt="Address"></span>
                                            </div>
                                            <div class="edu-detail">
                                                <h6>Phone</h6>
                                                <p><a "><%#Eval("fac_mob") %></a></p>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                    
                                </ItemTemplate>
                            </asp:Repeater>
                                </div>

                            <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [faculty_mstr] WHERE ([fac_id] = @fac_id)">
                                <SelectParameters>
                                    <asp:QueryStringParameter QueryStringField="fac_id" Name="fac_id" Type="Int32"></asp:QueryStringParameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>

                </div>

                <%--<div class="col-lg-4">

                    <div class="card overview-sec">
                        <div class="card-body overview-sec-body">
                            <h5 class="subs-title">Professional Skills</h5>
                            <div class="sidebar-tag-labels">
                                <ul class="list-unstyled">
                                    <li><a href="javascript:;" class="">User Interface Design</a></li>
                                    <li><a href="javascript:;">Web Development</a></li>
                                    <li><a href="javascript:;">Web Design</a></li>
                                    <li><a href="javascript:;">UI Design</a></li>
                                    <li><a href="javascript:;">Mobile App Design</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    </div>--%>


                  <%--  <div class="card overview-sec">
                        <div class="card-body">
                            <h5 class="subs-title">Profile Overview</h5>
                            <div class="rating-grp">
                                <div class="rating">
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star"></i>
                                    <span class="d-inline-block average-rating"><span>4.0</span> (15)</span>
                                </div>
                                <div class="course-share d-flex align-items-center justify-content-center">
                                    <a href="#rate"><i class="fa-regular fa-heart"></i></a>
                                </div>
                            </div>
                            <div class="profile-overview-list">
                                <div class="list-grp-blk d-flex">
                                    <div class="flex-shrink-0">
                                        <img src="assets/img/instructor/courses-icon.png" alt="Courses">
                                    </div>
                                    <div class="list-content-blk flex-grow-1 ms-3">
                                        <h5>32</h5>
                                        <p>Courses</p>
                                    </div>
                                </div>
                                <div class="list-grp-blk d-flex">
                                    <div class="flex-shrink-0">
                                        <img src="assets/img/instructor/ttl-stud-icon.png" alt="Total Students">
                                    </div>
                                    <div class="list-content-blk flex-grow-1 ms-3">
                                        <h5>11,604</h5>
                                        <p>Total Students</p>
                                    </div>
                                </div>
                                <div class="list-grp-blk d-flex">
                                    <div class="flex-shrink-0">
                                        <img src="assets/img/instructor/review-icon.png" alt="Reviews">
                                    </div>
                                    <div class="list-content-blk flex-grow-1 ms-3">
                                        <h5>12,230</h5>
                                        <p>Reviews</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>--%>


                  
            </div>
        </div>
    </section>


</asp:Content>
