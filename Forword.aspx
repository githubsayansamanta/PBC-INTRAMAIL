<%@ Page Title="" Language="VB" MasterPageFile="~/UserMaster.master" AutoEventWireup="false" CodeFile="Forword.aspx.vb" Inherits="Forword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .style4
        {
            width: 750px;
            color: #006699; 
            font-size: large; 
            background-color: #B3CCCC;
        }
        
        .style5
        {
            width: 100%;
        font-size: x-large;
    }
        .style6
        {
            width: 255px;
        }
        .style8
        {
            width: 174px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style4">
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" BorderColor="#006666" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style5" cellspacing="5">
                        <tr>
                            <td colspan="3" 
                                style="font-size: x-large; background-color: #33CCCC; color: #006699;">
                                Forword Message</td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style8">
                                To
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtUserto" runat="server" CssClass="style10" Height="29px" 
                                    Width="170px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                Subject</td>
                            <td colspan="2">
                                <asp:TextBox ID="txtSubject" runat="server" CssClass="style10" Height="30px" 
                                    ReadOnly="True" style="margin-left: 0px" Width="170px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                Message
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtMessage" runat="server" CssClass="style10" ReadOnly="True" 
                                    style="margin-left: 0px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                Attach File</td>
                            <td colspan="2">
                                <asp:HyperLink ID="hlAttachment" runat="server" 
                                    style="font-size: large; color: #009999; ">[hlAttachment]</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style8">
                                <asp:Button ID="btnSend" runat="server" BackColor="#CCCCCC" CssClass="style9" 
                                    ForeColor="#333333" Text="Send" />
                            </td>
                            <td align="center" class="style6">
                                <asp:Button ID="btnCancle" runat="server" BackColor="#CCCCCC" CssClass="style9" 
                                    ForeColor="#333333" Text="Cancle" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel2" runat="server" BorderColor="#006666" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style5">
                        <tr>
                            <td align="right" style="font-size: large">
                                <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/Login.aspx">Log In</asp:HyperLink>
                                <asp:Label ID="lblUser" runat="server" style="color: #009999"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btnLogout" runat="server" BackColor="#CCCCCC" 
                                    ForeColor="#333333" style="font-size: medium; font-family: Calibri;" 
                                    Text="Log  Out" />
                            </td>
                        </tr>
                    </table>
                    </asp:Panel>
            </td>
        </tr>
    </table>
    
</asp:Content>

