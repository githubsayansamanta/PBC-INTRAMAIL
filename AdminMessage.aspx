<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMaster.master" AutoEventWireup="false" CodeFile="AdminMessage.aspx.vb" Inherits="AdminMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style4
        {
            width: 750px;
            color: #0099FF; 
            font-size: x-large; 
            background-color: #FFFFCC;
        }

        .style5
        {
            width: 750px;
        }
        
        .style7
        {
            width: 190px;
        }
        .style8
        {
            width: 100%;
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
                            <td colspan="3" style="background-color: #CCFFFF">
                                Message Detaile</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                </td>
                            <td colspan="2">
                                </td>
                        </tr>
                        <tr>
                            <td class="style7" >To</td>
                            <td colspan="2">
                                <asp:Label ID="lblTo" runat="server" CssClass="style73" ForeColor="#0066FF" 
                                    style="font-size: large; color: #009933"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7" >
                                From</td>
                            <td>
                                <asp:Label ID="lblFrom" runat="server" CssClass="style73" ForeColor="#0066FF" 
                                    style="font-size: large; color: #009933"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7" >
                                &nbsp;Subject</td>
                            <td colspan="2">
                                <asp:Label ID="lblSubject" runat="server" CssClass="style73" 
                                    ForeColor="#0066FF" style="font-size: large; color: #009933"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7" >
                                Message</td>
                            <td colspan="2">
                                <asp:Label ID="lblBody" runat="server" CssClass="style73" ForeColor="#0066FF" 
                                    style="font-size: large; color: #009933"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Date and Time</td>
                            <td colspan="2">
                                <asp:Label ID="lblDate" runat="server" CssClass="style73" ForeColor="#0066FF" 
                                    style="font-size: large; color: #009933"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Attach File</td>
                            <td colspan="2">
                                <asp:HyperLink ID="hlAttachment" runat="server" CssClass="style73" 
                                    style="font-size: large; color: #009933">[hlAttachment]</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7" ></td>
                            <td colspan="2">
                                </td>
                        </tr>
                        <tr>
                            <td align="right" class="style7" >
                                <asp:Button ID="btnWarn" runat="server" BackColor="#CCCCCC" 
                                    style="font-family: Calibri; color: #333333; font-size: medium" 
                                    Text="Warn" />
                            </td>
                            <td align="center">
                                <asp:Button ID="btnDelete" runat="server" BackColor="#CCCCCC" CssClass="style19" 
                                    ForeColor="#333333" Text="Delete" />
                            </td>
                            <td>
                                <asp:Button ID="btnBlock" runat="server" BackColor="#CCCCCC" CssClass="style19" 
                                    ForeColor="#333333" Text="Block User" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style7" ></td>
                            <td colspan="2">
                               </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server" BorderColor="#009999" BorderStyle="Solid" 
                    BorderWidth="2px" Visible="False">
                    <table class="style8" cellspacing="5">
                        <tr>
                            <td colspan="2" style="background-color: #CCFFFF">
                                Warning Message</td>
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
                                Subject</td>
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
                                <asp:Button ID="btnSend" runat="server" BackColor="#CCCCCC" CssClass="style19" 
                                    ForeColor="#333333" Height="28px" Text="Send" Width="65px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel3" runat="server" BorderColor="#009999" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style8">
                        <tr>
                            <td align="right">
                                <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/AdminLogin.aspx" 
                                    style="font-family: Calibri; font-size: large;">Log In</asp:HyperLink>
                                <asp:Label ID="lblUser" runat="server" 
                                    style="font-family: Calibri; color: #006699; font-size: large;"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btnLogout" runat="server" BackColor="#CCCCCC" 
                                    ForeColor="#333333" Height="30px" 
                                    style="color: #333333; font-size: medium; font-family: Calibri;" 
                                    Text="Log  Out" Width="70px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    
</asp:Content>

