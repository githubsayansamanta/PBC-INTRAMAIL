<%@ Page Title="" Language="VB" MasterPageFile="~/UserMaster.master" AutoEventWireup="false" CodeFile="Inbox.aspx.vb" Inherits="Inbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 750px;
            background-color: #CCCCCC;
            color: #003366;
            font-size: large;
        }
        .style16
        {
            width: 100%;
        }
        .style17
        {
            width: 188px;
        }
        .style18
        {
            color: #666666;
            font-family: Calibri;
            font-size: medium;
            background-color: #C0C0C0;
        }
        .style19
        {
            width: 335px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style15">
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" BorderColor="#669999" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style16" cellspacing="5">
                        <tr>
                            <td colspan="3" style="background-color: #CCDDDD">
                                Inbox<asp:Label ID="lblCount" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style17" colspan="2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17">
                                &nbsp;</td>
                            <td class="style17">
                                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" 
                                    style="font-size: large"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17" colspan="2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style17" colspan="2">
                                <asp:GridView ID="gvInbox" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" ForeColor="#333333" GridLines="None" Height="170px" 
                                    OnRowCommand="gvInbox_RowCommand" 
                                    style="margin-left: 0px; color: #006699; font-size: medium;" Width="510px">
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="UserFrom" HeaderText="From" />
                                        <asp:BoundField DataField="Subject" HeaderText="Subject" />
                                        <asp:BoundField DataField="DateTime" HeaderText="Date &amp; Time" />
                                        <asp:TemplateField HeaderText="Mark">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbSelect" runat="server" 
                                                    CommandArgument='<%#Eval("MailId")%>' CommandName="Select" Text="Select"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17" colspan="2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style17">
                                <asp:Button ID="btnView" runat="server" CssClass="style18" Text="View" 
                                    Visible="False" Width="65px" />
                            </td>
                            <td align="center" class="style17">
                                <asp:Button ID="btnDelete" runat="server" CssClass="style18" 
                                    style="margin-left: 0px" Text="Delete" Visible="False" Width="65px" />
                            </td>
                            <td align="left">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17" colspan="2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel2" runat="server" BorderColor="#669999" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style16">
                        <tr>
                            <td align="right" class="style19">
                                <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/Login.aspx">Log In</asp:HyperLink>
                                <asp:Label ID="lblUser" runat="server" ForeColor="#FF0066" 
                                    style="color: #003366"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btnLogout" runat="server" CssClass="style18" 
                                    style="font-size: medium; font-family: Calibri;" Text="Log  Out" Width="70px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    
</asp:Content>

