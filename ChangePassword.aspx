<%@ Page Title="" Language="VB" MasterPageFile="~/ProfileMaster.master" AutoEventWireup="false" CodeFile="ChangePassword.aspx.vb" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 750px;
            color: #009999;
            background-color: #CCCCCC;
            font-size: large;
        }
        .style8
        {
            width: 750px;
        }
        .style9
        {
            width: 750px;;
            background-color: #CCCCCC;
        }
        .style10
        {
            width: 366px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style7">
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" BorderColor="#669999" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style8" cellspacing="5">
                        <tr>
                            <td colspan="3" 
                                style="font-size: x-large; font-weight: 700; background-color: #A6C4C4">Change 
                                Password</td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Old Password</td>
                            <td>
                                <asp:TextBox ID="txtOld" runat="server" ForeColor="#0099FF" Height="30px" 
                                    style="font-family: Calibri; font-size: medium" TextMode="Password" 
                                    Width="150px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtOld" ErrorMessage="Enter old password." ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                New Passsword</td>
                            <td>
                                <asp:TextBox ID="txtNew" runat="server" ForeColor="#0099FF" Height="30px" 
                                    style="font-family: Calibri; font-size: medium" TextMode="Password" 
                                    Width="150px"></asp:TextBox>
                            </td>
                           <td></td>
                        </tr>
                        <tr>
                            <td>
                                Confirm Password</td>
                            <td>
                                <asp:TextBox ID="txtConfirm" runat="server" ForeColor="#0099FF" Height="30px" 
                                    style="font-family: Calibri; font-size: medium" TextMode="Password" 
                                    Width="150px"></asp:TextBox>
                            </td>
                            <td></td>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="lblMessage" runat="server" style="color: #FF0000"></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    <asp:Button ID="btnSubmit" runat="server" Height="30px" 
                                        style="color: #333333; background-color: #C0C0C0" Text="Submit" 
                                        Width="60px" />
                                </td>
                                <td>
                                </td>
                            </tr>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>     
                    </asp:Panel>
                <br />
                <asp:Panel ID="Panel2" runat="server" BorderColor="#669999" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style9">
                        <tr>
                            <td align="right" class="style10">
                                <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/Login.aspx" 
                                    style="font-size: medium">Log In</asp:HyperLink>
                                <asp:Label ID="lblUser" runat="server" ForeColor="#FF0066" 
                                    style="font-size: medium; color: #009999"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:Button ID="btnLogout" runat="server" Height="30px" 
                                    style="font-size: medium; font-family: Calibri; background-color: #C0C0C0;" 
                                    Text="Log  Out" Width="70px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                </td>
                </tr>
                </table>
           </asp:Content>

