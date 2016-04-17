<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMaster.master" AutoEventWireup="false" CodeFile="AdminSentDetails.aspx.vb" Inherits="AdminSentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    
        .style4
        {
            width: 750px;
            color: #006600; 
            font-size: x-large; 
            background-color: #CCDDDD;
        }
    
        .style5
        {
            width: 100%;
        }
    
        .style6
        {
            font-size: large;
            color: #006666;
        }
        .style7
        {
            width: 200px;
        }
        .style8
        {
            width: 222px;
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
                            <td colspan="3" style="color: #006666; background-color: #99CCFF">
                                Send Details</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                To</td>
                            <td colspan="2">
                                <asp:Label ID="lblTo" runat="server" CssClass="style17" ForeColor="Maroon" 
                                    style="font-size: large; color: #006666"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Subject</td>
                            <td colspan="2">
                                <asp:Label ID="lblSubject" runat="server" CssClass="style17" ForeColor="Maroon" 
                                    style="font-size: large; color: #006666"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Message</td>
                            <td colspan="2">
                                <asp:Label ID="lblBody" runat="server" CssClass="style17" ForeColor="Maroon" 
                                    style="font-size: large; color: #006666"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Date and Time</td>
                            <td colspan="2">
                                <asp:Label ID="lblDate" runat="server" CssClass="style17" ForeColor="Maroon" 
                                    style="font-size: large; color: #006666"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Attach File</td>
                            <td colspan="2">
                                <asp:HyperLink ID="hlAttachment" runat="server" CssClass="style6">[hlAttachment]</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style7">
                                <asp:Button ID="btnForword" runat="server" BackColor="#CCCCCC" 
                                    ForeColor="#333333" style="font-size: medium; font-family: Calibri;" 
                                    Text="Forword" />
                            </td>
                            <td align="center" class="style8">
                                <asp:Button ID="btnDelete" runat="server" BackColor="#CCCCCC" 
                                    ForeColor="#333333" style="font-size: medium; font-family: Calibri;" 
                                    Text="Delete" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
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
                                <asp:Label ID="lblUser" runat="server" 
                                    style="color: #006666; font-family: Calibri"></asp:Label>
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

