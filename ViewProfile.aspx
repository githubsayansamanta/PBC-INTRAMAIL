<%@ Page Title="" Language="VB" MasterPageFile="~/ProfileMaster.master" AutoEventWireup="false" CodeFile="ViewProfile.aspx.vb" Inherits="ViewProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .style4
        {
            width: 750px;
            font-size: large; 
            color: #003366; 
            background-color: #DFDFDF;
        }
        
        .style5
        {
            width: 750px;
        }
        .style7
        {
            width: 196px;
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style4">
        <tr>
            <td >
                <asp:Panel ID="Panel1" runat="server" BorderColor="#0066FF" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style5" cellspacing="5">
                        <tr>
                            <td colspan="3" 
                                style="font-size: x-large; font-weight: 700; background-color: #66CCFF">
                                User Profile</td>
                        </tr>
                        <tr>
                            <td class="style7" align="center">
                                <asp:Image ID="Image1" runat="server" BorderColor="#669999" BorderStyle="Ridge" 
                                    BorderWidth="8px" Height="140px" Width="120px" />
                            </td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                <asp:Label ID="lblName" runat="server" CssClass="style10" 
                                    style="color: #0099FF"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btnEdit" runat="server" BackColor="Silver" CssClass="style11" 
                                    ForeColor="#333333" Text="Edit Profile" />
                            </td>
                            <td>
                                <asp:Button ID="btnLogindetails" runat="server" BackColor="Silver" 
                                    CssClass="style11" ForeColor="#333333" Text="Login Details" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                               </td>
                            <td colspan="2">
                                </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Address</td>
                            <td colspan="2">
                                <asp:Label ID="lblAddress" runat="server" CssClass="style10" 
                                    style="color: #0099FF"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Date Of Birth</td>
                            <td colspan="2">
                                <asp:Label ID="lblDate" runat="server" CssClass="style10" 
                                    style="color: #0099FF"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Stream
                            </td>
                            <td colspan="2">
                                <asp:Label ID="lblStream" runat="server" CssClass="style10" 
                                    style="color: #0099FF"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Subject</td>
                            <td colspan="2">
                                <asp:Label ID="lblSubject" runat="server" CssClass="style10" 
                                    style="color: #0099FF"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Year Of Admission</td>
                            <td colspan="2">
                                <asp:Label ID="lblYear" runat="server" CssClass="style10" 
                                    style="color: #0099FF"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Mobile No.</td>
                            <td colspan="2">
                                <asp:Label ID="lblMobile" runat="server" CssClass="style10" 
                                    style="color: #0099FF"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Gender</td>
                            <td colspan="2">
                                <asp:Label ID="lblGender" runat="server" CssClass="style10" 
                                    style="color: #0099FF"></asp:Label>
                            </td>
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
                <asp:Panel ID="Panel2" runat="server" BorderColor="#0066FF" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style5">
                        <tr>
                            <td align="right">
                                <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/Login.aspx" 
                                    style="font-family: Calibri; font-size: large;">Log In</asp:HyperLink>
                                <asp:Label ID="lblUser" runat="server" ForeColor="#FF0066" 
                                    style="color: #003366; font-family: Calibri; font-size: large;"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btnLogout" runat="server" BackColor="Silver" 
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

