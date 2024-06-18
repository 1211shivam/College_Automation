<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Fac/Site1.Master" AutoEventWireup="true" CodeBehind="Review-Detail.aspx.cs" Inherits="Preskool.Faculty.Fac.WebForm12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xl-9 col-lg-8 col-md-12">
        <div class="row">

            <div class="col-md-12">
                <div class="settings-widget">
                    <div class="settings-inner-blk p-0">
                        <div class="sell-course-head comman-space">
                            <h3>Reviews</h3>
                            <p>You have full control to manage your own account setting.</p>
                        </div>
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <div class="comman-space bdr-bottom-line">
                                    <div class="instruct-review-blk ">
                                        <div class="review-item">
                                            <div class="instructor-wrap border-0 m-0">
                                                <div class="about-instructor">
                                                    <div class="abt-instructor-img">
                                                        <a href="instructor-profile.html">
                                                            <%--<img src="assets/img/user/user1.jpg" alt="img" class="img-fluid"></a>--%>
                                                            <img src='../../User/User image/<%#Eval("uimg") %>' alt="img" class="img-fluid"></a>
                                                    </div>
                                                    <div class="instructor-detail">
                                                        <h5><a href="instructor-profile.html"><%#Eval("uname") %></a></h5>
                                                        <p></p>
                                                    </div>
                                                </div>

                                            </div>
                                            <b><p class="rev-info">“ <%#Eval("Subject") %> “</p></b>
                                            <p class="rev-info">“ <%#Eval("Overview") %> “</p>
                                            <%--<a href="javascript:;" class="btn btn-reply"><i class="feather-corner-up-left"></i>Respond</a>--%>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT review_mstr.review_id, review_mstr.stud_id, review_mstr.fac_id, review_mstr.Subject, review_mstr.subject_id, review_mstr.Overview, user_mstr.uid, user_mstr.uname, user_mstr.uimg FROM user_mstr INNER JOIN review_mstr ON user_mstr.uid = review_mstr.stud_id WHERE (review_mstr.fac_id = @fac_id)">
                            <SelectParameters>
                                <asp:SessionParameter SessionField="fac_id" Name="fac_id"></asp:SessionParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>

            
        </div>
    </div>


</asp:Content>
