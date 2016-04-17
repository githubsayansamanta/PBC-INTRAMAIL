<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width:950px;
        }
        .style17
        {
            height: 150px;
            font-family: "Calisto MT";
            font-size: xx-large;
            }
        .style24
        {
            color: #006699;
            background-color: #D9E6E6;
            width: 900px;
            
        }
        .style25
        {
            width: 900px;
            font-family: Calibri;
            font-size: large;
            color: #003366;
        }
        .div13
        {
            margin-top:20px;
            margin-top:20px;
            margin-left:20px;
            margin-right:20px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="div2">
    
        <table class="style1">
            <tr>
                <td align="center"class="style17"           
                   style="font-size: 60px; color: #00FFCC; font-family: 'Colonna MT'; background-color: #006666">
                    Welcome to PBC Intramail</td>
            </tr>
            <tr>
                <td class="style24">
                    <div class="div13">
                    <asp:Panel ID="Panel1" runat="server" BorderColor="#999999" BorderStyle="Solid" 
                        BorderWidth="2px">
                        <table class="style25" cellspacing="5">
                            <tr>
                                <td colspan="3" 
                                    
                                    style="font-family: Calibri; font-size: x-large; font-weight: 700; background-color: #C0C0C0;">
                                    User Login</td>
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
                                    </td>
                                <td>
                                    </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="style11">Username</span></td>
                                <td>
                                    <asp:TextBox ID="txtUsername" runat="server" Height="30px" Width="150px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtUsername" CssClass="style20" 
                                        ErrorMessage="Please insert your username." ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="style11">Password</span></td>
                                <td>
                                    <asp:TextBox ID="txtPassword" runat="server" Height="30px" TextMode="Password" 
                                        Width="150px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                        ControlToValidate="txtPassword" CssClass="style20" 
                                        ErrorMessage="Please insert your password." ForeColor="Red"></asp:RequiredFieldValidator>
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
                                    Forgot password...? click
                                    <asp:HyperLink ID="hlCancle" runat="server" 
                                        NavigateUrl="~/PasswordRecovery.aspx">Here</asp:HyperLink>
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
                                    <asp:Label ID="lblMessage" runat="server" CssClass="style12" ForeColor="Red"></asp:Label>
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
                                    <asp:Button ID="btnLogin" runat="server" CssClass="style13" Height="30px" 
                                        style="font-size: medium; font-family: Calibri; background-color: #CCCCCC;" 
                                        Text="Log In" Width="60px" />
                                </td>
                                <td align="center">
                                    Don&#39;t have an account register
                                    <asp:HyperLink ID="hlCancle0" runat="server" NavigateUrl="~/Registration.aspx">Here</asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    </div>
                    <br />
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
