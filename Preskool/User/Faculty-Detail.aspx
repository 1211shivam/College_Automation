﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Student-Detail.aspx.cs" Inherits="Preskool.User.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumb-bar">
<div class="container">
<div class="row">
<div class="col-md-12 col-12">
<div class="breadcrumb-list">
<nav aria-label="breadcrumb" class="page-breadcrumb">
<ol class="breadcrumb">
<li class="breadcrumb-item"><a href="index.html">Home</a></li>
<li class="breadcrumb-item" aria-current="page">Student</li>
<li class="breadcrumb-item active" aria-current="page">Student Profile</li>
</ol>
</nav>
</div>
</div>
</div>
</div>
</div>

    
<div class="page-banner student-bg-blk">
<div class="container">
<div class="row">
<div class="col-md-12 col-12">
<div class="profile-info-blk">
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT faculty_mstr.fac_id, faculty_mstr.fac_name, faculty_mstr.fac_email, faculty_mstr.posi_id, faculty_mstr.fac_img, position_mstr.pname, faculty_mstr.subid, faculty_mstr.fac_mob, subject_mstr.subid AS Expr1, subject_mstr.fac_id AS Expr2, subject_mstr.sname, subject_mstr.sdesc, subject_mstr.simg, subject_mstr.subpay FROM faculty_mstr INNER JOIN position_mstr ON faculty_mstr.posi_id = position_mstr.posi_id INNER JOIN subject_mstr ON faculty_mstr.subid = subject_mstr.subid WHERE (faculty_mstr.fac_id = @fac_id)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="Fid" Name="fac_id"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <a href="javascript:;" class="profile-info-img">
                <img src='../Faculty/Faculty Image/<%#Eval("fac_img") %>' alt="img" class="avatar-img rounded-square" height="90" width="90"></a></a>
            <h4><a href="javascript:;"><%#Eval("fac_name") %></a><span>Beginner</span></h4>
            <p><%#Eval("pname") %></p>
            <ul class="list-unstyled inline-inline profile-info-social">
                <li class="list-inline-item">
                    <a href="javascript:;">
                        <i class="fa-brands fa-facebook"></i>
                    </a>
                </li>
                <li class="list-inline-item">
                    <a href="javascript:;">
                        <i class="fa-brands fa-twitter"></i>
                    </a>
                </li>
                <li class="list-inline-item">
                    <a href="javascript:;">
                        <i class="fa-brands fa-instagram"></i>
                    </a>
                </li>
                <li class="list-inline-item">
                    <a href="javascript:;">
                        <i class="fa-brands fa-linkedin"></i>
                    </a>
                </li>
            </ul>

        </ItemTemplate>
    </asp:Repeater>
    
</div>
</div>
</div>
</div>
</div>


<section class="page-content course-sec">
<div class="container">
<div class="row">
<div class="col-lg-8">

<div class="card overview-sec">
<div class="card-body">
<h5 class="subs-title">About Me</h5>
<p>Very well thought out and articulate communication. Clear milestones, deadlines and fast work. Patience. Infinite patience. No shortcuts. Even if the client is being careless. Some quick example text to build on the card title and bulk the card's content Moltin gives you platform.</p>
<p class="mb-0">As a highly skilled and successfull product development and design specialist with more than 4 Years of My experience lies in successfully conceptualizing, designing, and modifying consumer products specific to interior design and home furnishings.</p>
</div>
</div>


<div class="card education-sec">
<div class="card-body">
<h5 class="subs-title">Education</h5>
<div class="edu-wrap">
<div class="edu-name">
<span>B</span>
</div>
<div class="edu-detail">
<h6>BCA - Bachelor of Computer Applications</h6>
<p class="edu-duration">International University - (2004 - 2010)</p>
<p>There are many variations of passages of available, but the majority alteration in some form. As a highly skilled and successfull product development and design specialist with more than 4 Years of My experience.</p>
</div>
</div>
<div class="edu-wrap">
<div class="edu-name">
<span>M</span>
</div>
<div class="edu-detail">
<h6>MCA - Master of Computer Application</h6>
<p class="edu-duration">International University - (2010 - 2012)</p>
<p>There are many variations of passages of available, but the majority alteration in some form. As a highly skilled and successfull product development and design specialist with more than 4 Years of My experience.</p>
</div>
</div>
<div class="edu-wrap">
<div class="edu-name">
<span>D</span>
</div>
<div class="edu-detail">
<h6>Design Communication Visual</h6>
<p class="edu-duration">International University - (2012-2015)</p>
<p>There are many variations of passages of available, but the majority alteration in some form. As a highly skilled and successfull product development and design specialist with more than 4 Years of My experience.</p>
</div>
</div>
</div>
</div>


<div class="card education-sec">
<div class="card-body">
<h5 class="subs-title">Experience</h5>
<div class="edu-wrap">
<div class="edu-name">
<span>B</span>
</div>
<div class="edu-detail">
<h6>Web Design & Development Team Leader</h6>
<p class="edu-duration">Creative Agency - (2013 - 2016)</p>
<p>There are many variations of passages of available, but the majority alteration in some form. As a highly skilled and successfull product development and design specialist with more than 4 Years of My experience.</p>
</div>
</div>
<div class="edu-wrap">
<div class="edu-name">
<span>M</span>
</div>
<div class="edu-detail">
<h6>Project Manager</h6>
<p class="edu-duration">Jobcy Technology Pvt.Ltd - (Pressent)</p>
<p>There are many variations of passages of available, but the majority alteration in some form. As a highly skilled and successfull product development and design specialist with more than 4 Years of My experience.</p>
</div>
</div>
</div>
</div>


<div class="card education-sec">
<div class="card-body pb-0">
<h5 class="subs-title">Courses</h5>
<div class="row">
<div class="col-lg-6 col-md-6 d-flex">
<div class="course-box course-design d-flex ">
<div class="product">
<div class="product-img">
<a href="course-details.html">
<img class="img-fluid" alt="" src="assets/img/course/course-10.jpg">
</a>
<div class="price">
<h3>$300 <span>$99.00</span></h3>
</div>
</div>
<div class="product-content">
<div class="course-group d-flex">
<div class="course-group-img d-flex">
<a href="student-profile.html"><img src="assets/img/user/user1.jpg" alt="" class="img-fluid"></a>
<div class="course-name">
<h4><a href="student-profile.html">Rolands R</a></h4>
<p>Instructor</p>
</div>
</div>
</div>
<h3 class="title product-content-title"><a href="course-details.html">Information About UI/UX Design Degree</a></h3>
<div class="course-info d-flex align-items-center border-0 m-0">
<div class="rating-img d-flex align-items-center">
<img src="assets/img/icon/icon-01.svg" alt="">
<p>12+ Lesson</p>
</div>
<div class="course-view d-flex align-items-center">
<img src="assets/img/icon/icon-02.svg" alt="">
<p>9hr 30min</p>
</div>
</div>
<div class="rating">
<i class="fas fa-star filled"></i>
<i class="fas fa-star filled"></i>
<i class="fas fa-star filled"></i>
<i class="fas fa-star filled"></i>
<i class="fas fa-star"></i>
<span class="d-inline-block average-rating"><span>4.0</span> (15)</span>
</div>
<div class="all-btn all-category d-flex align-items-center">
<a href="checkout.html" class="btn btn-primary">BUY NOW</a>
</div>
</div>
</div>
</div>
</div>
<div class="col-lg-6 col-md-6 d-flex">
<div class="course-box course-design d-flex ">
<div class="product">
<div class="product-img">
<a href="course-details.html">
<img class="img-fluid" alt="" src="assets/img/course/course-11.jpg">
</a>
<div class="price">
<h3>$200 <span>$99.00</span></h3>
</div>
</div>
<div class="product-content">
<div class="course-group d-flex">
<div class="course-group-img d-flex">
<a href="student-profile.html"><img src="assets/img/user/user2.jpg" alt="" class="img-fluid"></a>
<div class="course-name">
<h4><a href="student-profile.html">Jenis R.</a></h4>
<p>Instructor</p>
</div>
</div>
</div>
<h3 class="title product-content-title"><a href="course-details.html">Wordpress for Beginners - Master Wordpress Quickly</a></h3>
<div class="course-info d-flex align-items-center border-0 m-0">
<div class="rating-img d-flex align-items-center">
<img src="assets/img/icon/icon-01.svg" alt="">
<p>12+ Lesson</p>
</div>
<div class="course-view d-flex align-items-center">
<img src="assets/img/icon/icon-02.svg" alt="">
<p>9hr 30min</p>
</div>
</div>
<div class="rating">
<i class="fas fa-star filled"></i>
<i class="fas fa-star filled"></i>
<i class="fas fa-star filled"></i>
<i class="fas fa-star filled"></i>
<i class="fas fa-star"></i>
<span class="d-inline-block average-rating"><span>4.0</span> (15)</span>
</div>
<div class="all-btn all-category d-flex align-items-center">
<a href="checkout.html" class="btn btn-primary">BUY NOW</a>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>


<div class="card review-sec">
<div class="card-body">
<h5 class="subs-title">Reviews</h5>
<div class="review-item">
<div class="instructor-wrap border-0 m-0">
<div class="about-instructor">
<div class="abt-instructor-img">
<img src="assets/img/user/user1.jpg" alt="img" class="img-fluid">
</div>
<div class="instructor-detail">
<h5>Nicole Brown</h5>
<p>UX/UI Designer</p>
</div>
</div>
<div class="rating">
<i class="fas fa-star filled"></i>
<i class="fas fa-star filled"></i>
<i class="fas fa-star filled"></i>
<i class="fas fa-star filled"></i>
<i class="fas fa-star"></i>
</div>
</div>
<p class="rev-info">“ This is the second Photoshop course I have completed with Cristian. Worth every penny and recommend it highly. To get the most out of this course, its best to to take the Beginner to Advanced course first. The sound and video quality is of a good standard. Thank you Cristian. “</p>
<a href="javascript:void(0);" class="btn btn-reply"><i class="feather-corner-up-left"></i> Reply</a>
</div>
<div class="review-item">
<div class="instructor-wrap border-0 m-0">
<div class="about-instructor">
<div class="abt-instructor-img">
<img src="assets/img/user/user1.jpg" alt="img" class="img-fluid">
</div>
<div class="instructor-detail">
<h5>Nicole Brown</h5>
<p>UX/UI Designer</p>
</div>
</div>
<div class="rating">
<i class="fas fa-star filled"></i>
<i class="fas fa-star filled"></i>
<i class="fas fa-star filled"></i>
<i class="fas fa-star filled"></i>
<i class="fas fa-star"></i>
</div>
</div>
<p class="rev-info">“ This is the second Photoshop course I have completed with Cristian. Worth every penny and recommend it highly. To get the most out of this course, its best to to take the Beginner to Advanced course first. The sound and video quality is of a good standard. Thank you Cristian. “</p>
<a href="javascript:void(0);" class="btn btn-reply"><i class="feather-corner-up-left"></i> Reply</a>
</div>
<div class="review-item">
<div class="instructor-wrap border-0 m-0">
<div class="about-instructor">
<div class="abt-instructor-img">
<img src="assets/img/user/user1.jpg" alt="img" class="img-fluid">
</div>
<div class="instructor-detail">
<h5>Nicole Brown</h5>
<p>UX/UI Designer</p>
</div>
</div>
<div class="rating">
<i class="fas fa-star filled"></i>
<i class="fas fa-star filled"></i>
<i class="fas fa-star filled"></i>
<i class="fas fa-star filled"></i>
<i class="fas fa-star"></i>
</div>
</div>
<p class="rev-info">“ This is the second Photoshop course I have completed with Cristian. Worth every penny and recommend it highly. To get the most out of this course, its best to to take the Beginner to Advanced course first. The sound and video quality is of a good standard. Thank you Cristian. “</p>
<a href="javascript:void(0);" class="btn btn-reply"><i class="feather-corner-up-left"></i> Reply</a>
</div>
</div>
</div>


<div class="card comment-sec">
<div class="card-body">
<h5 class="subs-title">Add a review</h5>
<form>
<div class="row">
<div class="col-md-6">
<div class="form-group">
<input type="text" class="form-control" placeholder="Full Name">
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<input type="email" class="form-control" placeholder="Email">
 </div>
</div>
</div>
<div class="form-group">
<input type="email" class="form-control" placeholder="Subject">
</div>
<div class="form-group">
<textarea rows="4" class="form-control" placeholder="Your Comments"></textarea>
</div>
<div class="submit-section">
<button class="btn submit-btn" type="submit">Submit</button>
</div>
</form>
</div>
</div>

</div>
<div class="col-lg-4 theiaStickySidebar">

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

    
<div class="card overview-sec">
<div class="card-body">
<h5 class="subs-title">Contact Details</h5>
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <div class="contact-info-list">
                <div class="edu-wrap">
                    <div class="edu-name">
                        <span>
                            <img src="assets/img/instructor/email-icon.png" alt="Address"></span>
                    </div>
                    <div class="edu-detail">
                        <h6>Email</h6>
                        <p><%#Eval("fac_email") %></p>
                    </div>
                </div>
               <%-- <div class="edu-wrap">
                    <div class="edu-name">
                        <span>
                            <img src="assets/img/instructor/address-icon.png" alt="Address"></span>
                    </div>
                    <div class="edu-detail">
                        <h6>Address</h6>
                        <p>877 Ferry Street, Huntsville, Alabama</p>
                    </div>
                </div>--%>
                <div class="edu-wrap">
                    <div class="edu-name">
                        <span>
                            <img src="assets/img/instructor/phone-icon.png" alt="Address"></span>
                    </div>
                    <div class="edu-detail">
                        <h6>Phone</h6>
                        <p><%#Eval("fac_mob") %></p>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [fac_mob], [fac_email] FROM [faculty_mstr]"></asp:SqlDataSource>
</div>

</div>

</div>
</div>
</div>
    
</section>


</asp:Content>
