﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Fac/Site1.Master" AutoEventWireup="true" CodeBehind="FHome.aspx.cs" Inherits="Preskool.Faculty.Fac.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xl-9 col-lg-8 col-md-12">
        <div class="row">
            <div class="col-md-4 d-flex">
                <div class="card instructor-card w-100">
                    <div class="card-body">
                        <div class="instructor-inner">
                            <h6>Subjects</h6>
                            <h4 class="instructor-text-success">
                                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="true" Font-Size="XX-Large"></asp:Label></h4>
                            <%--<p>Earning this month</p>--%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex">
                <div class="card instructor-card w-100">
                    <div class="card-body">
                        <div class="instructor-inner">
                            <h6>Courses</h6>
                            <h4 class="instructor-text-info">
                                <asp:Label ID="Label2" runat="server" Text=""></asp:Label></h4>
                            <%--<p>New this month</p>--%>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 d-flex">
                <div class="card instructor-card w-100">
                    <div class="card-body">
                        <div class="instructor-inner">
                            <h6>COURSES RATING</h6>
                            <h4 class="instructor-text-warning">4.80</h4>
                            <p>Rating this month</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="card instructor-card">
                    <div class="card-header">
                        <h4>Earnings</h4>
                    </div>
                    <div class="card-body">
                        <div id="instructor_chart"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="card instructor-card">
                    <div class="card-header">
                        <h4>Order</h4>
                    </div>
                    <div class="card-body">
                        <div id="order_chart"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="settings-widget">
                    <div class="settings-inner-blk p-0">
                        <div class="sell-course-head comman-space">
                            <h3>Best Selling Courses</h3>
                        </div>
                        <div class="comman-space pb-0">
                            <div class="settings-tickets-blk course-instruct-blk table-responsive">

                                <table class="table table-nowrap mb-0">
                                    <thead>
                                        <tr>
                                            <th>COURSES</th>
                                            <th>SALES</th>
                                            <th>AMOUNT</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="sell-table-group d-flex align-items-center">
                                                    <div class="sell-group-img">
                                                        <a href="course-details.html">
                                                            <img src="assets/img/course/course-10.jpg" class="img-fluid " alt="">
                                                        </a>
                                                    </div>
                                                    <div class="sell-tabel-info">
                                                        </p>
                                                        <p>
                                                            <a href="course-details.html">Information About UI/UX Design Degree</a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>34</td>
                                            <td>$3,145.23</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="sell-table-group d-flex align-items-center">
                                                    <div class="sell-group-img">
                                                        <a href="course-details.html">
                                                            <img src="assets/img/course/course-11.jpg" class="img-fluid " alt="">
                                                        </a>
                                                    </div>
                                                    <div class="sell-tabel-info">
                                                        <p><a href="course-details.html">Wordpress for Beginners - Master Wordpress Quickly</a></p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>34</td>
                                            <td>$3,145.23</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="sell-table-group d-flex align-items-center">
                                                    <div class="sell-group-img">
                                                        <a href="course-details.html">
                                                            <img src="assets/img/course/course-12.jpg" class="img-fluid " alt="">
                                                        </a>
                                                    </div>
                                                    <div class="sell-tabel-info">
                                                        <p><a href="course-details.html">Sketch from A to Z (2022): Become an app designer</a></p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>34</td>
                                            <td>$3,145.23</td>
                                        </tr>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--</div>
</div>
</div>--%>
</asp:Content>
