<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site2.Master" AutoEventWireup="true" CodeBehind="Subjects.aspx.cs" Inherits="Preskool.User.WebForm25" %>
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
                        </div>

                        <div class="row">

                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    <div class="col-xl-3 col-lg-4 col-md-6 d-flex">
                                        <div class="course-box course-design d-flex ">
                                            <div class="product">
                                                <div class="product-img">
                                                    <a href="Subject-Detail.aspx?subid=<%#Eval("subid") %>">
                                                        <img class="img-fluid" alt="" src='../../Faculty/Subject Image/<%#Eval("simg") %>'>
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <h3 class="title"><a "><%#Eval("sname") %></a></h3>


                                                    <div class="student-percent">
                                                        <p>Fees : <%#Eval("subpay") %></p>
                                                    </div>
                                                    <div class="start-leason d-flex align-items-center">
                                                        <a href="Subject-Detail.aspx?subid=<%#Eval("subid") %>" class="btn btn-primary">Enroll</a>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT subject_mstr.subid, subject_mstr.courseid, subject_mstr.sname, subject_mstr.sdesc, subject_mstr.simg, subject_mstr.subpay, subject_mstr.suburl, subject_mstr.sub_status, faculty_mstr.delete_status FROM subject_mstr INNER JOIN faculty_mstr ON subject_mstr.subid = faculty_mstr.subid WHERE (subject_mstr.courseid = @courseid) AND (subject_mstr.sub_status = @sub_status) AND (faculty_mstr.delete_status = @delete_status)">
                                <SelectParameters>
                                    <asp:QueryStringParameter QueryStringField="course_id" Name="courseid" Type="Int32"></asp:QueryStringParameter>
                                    <asp:Parameter DefaultValue="0" Name="sub_status" Type="Int32"></asp:Parameter>
                                    <asp:Parameter DefaultValue="0" Name="delete_status"></asp:Parameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>




                    </div>
                </div>
            </div>
        </div>
        
    </section>

</asp:Content>
