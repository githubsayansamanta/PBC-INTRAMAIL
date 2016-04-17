<%@ Page Title="" Language="VB" MasterPageFile="~/UserMaster.master" AutoEventWireup="false" CodeFile="Draft.aspx.vb" Inherits="Draft" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 750px;
            color: #000066;
            background-color: #CCCCCC;
        }
        .style16
        {
            width: 100%;
            font-size: large;
        }
        .style17
        {
            width: 480px;
        }
        .style22
        {
            width: 221px;
        }
        .style23
        {
            width: 232px;
        }
        .style24
        {
            width: 100%;
        }
        .style14
        {
            color: #666666;
            background-color: #C0C0C0;
        }
        .style25
        {
            font-family: Calibri;
            font-size: medium;
        }
        .style26
        {
            color: #666666;
            font-family: Calibri;
            font-size: medium;
            background-color: #C0C0C0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style15">
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" BorderColor="#006699" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style16" cellspacing="5">
                        <tr>
                            <td colspan="3" style="background-color: #6ADAFF">
                                Draft<asp:Label ID="lblCount" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style17" colspan="2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                            <td class="style23">
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
                            <td class="style17" colspan="2">
                                <asp:GridView ID="gvDraft" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                                    OnRowCommand="gvDraft_RowCommand" 
                                    style="margin-left: 0px; font-size: medium; color: #006699;">
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
                                        <asp:BoundField DataField="UserTo" HeaderText="To" />
                                        <asp:BoundField DataField="Subject" HeaderText="Subject" />
                                        <asp:BoundField DataField="DateTime" HeaderText="Date &amp; Time" />
                                        <asp:TemplateField HeaderText="Mark">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbSelect" runat="server" 
                                                    CommandArgument='<%#Eval("DraftId")%>' CommandName="Select" Text="Select"></asp:LinkButton>
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
                            <td align="center" class="style22">
                                <asp:Button ID="btnView" runat="server" CssClass="style14" Text="View" 
                                    Visible="False" Width="65px" />
                            </td>
                            <td align="center" class="style23">
                                <asp:Button ID="btnDelete" runat="server" CssClass="style26" Text="Delete" 
                                    Visible="False" Width="65px" />
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
                    </table>
                </asp:Panel>
                <br />
<asp:Panel ID="Panel2" runat="server" BorderColor="#006699" BorderStyle="Solid" 
                    BorderWidth="2px">
    <table class="style24">
        <tr>
            <td align="right">
                <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/Login.aspx">Log In</asp:HyperLink>
                <asp:Label ID="lblUser" runat="server" ForeColor="#FF0066" 
                    style="color: #000066"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnLogout" runat="server" CssClass="style25" 
                    style="color: #666666; background-color: #C0C0C0;" Text="Log  Out" 
                    Width="70px" />
            </td>
        </tr>
    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    
</asp:Content>

