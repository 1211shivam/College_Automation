<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm27.aspx.cs" Inherits="Preskool.User.WebForm27" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                                <div class="card content-sec">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <h5 class="subs-title">Course Content</h5>
                                        </div>
                                        <div class="col-sm-6 text-sm-end">
                                            <%--<h6>92 Lectures 10:56:11</h6>--%>
                                        </div>
                                    </div>
                                    <form runat="server">
                                        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource4" AutoGenerateColumns="False" DataKeyNames="Mid" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="1500px"  >
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
                            </div>

</asp:Content>
