<%@ Page Title="" Language="C#" MasterPageFile="~/User/Guest.Master" AutoEventWireup="true" CodeBehind="DisplayFac.aspx.cs" Inherits="Preskool.User.WebForm17" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="feature-instructors">
        <div class="section-header aos" data-aos="fade-up">
            <div class="section-sub-head feature-head text-center">
                <h2>Featured Instructor</h2>
                
            </div>
        </div>
        </div>

    <section>
        <div class="container-fluid">
                <div class="row">
                
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <div class="col-md-3 mt-6">
                            <div class="col-lg-12 col-md-14">
                                <div class="course-box course-design d-flex" data-aos="fade-up">
                                    <div class="product">
                                        <div class="product-img">
                                            <a>
                                                <img class="img-fluid" alt="" src='../Faculty/Faculty Image/<%#Eval("fac_img") %>' style="height:400px">
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <h3 class="title instructor-text"><a><%#Eval("fac_name") %></a></h3>
                                            <div class="course-info d-flex align-items-center">
                                                <p><%#Eval("cname") %></p>
                                            </div>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                            </div>
                            
                        </ItemTemplate>
                    </asp:Repeater>

                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT faculty_mstr.fac_name, faculty_mstr.course_id, faculty_mstr.fac_img, course_mstr.cname FROM faculty_mstr INNER JOIN course_mstr ON faculty_mstr.course_id = course_mstr.course_id"></asp:SqlDataSource>
                </div>
            
                </div>
           
            </section>

    <section class="section lead-companies">
        <div class="container">
            <div class="section-header aos" data-aos="fade-up">
                <div class="section-sub-head feature-head text-center">
                    <span>Trusted By</span>
                    <h2>500+ Leading Universities And Companies</h2>
                </div>
            </div>
            <div class="lead-group aos" data-aos="fade-up">
                <div class="lead-group-slider owl-carousel owl-theme">
                    <div class="item">
                        <div class="lead-img">
                            <img class="img-fluid" alt="" src="assets/img/lead-01.png">
                        </div>
                    </div>
                    <div class="item">
                        <div class="lead-img">
                            <img class="img-fluid" alt="" src="assets/img/lead-02.png">
                        </div>
                    </div>
                    <div class="item">
                        <div class="lead-img">
                            <img class="img-fluid" alt="" src="assets/img/lead-03.png">
                        </div>
                    </div>
                    <div class="item">
                        <div class="lead-img">
                            <img class="img-fluid" alt="" src="assets/img/lead-04.png">
                        </div>
                    </div>
                    <div class="item">
                        <div class="lead-img">
                            <img class="img-fluid" alt="" src="assets/img/lead-05.png">
                        </div>
                    </div>
                    <div class="item">
                        <div class="lead-img">
                            <img class="img-fluid" alt="" src="assets/img/lead-06.png">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="section share-knowledge">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="knowledge-img aos" data-aos="fade-up">
                        <img src="assets/img/share.png" alt="" class="img-fluid">
                    </div>
                </div>
                <div class="col-md-6 d-flex align-items-center">
                    <div class="join-mentor aos" data-aos="fade-up">
                        <h2>Want to share your knowledge? Join us a Mentor</h2>
                        <p>High-definition video is video of higher resolution and quality than standard-definition. While there is no standardized meaning for high-definition, generally any video.</p>
                        <ul class="course-list">
                            <li><i class="fa-solid fa-circle-check"></i>Best Courses</li>
                            <li><i class="fa-solid fa-circle-check"></i>Top rated Instructors</li>
                        </ul>
                        <div class="all-btn all-category d-flex align-items-center">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


</asp:Content>
