<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMaster.master" AutoEventWireup="false" CodeFile="AdminDraftMessage.aspx.vb" Inherits="AdminDraftMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .style4
        {
            width: 750px;
            color: #006666; 
            font-size: x-large; 
            background-color: #FFD5FF;
        }
        
        .style5
        {
            width: 100%;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style4">
        <tr>
            <td >
                <asp:Panel ID="Panel1" runat="server" BorderColor="#006666" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style5" cellspacing="5">
                        <tr>
                            <td colspan="3" style="background-color: #33CCCC">
                                Save Message</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                To</td>
                            <td colspan="2">
                                <asp:TextBox ID="txtUserto" runat="server" Height="29px" Width="170px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Subject
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtSubject" runat="server" Height="30px" 
                                    style="margin-left: 0px" Width="170px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Message</td>
                            <td colspan="2">
                                <asp:TextBox ID="txtMessage" runat="server" style="margin-left: 0px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Attach File</td>
                            <td colspan="2">
                                <asp:HyperLink ID="hlAttachment" runat="server" 
                                    style="color: #009999; font-size: large">[hlAttachment]</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Button ID="btnSend" runat="server" BackColor="#CCCCCC" CssClass="style6" 
                                    Height="30px" Text="Send" Width="63px" />
                            </td>
                            <td align="center">
                                <asp:Button ID="btnDelete" runat="server" BackColor="#CCCCCC" CssClass="style6" 
                                    Text="Delete" />
                            </td>
                            <td>
                                <asp:Button ID="btnCancle" runat="server" BackColor="#CCCCCC" CssClass="style6" 
                                    Text="Cancle" />
                            </td>
                        </tr>
                        <tr>
                            <td>
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
                                <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/AdminLogin.aspx" 
                                    style="font-family: Calibri">Log In</asp:HyperLink>
                                <asp:Label ID="lblUser" runat="server" ForeColor="#FF0066" 
                                    style="color: #006666; font-family: Calibri;"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btnLogout" runat="server" BackColor="#CCCCCC" 
                                    ForeColor="#0066FF" 
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

