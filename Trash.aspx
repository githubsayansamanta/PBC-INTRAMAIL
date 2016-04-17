<%@ Page Title="" Language="VB" MasterPageFile="~/UserMaster.master" AutoEventWireup="false" CodeFile="Trash.aspx.vb" Inherits="Trash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 750px;
            font-size: large;
            color: #003366;
            background-color: #CCCCCC;
        }
        .style15
        {
            width: 100%;
        }
        .style16
        {
            width: 401px;
        }
        .style18
        {
        }
        .style20
        {
            color: #666666;
            font-family: Calibri;
            font-size: medium;
            background-color: #C0C0C0;
        }
        .style21
        {
            width: 143px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style14">
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" BorderColor="#003300" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style15">
                        <tr>
                            <td colspan="3" style="background-color: #00BFBF">
                                Trash<asp:Label ID="lblCount" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style16" colspan="2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style18" align="center" colspan="2">
                                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" 
                                    style="font-size: large"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style16" colspan="2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style16" colspan="2" align="center">
                                <asp:GridView ID="gvTrash" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                                    OnRowCommand="gvTrash_RowCommand" 
                                    style="margin-left: 0px; color: #006699; font-size: medium;">
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
                                        <asp:TemplateField HeaderText="View">
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
                            <td class="style16" colspan="2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style21" align="center">
                                <asp:Button ID="btnRestore" runat="server" CssClass="style20" Text="Restore" 
                                    Visible="False"  />
                            </td>
                            <td align="left">
                                <asp:Button ID="btnDelete" runat="server" CssClass="style20" Text="Delete" 
                                    Visible="False" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style16" colspan="2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                 <asp:Panel ID="Panel2" runat="server" BorderColor="#003300" BorderStyle="Solid" 
                    BorderWidth="2px">
                     <table class="style15">
                         <tr>
                             <td align="right">
                                 <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/Login.aspx">Log In</asp:HyperLink>
                                 <asp:Label ID="lblUser" runat="server" ForeColor="#FF0066" 
                                     style="color: #003366"></asp:Label>
                             </td>
                             <td>
                                 <asp:Button ID="btnLogout" runat="server" CssClass="style20" Text="Log Out"  />
                             </td>
                         </tr>
                     </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    
</asp:Content>

