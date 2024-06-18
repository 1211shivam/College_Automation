<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="ShowEvent.aspx.cs" Inherits="Preskool.User.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="breadcrumb-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-12">
                    <div class="breadcrumb-list">
                        
                    </div>
                </div>
            </div>
        </div>
        <asp:Label ID="lbl" runat="server" Text="" Visible="false"></asp:Label>
    </div>


    <section class="course-content">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="row">
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <div class="col-md-4 col-sm-12">
                                    <div class="blog grid-modern">
                                        <div class="blog-image">
                                            <a href='Event-Detail.aspx?event_id=<%#Eval("event_id") %>'>
                                                <img class="img-fluid" src='../../Faculty/Event Image/<%#Eval("event_img") %>' alt=""></a>
                                        </div>
                                        <div class="blog-modern-box">
                                            <h3 class="blog-title"><a href="blog-details.html"><%#Eval("event_name") %></a></h3>
                                            <div class="blog-info clearfix mb-0">
                                                <div class="post-left">
                                                    <ul>
                                                        <li>
                                                            <img class="img-fluid" src="assets/img/icon/icon-22.svg" alt=""><%#Eval("event_date","{0:dd/M/yyyy}") %></li>
                                                        <li>
                                                            <img class="img-fluid" src="assets/img/icon/icon-24.svg" alt=""><%#Eval("event_venue") %></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </ItemTemplate>
                        </asp:Repeater>



                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [event_mstr] WHERE ([event_date] >= @event_date)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lbl" PropertyName="Text" Name="event_date" DbType="Date"></asp:ControlParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>



                </div>
            </div>
        </div>
    </section>

</asp:Content>
