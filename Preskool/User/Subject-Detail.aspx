<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Subject-Detail.aspx.cs" Inherits="Preskool.User.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumb-bar justify-content-end">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-12">
                    <div class="col-md-12 col-12">
                        <div class="breadcrumb-list">
                           <form runat="server">
                               <asp:Button ID="Button3" runat="server" Text="Material" Visible="false" OnClick="Button3_Click" class="btn btn-primary" />
                           </form>
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
                                        <a href='Faculty-Detail.aspx?fac_id=<%#Eval("fac_id") %> '>
                                            <img src='../Faculty/Faculty Image/<%#Eval("fac_img") %>' alt="img" class="img-fluid"></a>
                                    </div>
                                    <div class="instructor-detail me-3">
                                        <h5><a><%#Eval("fac_name") %></a></h5>
                                        <p><%#Eval("pname") %></p>
                                    </div>

                                </div>

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

    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT faculty_mstr.fac_id, faculty_mstr.fac_name, faculty_mstr.posi_id, faculty_mstr.fac_img, subject_mstr.sname, subject_mstr.sdesc, subject_mstr.simg, faculty_mstr.subid, position_mstr.pname FROM faculty_mstr INNER JOIN subject_mstr ON faculty_mstr.subid = subject_mstr.subid INNER JOIN position_mstr ON faculty_mstr.posi_id = position_mstr.posi_id WHERE (faculty_mstr.subid = @subid)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="subid" Name="subid"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>

            <section class="page-content course-sec">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">

                            <div class="card overview-sec">
                                <div class="card-body">
                                    <h5 class="subs-title">Subject Overview</h5>
                                    <h6>Subject Description</h6>

                                    <div class="row">
                                        <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
                                            <ItemTemplate>
                                                <div class="col-md-7">
                                                    <ul>
                                                        <h6><i class="fa-solid fa-forward-fast"></i>&nbsp; &nbsp; <%#Eval("Subject_topic") %></h6>
                                                    </ul>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>


                                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT STopic_id, Subid, Subject_topic FROM Subject_Overview_mstr WHERE (Subid = @Subid)">
                                            <SelectParameters>
                                                <asp:QueryStringParameter QueryStringField="subid" Name="Subid" Type="Int32"></asp:QueryStringParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>



                                </div>
                            </div>

                         <%--  <div class="card content-sec">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <h5 class="subs-title">Course Content</h5>
                                        </div>
                                        <div class="col-sm-6 text-sm-end">
                                            <h6>92 Lectures 10:56:11</h6>
                                        </div>
                                    </div>
                                    <form runat="server">
                                        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource4" AutoGenerateColumns="False" DataKeyNames="Mid" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="780px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                                            <Columns>
                                                <asp:BoundField DataField="Mid" HeaderText="Mid" ReadOnly="True" InsertVisible="False" SortExpression="Mid" Visible="false"></asp:BoundField>
                                                <asp:BoundField DataField="fac_name" HeaderText="faculty Name" SortExpression="fac_id"></asp:BoundField>
                                                <asp:BoundField DataField="sname" HeaderText="Subject Name" SortExpression="subid"></asp:BoundField>
                                                <asp:HyperLinkField HeaderText="Material" Text="Pdf" Target="_blank" DataNavigateUrlFields="Mid" DataNavigateUrlFormatString="viewmaterial.aspx?Mid={0}"></asp:HyperLinkField>
                                            </Columns>
                                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099"></FooterStyle>

                                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC"></HeaderStyle>

                                            <PagerStyle HorizontalAlign="Center" BackColor="#FFFFCC" ForeColor="#330099"></PagerStyle>

                                            <RowStyle BackColor="White" ForeColor="#330099"></RowStyle>

                                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399"></SelectedRowStyle>

                                            <SortedAscendingCellStyle BackColor="#FEFCEB"></SortedAscendingCellStyle>

                                            <SortedAscendingHeaderStyle BackColor="#AF0101"></SortedAscendingHeaderStyle>

                                            <SortedDescendingCellStyle BackColor="#F6F0C0"></SortedDescendingCellStyle>

                                            <SortedDescendingHeaderStyle BackColor="#7E0000"></SortedDescendingHeaderStyle>
                                        </asp:GridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Material_mstr.Mid, Material_mstr.fac_id, Material_mstr.subid, Material_mstr.Mpdf, subject_mstr.sname, faculty_mstr.fac_name FROM Material_mstr INNER JOIN subject_mstr ON Material_mstr.subid = subject_mstr.subid INNER JOIN faculty_mstr ON Material_mstr.fac_id = faculty_mstr.fac_id WHERE (subject_mstr.subid = @subid)">
                                            <SelectParameters>
                                                <asp:QueryStringParameter QueryStringField="subid" Name="subid"></asp:QueryStringParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </form>
                                </div>
                            </div>--%>


                        </div>
                        <div class="col-lg-4">
                            <div class="sidebar-sec">

                                <div class="video-sec vid-bg">
                                    <div class="card">
                                        <div class="card-body">
                                            <%--<a href="https://www.youtube.com/embed/1trvO6dqQUI" class="video-thumbnail" data-fancybox="">--%>
                                            <a href='<%#Eval("suburl") %>' class="video-thumbnail" data-fancybox="">
                                                <div class="play-icon">
                                                    <i class="fa-solid fa-play"></i>
                                                </div>
                                                <img class="" src='../Faculty/Subject Image/<%#Eval("simg") %>' alt="">
                                            </a>
                                            &nbsp;<div class="video-details">
                                                <div class="course-fee">
                                                    <h2><%#Eval("subpay") %></h2>

                                                </div>
                                                <div class="row gx-2">
                                                    <div class="col-md-6">
                                                        <a href='Course-wishlist.aspx?subid=<%#Eval("subid") %>&fid=<%#Eval("fac_id") %>' class="btn btn-wish w-100"><i class="feather-heart"></i>Add to Wishlist</a>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <a href='AddReview.aspx?subid=<%#Eval("subid")%>&fid=<%#Eval("fac_id") %>' class="btn btn-wish w-100"><i class="feather-share-2"></i>Add Review</a>
                                                    </div>
                                                </div>
                                                <%-- <a href="checkout.html" class="btn btn-enroll w-100">Enroll Now</a>--%>
                                                <a href="AddtoCart.aspx?Sid=<%#Eval("subid") %>&Spay=<%#Eval("subpay") %>" class="btn btn-enroll w-100">Enroll Now</a>
                                                <%--<asp:Button ID="Button1" runat="server" Text="Button" Visible="true" OnClick="Button1_Click"/>--%>
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
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT subject_mstr.subid, subject_mstr.courseid, subject_mstr.sname, subject_mstr.sdesc, subject_mstr.simg, subject_mstr.subpay, faculty_mstr.fac_id, subject_mstr.suburl FROM subject_mstr INNER JOIN faculty_mstr ON subject_mstr.subid = faculty_mstr.subid WHERE (subject_mstr.subid = @subid)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="subid" Name="subid" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>

    
                                                 
    


</asp:Content>
