<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PasswordRecovery.aspx.vb" Inherits="Password" %>

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
        .style2
        {
            height: 150px;
            font-family: "Calisto MT";
            font-size: xx-large;
        }
        
        .style4
        {
            background-color: #D5EAEA;
            width:900px;
        }
        .style5
        {
            width: 900px;
            font-family: Calibri;
            font-size: large;
            color: #009999;
        }
        .div15
        {
            margin-top:20px;
            margin-left:20px;
            margin-right:20px;
        }
        .div16
        {
            margin-bottom:20px;
            margin-left:20px;
            margin-right:20px;
        }
        .style6
        {
            width: 900px;
            font-family: Calibri;
            font-size: large;
            color: #009999;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <div class="div3">
        <table class="style1">
            <tr>
                <td align="center" bgcolor="#3366CC" class="style2"                                                        
                    style="font-size: 70px; color: #FFFFFF; font-family: 'Colonna MT'; background-color: #669999; ">
                    Password Recovery</td>
            </tr>
            <tr>
                <td bgcolor="#999999" class="style4">
                <div class="div15">
                        <asp:Panel ID="PanelQuestions" runat="server" BorderColor="#009999" 
                         BorderStyle="Solid" BorderWidth="2px">
                         <table class="style5" cellspacing="5">
                             <tr>
                                 <td colspan="3" 
                                     style="font-family: Calibri; font-size: x-large; color: #006666; font-weight: 700; background-color: #CCCCCC">
                                     Security Question</td>
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
                                     I. What is your hoby ?</td>
                                 <td>
                                     <asp:TextBox ID="txtHoby" runat="server" CssClass="style11" Height="30px" 
                                         Width="150px"></asp:TextBox>
                                 </td>
                                 <td>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                         ControlToValidate="txtHoby" CssClass="style20" 
                                         ErrorMessage="Please insert your hoby." ForeColor="Red"></asp:RequiredFieldValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     II. What is your favorite game ?</td>
                                 <td>
                                     <asp:TextBox ID="txtGame" runat="server" CssClass="style11" Height="30px" 
                                         Width="150px"></asp:TextBox>
                                 </td>
                                 <td>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                         ControlToValidate="txtGame" CssClass="style20" 
                                         ErrorMessage="Please insert your favorite game." ForeColor="Red"></asp:RequiredFieldValidator>
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
                                     <asp:Label ID="lblError" runat="server" CssClass="style12" ForeColor="Red"></asp:Label>
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
                                 <td align="center">
                                     <asp:Button ID="btnOk" runat="server" BackColor="#CCCCCC" CssClass="style13" 
                                         ForeColor="#0099FF" Height="30px" 
                                         style="font-size: medium; color: #666666; font-family: Calibri;" Text="OK" 
                                         Width="70px" />
                                 </td>
                                 <td></td>
                                 <td align="center">
                                     Back to&nbsp;<asp:HyperLink ID="hlCancle" runat="server" NavigateUrl="~/Login.aspx">previous</asp:HyperLink>
                                     &nbsp;page</td>
                             </tr>
                             <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                             </tr>
                         </table>

                     </asp:Panel>
                     </div>
                     <div class="div16">
 <asp:Panel ID="PanelPassword" runat="server" Visible="False" BorderColor="#009999" BorderStyle="Solid" 
                             BorderWidth="2px">
     <table class="style6" cellspacing="5">
         <tr>
             <td colspan="3" 
                 style="font-weight: 700; font-size: x-large; color: #006666; background-color: #CCCCCC">
                 Create Password</td>
         </tr>
         <tr>
             <td></td>
             <td></td>
             <td></td>
         </tr>
         <tr>
             <td>
                 Enter Username</td>
             <td>
                 <asp:TextBox ID="txtUser" runat="server" Height="30px" Width="150px"></asp:TextBox>
             </td>
             <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ControlToValidate="txtUser" CssClass="style20" 
                     ErrorMessage="Please insert your username." ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td>
                 <span class="style23">New Password</span></td>
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
                 <span class="style24">Confirm Password</span></td>
             <td>
                 <asp:TextBox ID="txtConfirm" runat="server" CssClass="style11" Height="30px" 
                     TextMode="Password" Width="150px"></asp:TextBox>
             </td>
             <td>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" 
                     ControlToCompare="txtPassword" ControlToValidate="txtConfirm" CssClass="style20" 
                     ErrorMessage="Check your password" ForeColor="Red"></asp:CompareValidator>
             </td>
         </tr>
         <tr>
             <td></td>
             <td>
                 <asp:Label ID="lblMessage" runat="server" CssClass="style12" ForeColor="Red"></asp:Label>
             </td>
             <td></td>
         </tr>
         <tr>
             <td align="center">
                 <asp:Button ID="btnSubmit" runat="server" BackColor="#CCCCCC" 
                     CssClass="style13" ForeColor="#0099FF" Height="30px" 
                     style="font-size: medium; font-family: Calibri; color: #666666;" Text="Submit" 
                     Width="70px" />
             </td>
             <td></td>
             <td align="center">
                 Back to
                 <asp:HyperLink ID="hlBack" runat="server" NavigateUrl="~/Login.aspx">previous</asp:HyperLink>
                 &nbsp;page</td>
         </tr>
         <tr>
             <td></td>
             <td></td>
             <td></td>
         </tr>
     </table>
      </asp:Panel>
                     </div>
                </td>
            </tr>
            </table>
        </div>
    </form>
</body>
</html>
