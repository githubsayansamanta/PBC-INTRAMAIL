<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminLogin.aspx.vb" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="Stylesheet" type="text/css" />
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
        .style25
        {
            width:900px;
            background-color: #E9E9E9;
            }
        .style24
        {
            color: #006699;
            background-color: #E9E9E9;
            width: 900px;
            
        }
         .style25
        {
            width: 900px;
            font-family: Calibri;
            font-size: large;
            color: #666666;
        }
        .style20
        {
            font-family: Calibri;
            font-size: large;
        }
        .style13
        {
            color: #666666;
            background-color: #CCCCCC;
        }
        .style12
        {
            font-family: Calibri;
            font-size: large;
        }
        .div14
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
                <td  class="style17"                                                                               
                    
                    
                    style="font-size: 60px; color: #66FFFF; font-family: 'Colonna MT'; background-color: #006699" 
                    align="center">
                    Welcome to PBC Intramail</td>
            </tr>
            <tr>
                <td class="style24">
                    <div class="div14">
                    <asp:Panel ID="Panel1" runat="server" BorderColor="#999999" BorderStyle="Solid" 
                        BorderWidth="2px">
                        <table class="style25" cellspacing="5">
                            <tr>
                                <td colspan="3" 
                                    
                                   
                            </tr style="font-weight: 700; font-size: x-large; background-color: #CBDCDC">
                                    Administrator Login<tr>
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
                                    Username</td>
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
                                    Password</td>
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
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="lblMessage" runat="server" CssClass="style12" ForeColor="Red"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="btnLogin" runat="server" CssClass="style13" Height="30px" 
                                        style="font-size: medium; font-family: Calibri; background-color: #CCCCCC;" 
                                        Text="Log In" Width="60px" />
                                </td>
                                <td align="center">
                                    &nbsp;</td>
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
