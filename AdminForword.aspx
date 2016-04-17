<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMaster.master" AutoEventWireup="false" CodeFile="AdminForword.aspx.vb" Inherits="AdminForword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    
        .style4
        {
            width: 750px;
            font-size: x-large; 
            color: #00CC99; 
            background-color: #CCFFFF;
        }
    
        .style5
        {
            width: 100%;
        }
        .style6
        {
            width: 220px;
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
                            <td colspan="2" style="color: #009999; background-color: #CCFFCC">
                                Forword Message</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                To</td>
                            <td>
                                <asp:TextBox ID="txtUserto" runat="server" CssClass="style7" Height="29px" 
                                    Width="170px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Subject</td>
                            <td>
                                <asp:TextBox ID="txtSubject" runat="server" CssClass="style7" Height="30px" 
                                    style="margin-left: 0px" Width="170px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Message</td>
                            <td>
                                <asp:TextBox ID="txtMessage" runat="server" CssClass="style7" 
                                    style="margin-left: 0px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Attach File</td>
                            <td>
                                <asp:HyperLink ID="hlAttachment" runat="server" 
                                    style="color: #003366; font-size: large">[hlAttachment]</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" >
                                <asp:Button ID="btnSend" runat="server" BackColor="#CCCCCC" Text="Send" />
                            </td>
                            <td>
                                <asp:Button ID="btnCancle" runat="server" BackColor="#CCCCCC"  Text="Cancle" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
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
                            <td style="font-size: large" align="right">
                                <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/AdminLogin.aspx" 
                                    style="font-family: Calibri">Log In</asp:HyperLink>
                                <asp:Label ID="lblUser" runat="server" ForeColor="#FF0066" 
                                    style="color: #009999; font-family: Calibri;"></asp:Label>
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

