<%@ Page Title="" Language="VB" MasterPageFile="~/UserMaster.master" AutoEventWireup="false" CodeFile="SentDetails.aspx.vb" Inherits="SentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    
        .style4
        {
            width: 750px;
            color: #0099CC; 
            font-size: x-large; 
            background-color: #DFDFDF;
        }
    
    .style5
    {
        width: 100%;
    }
    .style6
    {
        font-size: large;
        color: #006699;
    }
    .style7
    {
        width: 234px;
    }
    .style17
    {
        font-size: large;
        color: #003366;
    }
    .style18
    {
        width: 353px;
    }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style4">
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" BorderColor="#0099FF" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style5" cellspacing="5">
                        <tr>
                            <td colspan="2" style="background-color: #AAE3FF">
                                Send Details</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="lblName" runat="server" CssClass="style17" ForeColor="#006699"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                To</td>
                            <td>
                                <asp:Label ID="lblTo" runat="server" CssClass="style15" ForeColor="#0099CC" 
                                    style="font-size: large; color: #006699"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Subject</td>
                            <td>
                                <asp:Label ID="lblSubject" runat="server" CssClass="style15" 
                                    ForeColor="#0099CC" style="font-size: large; color: #006699"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Message</td>
                            <td>
                                <asp:Label ID="lblBody" runat="server" CssClass="style15" ForeColor="#0099CC" 
                                    style="font-size: large; color: #006699"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Date and Time</td>
                            <td>
                                <asp:Label ID="lblDate" runat="server" CssClass="style15" ForeColor="#0099CC" 
                                    style="font-size: large; color: #006699"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Attachment File</td>
                            <td>
                                <asp:HyperLink ID="hlAttachment" runat="server" CssClass="style6">[hlAttachment]</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style7">
                                <asp:Button ID="btnForword" runat="server" BackColor="#CCCCCC" 
                                    ForeColor="#333333" Text="Forword" />
                            </td>
                            <td>
                                <asp:Button ID="btnDelete" runat="server" BackColor="#CCCCCC" 
                                    ForeColor="#333333" Text="Delete" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel2" runat="server" BorderColor="#0099FF" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style5">
                        <tr>
                            <td align="right" class="style18" style="font-size: large">
                                <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/Login.aspx">Log In</asp:HyperLink>
                                <asp:Label ID="lblUser" runat="server" style="color: #006699"></asp:Label>
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

