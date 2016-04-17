<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMaster.master" AutoEventWireup="false" CodeFile="AdminChange.aspx.vb" Inherits="AdminChanget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style4
        {
            width: 750px;
            font-size: large; 
            color: #006699; 
            background-color: #D4D4D4;
        }
       
        .style5
        {
            width: 100%;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td >              
                   <asp:Panel ID="Panel1" runat="server" BorderColor="#669999" BorderStyle="Solid" 
                    BorderWidth="2px">
                       <table class="style5" cellspacing="5">
                           <tr>
                               <td colspan="3" style="font-size: x-large; background-color: #97E6E6">
                                   Change Password</td>
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
                                   Old Password</td>
                               <td>
                                   <asp:TextBox ID="txtOld" runat="server" ForeColor="#0099FF" Height="30px" 
                                       style="font-family: Calibri; font-size: medium" TextMode="Password" 
                                       Width="150px"></asp:TextBox>
                               </td>
                               <td>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                       ControlToValidate="txtOld" ErrorMessage="Please insert old password." 
                                       ForeColor="Red"></asp:RequiredFieldValidator>
                               </td>
                           </tr>
                           <tr>
                               <td>
                                   New Password</td>
                               <td>
                                   <asp:TextBox ID="txtNew" runat="server" ForeColor="#0099FF" Height="30px" 
                                       style="font-family: Calibri; font-size: medium" TextMode="Password" 
                                       Width="150px"></asp:TextBox>
                               </td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td>
                                   Confirm Passsword</td>
                               <td>
                                   <asp:TextBox ID="txtConfirm" runat="server" ForeColor="#0099FF" Height="30px" 
                                       style="font-family: Calibri; font-size: medium" TextMode="Password" 
                                       Width="150px"></asp:TextBox>
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
                                   <asp:Label ID="lblMessage" runat="server" style="color: #FF0000"></asp:Label>
                               </td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td>
                                   &nbsp;</td>
                               <td align="center">
                                   <asp:Button ID="btnSubmit" runat="server" 
                                       style="color: #333333; background-color: #C0C0C0; font-size: medium; font-family: Calibri;" 
                                       Text="Submit" />
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
                       </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel2" runat="server" BorderColor="#669999" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style5">
                        <tr>
                            <td align="right">
                                <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/AdminLogin.aspx" 
                 style="font-size: large">Log In</asp:HyperLink>
                                <asp:Label ID="lblUser" runat="server" ></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btnLogout" runat="server" BackColor="#CCCCCC" 
                                    ForeColor="#333333" Text="Log Out" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
          
            </td>
        </tr>
    </table>
</asp:Content>

