<%@ Page Title="" Language="C#" MasterPageFile="~/User/Guest.Master" AutoEventWireup="true" CodeBehind="DisplayEvent.aspx.cs" Inherits="Preskool.User.WebForm18" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="section latest-blog">
        <div class="container">
            <div class="section-header aos" data-aos="fade-up">
                <div class="section-sub-head feature-head text-center mb-0">
                    <h2>Latest Events</h2>
                    <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
                    
                </div>
            </div>
            <div class="container">
            <div class="row">
             


                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="col-md-3 mt-4">
                        <div class="col-lg-16 col-md-18 d-flex" data-aos="fade-in">
                        <div class="instructors-widget blog-widget">
                            <div class="instructors-img">
                                <a >
                                    <img class="img-fluid" alt="" src='../Faculty/Event Image/<%#Eval("event_img") %>'>
                                </a>
                            </div>
                            <div class="instructors-content text-center">
                                <h5><a ><%#Eval("event_name") %></a></h5>
                                <p><i class="fa-solid fa-calendar-days"></i>
                                    <%#Eval("event_date","{0:dd/M/yyyy}") %></p>
                                <div class="student-count d-flex justify-content-center">
                                    
                                    <b><span><%#Eval("event_venue") %></span></b>
                                </div>
                                <div class="student-count d-flex justify-content-center">
                                    <span><%#Eval("event_desc") %></span>
                                </div>
                            </div>
                            </div>
                        </div>
                            
                            </div>
                    </ItemTemplate>
                </asp:Repeater>


                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [event_mstr] WHERE ([event_date] >= @event_date)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" PropertyName="Text" Name="event_date" DbType="Date"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
                
                </div>
            

            <div class="enroll-group aos" data-aos="fade-up">
                <div class="row ">
                    <div class="col-lg-4 col-md-6">
                        <div class="total-course d-flex align-items-center">
                            <div class="blur-border">
                                <div class="enroll-img ">
                                    <img src="assets/img/icon/icon-07.svg" alt="" class="img-fluid">
                                </div>
                            </div>
                            <div class="course-count">
                                <h3><span class="counterUp">253,085</span></h3>
                                <p>STUDENTS ENROLLED</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="total-course d-flex align-items-center">
                            <div class="blur-border">
                                <div class="enroll-img ">
                                    <img src="assets/img/icon/icon-08.svg" alt="" class="img-fluid">
                                </div>
                            </div>
                            <div class="course-count">
                                <h3><span class="counterUp">1,205</span></h3>
                                <p>TOTAL COURSES</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="total-course d-flex align-items-center">
                            <div class="blur-border">
                                <div class="enroll-img ">
                                    <img src="assets/img/icon/icon-09.svg" alt="" class="img-fluid">
                                </div>
                            </div>
                            <div class="course-count">
                                <h3><span class="counterUp">127</span></h3>
                                <p>COUNTRIES</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="lab-course">
                <div class="section-header aos" data-aos="fade-up">
                    <div class="section-sub-head feature-head text-center">
                        <h2>Unlimited access to 360+ courses
                            <br>
                            and 1,600+ hands-on labs</h2>
                    </div>
                </div>
                <div class="icon-group aos" data-aos="fade-up">
                    <div class="offset-lg-1 col-lg-12">
                        <div class="row">
                            <div class="col-lg-1 col-3">
                                <div class="total-course d-flex align-items-center">
                                    <div class="blur-border">
                                        <div class="enroll-img ">
                                            <img src="assets/img/icon/icon-09.svg" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-1 col-3">
                                <div class="total-course d-flex align-items-center">
                                    <div class="blur-border">
                                        <div class="enroll-img ">
                                            <img src="assets/img/icon/icon-10.svg" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-1 col-3">
                                <div class="total-course d-flex align-items-center">
                                    <div class="blur-border">
                                        <div class="enroll-img ">
                                            <img src="assets/img/icon/icon-16.svg" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-1 col-3">
                                <div class="total-course d-flex align-items-center">
                                    <div class="blur-border">
                                        <div class="enroll-img ">
                                            <img src="assets/img/icon/icon-12.svg" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-1 col-3">
                                <div class="total-course d-flex align-items-center">
                                    <div class="blur-border">
                                        <div class="enroll-img ">
                                            <img src="assets/img/icon/icon-13.svg" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-1 col-3">
                                <div class="total-course d-flex align-items-center">
                                    <div class="blur-border">
                                        <div class="enroll-img ">
                                            <img src="assets/img/icon/icon-14.svg" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-1 col-3">
                                <div class="total-course d-flex align-items-center">
                                    <div class="blur-border">
                                        <div class="enroll-img ">
                                            <img src="assets/img/icon/icon-15.svg" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-1 col-3">
                                <div class="total-course d-flex align-items-center">
                                    <div class="blur-border">
                                        <div class="enroll-img ">
                                            <img src="assets/img/icon/icon-16.svg" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-1 col-3">
                                <div class="total-course d-flex align-items-center">
                                    <div class="blur-border">
                                        <div class="enroll-img ">
                                            <img src="assets/img/icon/icon-17.svg" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-1 col-3">
                                <div class="total-course d-flex align-items-center">
                                    <div class="blur-border">
                                        <div class="enroll-img ">
                                            <img src="assets/img/icon/icon-18.svg" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
