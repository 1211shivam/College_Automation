<%@ Page Title="" Language="C#" MasterPageFile="~/User/Guest.Master" AutoEventWireup="true" CodeBehind="DisplayCourse.aspx.cs" Inherits="Preskool.User.WebForm16" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="section new-course">
        <div class="container">
            <div class="section-header aos" data-aos="fade-up">
                <div class="section-sub-head">

                    <h2>Featured Courses</h2>
                </div>
                <div class="all-btn all-category d-flex align-items-center">
                </div>
            </div>
            
            </div>
            <div class="container">
                <div class="row">
                
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <div class="col-md-3 mt-4">
                            <div class="col-lg-10 col-md-12 d-flex">
                                <div class="course-box course-design d-flex" data-aos="fade-up">
                                    <div class="product">
                                        <div class="product-img">
                                            <a>
                                                <img class="img-fluid" alt="" src='../Admin/Course Image/<%#Eval("cimage") %>'>
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <h3 class="title instructor-text"><a><%#Eval("cname") %></a></h3>
                                            <div class="course-info d-flex align-items-center">
                                                <p><%#Eval("cdesc") %></p>
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
                                                <a onclick="alert('Please Sign Up First!')" class="btn btn-primary">BUY NOW</a>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [course_mstr]"></asp:SqlDataSource>
                </div>
            </div>
                </div>
        
    </section>

    <section class="section how-it-works">
        <div class="container">
            <div class="section-header aos" data-aos="fade-up">
                <div class="section-sub-head">
                    <h4>Top Category</h4>
                </div>
                <div class="all-btn all-category d-flex align-items-center">
                </div>
            </div>
            <div class="section-text aos" data-aos="fade-up">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget aenean accumsan bibendum gravida maecenas augue elementum et neque. Suspendisse imperdiet.</p>
            </div>
            <div class="owl-carousel mentoring-course owl-theme aos" data-aos="fade-up">
                <div class="feature-box text-center ">
                    <div class="feature-bg">
                        <div class="feature-header">
                            <div class="feature-icon">
                                <img src="assets/img/categories-icon.png" alt="">
                            </div>
                            <div class="feature-cont">
                                <div class="feature-text">Angular Development</div>
                            </div>
                        </div>
                        <p>40 Instructors</p>
                    </div>
                </div>
                <div class="feature-box text-center ">
                    <div class="feature-bg">
                        <div class="feature-header">
                            <div class="feature-icon">
                                <img src="assets/img/categories-icon-01.png" alt="">
                            </div>
                            <div class="feature-cont">
                                <div class="feature-text">Docker Development</div>
                            </div>
                        </div>
                        <p>45 Instructors</p>
                    </div>
                </div>
                <div class="feature-box text-center ">
                    <div class="feature-bg">
                        <div class="feature-header">
                            <div class="feature-icon">
                                <img src="assets/img/categories-icon-02.png" alt="">
                            </div>
                            <div class="feature-cont">
                                <div class="feature-text">Node JS Frontend</div>
                            </div>
                        </div>
                        <p>40 Instructors</p>
                    </div>
                </div>
                <div class="feature-box text-center ">
                    <div class="feature-bg">
                        <div class="feature-header">
                            <div class="feature-icon">
                                <img src="assets/img/categories-icon-03.png" alt="">
                            </div>
                            <div class="feature-cont">
                                <div class="feature-text">Swift Development</div>
                            </div>
                        </div>
                        <p>23 Instructors</p>
                    </div>
                </div>
                <div class="feature-box text-center ">
                    <div class="feature-bg">
                        <div class="feature-header">
                            <div class="feature-icon">
                                <img src="assets/img/categories-icon-04.png" alt="">
                            </div>
                            <div class="feature-cont">
                                <div class="feature-text">Python Development</div>
                            </div>
                        </div>
                        <p>30 Instructors</p>
                    </div>
                </div>
                <div class="feature-box text-center ">
                    <div class="feature-bg">
                        <div class="feature-header">
                            <div class="feature-icon">
                                <img src="assets/img/categories-icon-05.png" alt="">
                            </div>
                            <div class="feature-cont">
                                <div class="feature-text">
                                    React<br>
                                    Native
                                </div>
                            </div>
                        </div>
                        <p>80 Instructors</p>
                    </div>
                </div>
                <div class="feature-box text-center ">
                    <div class="feature-bg">
                        <div class="feature-header">
                            <div class="feature-icon">
                                <img src="assets/img/categories-icon-04.png" alt="">
                            </div>
                            <div class="feature-cont">
                                <div class="feature-text">Angular Development</div>
                            </div>
                        </div>
                        <p>40 Instructors</p>
                    </div>
                </div>
                <div class="feature-box text-center ">
                    <div class="feature-bg">
                        <div class="feature-header">
                            <div class="feature-icon">
                                <img src="assets/img/categories-icon-01.png" alt="">
                            </div>
                            <div class="feature-cont">
                                <div class="feature-text">Docker Development</div>
                            </div>
                        </div>
                        <p>45 Instructors</p>
                    </div>
                </div>
                <div class="feature-box text-center ">
                    <div class="feature-bg">
                        <div class="feature-header">
                            <div class="feature-icon">
                                <img src="assets/img/categories-icon-02.png" alt="">
                            </div>
                            <div class="feature-cont">
                                <div class="feature-text">Node JS Frontend</div>
                            </div>
                        </div>
                        <p>40 Instructors</p>
                    </div>
                </div>
                <div class="feature-box text-center ">
                    <div class="feature-bg">
                        <div class="feature-header">
                            <div class="feature-icon">
                                <img src="assets/img/categories-icon-03.png" alt="">
                            </div>
                            <div class="feature-cont">
                                <div class="feature-text">Swift Development</div>
                            </div>
                        </div>
                        <p>23 Instructors</p>
                    </div>
                </div>
                <div class="feature-box text-center ">
                    <div class="feature-bg">
                        <div class="feature-header">
                            <div class="feature-icon">
                                <img src="assets/img/categories-icon-04.png" alt="">
                            </div>
                            <div class="feature-cont">
                                <div class="feature-text">Python Development</div>
                            </div>
                        </div>
                        <p>30 Instructors</p>
                    </div>
                </div>
                <div class="feature-box text-center ">
                    <div class="feature-bg">
                        <div class="feature-header">
                            <div class="feature-icon">
                                <img src="assets/img/categories-icon-01.png" alt="">
                            </div>
                            <div class="feature-cont">
                                <div class="feature-text">Docker Development</div>
                            </div>
                        </div>
                        <p>45 Instructors</p>
                    </div>
                </div>
                <div class="feature-box text-center ">
                    <div class="feature-bg">
                        <div class="feature-header">
                            <div class="feature-icon">
                                <img src="assets/img/categories-icon-02.png" alt="">
                            </div>
                            <div class="feature-cont">
                                <div class="feature-text">Node JS Frontend</div>
                            </div>
                        </div>
                        <p>40 Instructors</p>
                    </div>
                </div>
                <div class="feature-box text-center ">
                    <div class="feature-bg">
                        <div class="feature-header">
                            <div class="feature-icon">
                                <img src="assets/img/categories-icon-03.png" alt="">
                            </div>
                            <div class="feature-cont">
                                <div class="feature-text">Swift Development</div>
                            </div>
                        </div>
                        <p>23 Instructors</p>
                    </div>
                </div>
                <div class="feature-box text-center ">
                    <div class="feature-bg">
                        <div class="feature-header">
                            <div class="feature-icon">
                                <img src="assets/img/categories-icon-04.png" alt="">
                            </div>
                            <div class="feature-cont">
                                <div class="feature-text">Python Development</div>
                            </div>
                        </div>
                        <p>30 Instructors</p>
                    </div>
                </div>
            </div>
        </div>
    </section>





</asp:Content>
