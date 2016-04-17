<%@ Page Title="" Language="VB" MasterPageFile="~/UserMaster.master" AutoEventWireup="false" CodeFile="MessageDetails.aspx.vb" Inherits="Message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style73
        {
            width: 750px;
            color: #006666;
             font-size: x-large; 
             background-color: #FFEAFF;
        }
        .style74
        {
            width:750px;
        }
        .style75
        {
            color: #00CC99;
        }
        .style76
        {
            color: #666666;
            font-family: Calibri;
            font-size: medium;
            background-color: #CCCCCC;
        }
        .style77
        {
            width: 750px;
        }
        .style19
        {
            color: #666666;
            background-color: #CCCCCC;
        }
        .style78
        {
            width: 345px;
        }
    .style79
    {
        width: 107px;
    }
    .style80
    {
        width: 105px;
    }
    .style81
    {
        width: 80px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style73">
        <tr>
            <td >
                <asp:Panel ID="Panel2" runat="server" BorderColor="#006666" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style74">
                        <tr>
                            <td colspan="4" style="font-size: x-large; background-color: #FFCCFF">Message Details
                                </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                From</td>
                            <td colspan="2">
                                <asp:Label ID="lblFrom" runat="server" CssClass="style18" ForeColor="#66CCFF" 
                                    style="color: #00CC99; font-size: large;"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                Subject</td>
                            <td colspan="2">
                                <asp:Label ID="lblSubject" runat="server" CssClass="style18" 
                                    ForeColor="#66CCFF" style="color: #00CC99; font-size: large;"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                Message</td>
                            <td colspan="2">
                                <asp:Label ID="lblBody" runat="server" CssClass="style18" ForeColor="#66CCFF" 
                                    style="color: #00CC99; font-size: large;"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                Date and Time</td>
                            <td colspan="2">
                                <asp:Label ID="lblDate" runat="server" CssClass="style18" ForeColor="#66CCFF" 
                                    style="color: #00CC99; font-size: large;"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                Attach File</td>
                            <td colspan="2">
                                <asp:HyperLink ID="hlAttachment" runat="server" CssClass="style75" 
                                    style="font-size: large; ">[hlAttachment]</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                            <td colspan="2">
                                <asp:Label ID="lblBlock" runat="server" 
                                    style="color: #FF0000; font-size: large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Button ID="btnReply" runat="server" CssClass="style6" 
                                    style="font-family: Calibri; color: #666666; font-size: medium; background-color: #CCCCCC;" 
                                    Text="Reply" />
                            </td>
                            <td align="center" class="style80">
                                <asp:Button ID="btnDelete" runat="server" CssClass="style19" 
                                    style="color: #666666; font-family: Calibri; font-size: medium; background-color: #CCCCCC" 
                                    Text="Delete" />
                            </td>
                            <td align="left" class="style81">
                                <asp:Button ID="btnReport" runat="server" CssClass="style76" Text="Report" />
                            </td>
                            <td align="left">
                                <asp:Button ID="btnBlock" runat="server" CssClass="style19" 
                                    style="color: #666666; font-family: Calibri; font-size: medium; background-color: #CCCCCC; margin-left: 0px;" 
                                    Text="Block " />
                                <asp:Button ID="btnUnblock" runat="server" CssClass="style19" 
                                    style="color: #666666; font-family: Calibri; font-size: medium; background-color: #CCCCCC" 
                                    Text="Unlock " Visible="False" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="Panel1" runat="server" BorderColor="#006666" BorderStyle="Solid" 
                    BorderWidth="2px" Visible="False">
                    <table class="style77">
                        <tr>
                            <td colspan="2" style="font-size: x-large; background-color: #FFCCFF">
                                Reply Message</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                To</td>
                            <td>
                                <asp:TextBox ID="txtUserto" runat="server" CssClass="style22" Height="29px" 
                                    ReadOnly="True" Width="170px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;Subject</td>
                            <td>
                                <asp:TextBox ID="txtSubject" runat="server" CssClass="style22" Height="30px" 
                                    style="margin-left: 0px" Width="170px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Message</td>
                            <td>
                                <asp:TextBox ID="txtMessage" runat="server" CssClass="style22" 
                                    style="margin-left: 0px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Attach File</td>
                            <td>
                                <asp:FileUpload ID="fuAttachment" runat="server" CssClass="style22" 
                                    Height="22px" Width="217px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="btnSend" runat="server" CssClass="style19" Text="Send" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel3" runat="server" BorderColor="#006666" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style77">
                        <tr>
                            <td align="right" class="style78">
                                <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/Login.aspx" 
                                    style="font-family: Calibri; font-size: large;">Log In</asp:HyperLink>
                                <asp:Label ID="lblUser" runat="server" 
                                    style="font-family: Calibri; color: #006699; font-size: large;"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btnLogout" runat="server" 
                                    style="font-size: medium; font-family: Calibri; color: #666666; background-color: #CCCCCC;" 
                                    Text="Log  Out" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    
</asp:Content>

