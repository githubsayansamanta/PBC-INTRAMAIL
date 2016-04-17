<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMaster.master" AutoEventWireup="false" CodeFile="AdminInbox.aspx.vb" Inherits="AdminInbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    
        .style4
        {
            width: 750px;
            font-size: large; 
            color: #006699; 
            background-color: #E9E9E9;
        }
    
        .style5
        {
            width: 100%;
        }
        .style6
        {
            width: 529px;
        }
        .style13
        {
            width: 165px;
        }
        .style15
        {
            width: 175px;
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style4">
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" BorderColor="#009999" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style5" cellspacing="5">
                        <tr>
                            <td colspan="3" style="background-color: #ACC8C8">
                                Inbox<asp:Label ID="lblCount" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" colspan="2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style13">
                                &nbsp;</td>
                            <td class="style15">
                                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6" colspan="2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style6" colspan="2">
                                <asp:GridView ID="gvInbox" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                                    OnRowCommand="gvInbox_RowCommand" 
                                    style="margin-left: 2px; font-size: medium; color: #006666;">
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
                                        <asp:BoundField DataField="MailId" HeaderText="Mail ID" />
                                        <asp:BoundField DataField="ReportFrom" HeaderText="Report From" />
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
                            <td class="style6" colspan="2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style13">
                                <asp:Button ID="btnView" runat="server" BackColor="#CCCCCC" CssClass="style16" 
                                    ForeColor="#333333" 
                                    style="font-size: medium; margin-left: 20px; font-family: Calibri;" Text="View" 
                                    Visible="False" />
                            </td>
                            <td align="center" class="style15">
                                <asp:Button ID="btnDelete" runat="server" BackColor="#CCCCCC" 
                                    CssClass="style16" ForeColor="#333333" 
                                    style="font-size: medium; font-family: Calibri;" Text="Delete" 
                                    Visible="False" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6" colspan="2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel2" runat="server" BorderColor="#009999" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style5">
                        <tr>
                            <td align="right">
                                <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/Login.aspx" 
                                    style="font-family: Calibri; font-size: large">Log In</asp:HyperLink>
                                <asp:Label ID="lblUser" runat="server" ForeColor="#FF0066" 
                                    style="color: #006699; font-family: Calibri; font-size: large;"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btnLogout" runat="server" BackColor="#CCCCCC" 
                                    ForeColor="#333333" 
                                    style="color: #333333; font-size: medium; font-family: Calibri;" 
                                    Text="Log  Out" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
               </td>
        </tr>
    </table>
    
</asp:Content>

