<%@ Page Title="" Language="VB" MasterPageFile="~/UserMaster.master" AutoEventWireup="false" CodeFile="Compose.aspx.vb" Inherits="Compose" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style75
        {
            width: 750px;
            font-size: large;
            background-color: #CCFFFF;
            color: #006666;
        }
        .style76
        {
            width: 100%;
        font-size: x-large;
    }
        .style77
        {
            font-family: Calibri;
            font-size: medium;
            color: #666666;
            background-color: #CCCCCC;
        }
        .style78
        {
            width: 350px;
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style75">
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" BorderColor="#339966" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style76" cellspacing="5">
                        <tr>
                            <td colspan="3" style="font-size: x-large; background-color: #33CCCC">
                                Compose</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td colspan="2">
                                <asp:Label ID="lblBlock" runat="server" 
                                    style="color: #FF0000; font-size: large"></asp:Label>
                            </td>
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
                                <asp:TextBox ID="txtUserto" runat="server" CssClass="style71" Height="29px" 
                                    Width="170px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Subject</td>
                            <td colspan="2">
                                <asp:TextBox ID="txtSubject" runat="server" CssClass="style71" Height="30px" 
                                    style="margin-left: 0px" Width="170px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Message</td>
                            <td colspan="2">
                                <asp:TextBox ID="txtMessage" runat="server" CssClass="style71" 
                                    style="margin-left: 0px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Attach File</td>
                            <td colspan="2">
                                <asp:FileUpload ID="fuAttachment" runat="server" CssClass="style70" 
                                    Height="22px" Width="217px" />
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
                                <asp:Button ID="btnSend" runat="server" CssClass="style69" 
                                    style="font-family: Calibri; font-size: medium; color: #666666; background-color: #CCCCCC" 
                                    Text="Send" />
                            </td>
                            <td align="center">
                                <asp:Button ID="btnSave" runat="server" CssClass="style69" 
                                    style="font-family: Calibri; font-size: medium; color: #666666; background-color: #CCCCCC" 
                                    Text="Save" />
                            </td>
                            <td align="left">
                                <asp:Button ID="btnCancle" runat="server" CssClass="style69" 
                                    style="font-family: Calibri; font-size: medium; color: #666666; background-color: #CCCCCC" 
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
                <asp:Panel ID="Panel2" runat="server" BorderColor="#339966" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style76">
                        <tr>
                            <td align="right" class="style78">
                                <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/Login.aspx" 
                                    style="font-family: Calibri">Log In</asp:HyperLink>
                                <asp:Label ID="lblUser" runat="server" ForeColor="#FF0066" 
                                    style="color: #006666; font-family: Calibri"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btnLogout" runat="server" CssClass="style77" Text="Log  Out" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    
</asp:Content>

