<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

        .style1
        {
            width: 950px;
        }
        .style6
        {
            width: 900px;
            background-color: #FFEAFF;
            font-family: Calibri;
            color: #006699;
            font-size: large;
        }
        .style24
        {
            height: 150px;
            font-family: "Colonna MT";
            color: #00FFFF;
            background-color: #006666;
        }
        .style26
        {
            width: 900px;
        }
        .style27
        {
            width: 426px;
        }
        .div11
        {
            margin-left:20px;
            margin-right:20px;
            margin-top:20px;
        }
        .div12
        {
            margin-left:20px;
            margin-right:20px;
            margin-bottom:20px;
        }
        .style28
        {
            width: 900px;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <div class="div1">
    <table class="style1">
        <tr>
            <td align="center" class="style24" style="font-size: 60px">
                Registration for 
                Intramail</td>
        </tr>
        <tr>
            <td class="style6">
                <div class="div11">
                <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="2px" 
                    BorderColor="#FF99FF">
                    <table class="style26" cellspacing="5">
                        <tr>
                            <td colspan="3" 
                                style="color: #003366; font-weight: 700; font-size: x-large; background-color: #FFCCFF">
                                Registration Form</td>
                        </tr>
                        <tr>
                            <td>
                                <span class="style7">Choose Username</span></td>
                            <td class="style27">
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="style11" 
                                    style="margin-left: 2px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtUsername" CssClass="style20" 
                                    ErrorMessage="Please insert your username." ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="style7">First Name</span></td>
                            <td class="style27">
                                <asp:TextBox ID="txtFirstname" runat="server" CssClass="style11"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtFirstname" CssClass="style20" 
                                    ErrorMessage="Please insert your first name." ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="style15">Last Name</span></td>
                            <td class="style27">
                                <span class="style8">
                                <asp:TextBox ID="txtLastname" runat="server" CssClass="style11" 
                                    style="margin-left: 0px"></asp:TextBox>
                                </span>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtLastname" CssClass="style20" 
                                    ErrorMessage="Please insert your last name." ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="style9">Address </span>
                            </td>
                            <td class="style27">
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="style11" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtAddress" CssClass="style20" 
                                    ErrorMessage="Please insert your adddress." ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="style9">Mobile No.</span></td>
                            <td class="style27">
                                <asp:TextBox ID="txtMobile" runat="server" CssClass="style11"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtMobile" CssClass="style20" 
                                    ErrorMessage="Please insert your mobile number." ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="style9">Date Of Birth</span></td>
                            <td class="style27">
                                <asp:DropDownList ID="drpDay" runat="server" CssClass="style11">
                                    <asp:ListItem Value="Day"></asp:ListItem>
                                    <asp:ListItem Value="1"></asp:ListItem>
                                    <asp:ListItem Value="2"></asp:ListItem>
                                    <asp:ListItem Value="3"></asp:ListItem>
                                    <asp:ListItem Value="4"></asp:ListItem>
                                    <asp:ListItem Value="5"></asp:ListItem>
                                    <asp:ListItem Value="6"></asp:ListItem>
                                    <asp:ListItem Value="7"></asp:ListItem>
                                    <asp:ListItem Value="8"></asp:ListItem>
                                    <asp:ListItem Value="9"></asp:ListItem>
                                    <asp:ListItem Value="10"></asp:ListItem>
                                    <asp:ListItem Value="11"></asp:ListItem>
                                    <asp:ListItem Value="12"></asp:ListItem>
                                    <asp:ListItem Value="13"></asp:ListItem>
                                    <asp:ListItem Value="14"></asp:ListItem>
                                    <asp:ListItem Value="15"></asp:ListItem>
                                    <asp:ListItem Value="16"></asp:ListItem>
                                    <asp:ListItem Value="17"></asp:ListItem>
                                    <asp:ListItem Value="18"></asp:ListItem>
                                    <asp:ListItem Value="19"></asp:ListItem>
                                    <asp:ListItem Value="20"></asp:ListItem>
                                    <asp:ListItem Value="21"></asp:ListItem>
                                    <asp:ListItem Value="22"></asp:ListItem>
                                    <asp:ListItem Value="23"></asp:ListItem>
                                    <asp:ListItem Value="24"></asp:ListItem>
                                    <asp:ListItem Value="25"></asp:ListItem>
                                    <asp:ListItem Value="26"></asp:ListItem>
                                    <asp:ListItem Value="27"></asp:ListItem>
                                    <asp:ListItem Value="28"></asp:ListItem>
                                    <asp:ListItem Value="29"></asp:ListItem>
                                    <asp:ListItem Value="30"></asp:ListItem>
                                    <asp:ListItem Value="31"></asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="drpMonth" runat="server" CssClass="style11">
                                    <asp:ListItem Value="Month"></asp:ListItem>
                                    <asp:ListItem Value="JAN"></asp:ListItem>
                                    <asp:ListItem Value="FEB"></asp:ListItem>
                                    <asp:ListItem Value="MAR"></asp:ListItem>
                                    <asp:ListItem Value="APR"></asp:ListItem>
                                    <asp:ListItem Value="MAY"></asp:ListItem>
                                    <asp:ListItem Value="JUN"></asp:ListItem>
                                    <asp:ListItem Value="JUL"></asp:ListItem>
                                    <asp:ListItem Value="AUG"></asp:ListItem>
                                    <asp:ListItem Value="SEP"></asp:ListItem>
                                    <asp:ListItem Value="OCT"></asp:ListItem>
                                    <asp:ListItem Value="NOV"></asp:ListItem>
                                    <asp:ListItem Value="DEC"></asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="drpYear" runat="server" CssClass="style11">
                                    <asp:ListItem Value="Year"></asp:ListItem>
                                    <asp:ListItem Value="1991"></asp:ListItem>
                                    <asp:ListItem Value="1992"></asp:ListItem>
                                    <asp:ListItem Value="1993"></asp:ListItem>
                                    <asp:ListItem Value="1994"></asp:ListItem>
                                    <asp:ListItem Value="1995"></asp:ListItem>
                                    <asp:ListItem Value="1996"></asp:ListItem>
                                    <asp:ListItem Value="1997"></asp:ListItem>
                                    <asp:ListItem Value="1998"></asp:ListItem>
                                    <asp:ListItem Value="1999"></asp:ListItem>
                                    <asp:ListItem Value="2000"></asp:ListItem>
                                    <asp:ListItem Value="2001"></asp:ListItem>
                                    <asp:ListItem Value="2002"></asp:ListItem>
                                    <asp:ListItem Value="2003"></asp:ListItem>
                                    <asp:ListItem Value="2004"></asp:ListItem>
                                    <asp:ListItem Value="2005"></asp:ListItem>
                                    <asp:ListItem Value="2006"></asp:ListItem>
                                    <asp:ListItem Value="2007"></asp:ListItem>
                                    <asp:ListItem Value="2008"></asp:ListItem>
                                    <asp:ListItem Value="2009"></asp:ListItem>
                                    <asp:ListItem Value="2010"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="style9">Gender</span></td>
                            <td class="style27">
                                <asp:RadioButton ID="rdbMale" runat="server" CssClass="style16" 
                                    GroupName="Gender" style="color: #000000" Text="Male" />
                                <asp:RadioButton ID="rdbFemale" runat="server" CssClass="style16" 
                                    GroupName="Gender" style="color: #000000" Text="Female" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <span class="style9">Choose Stream</span></td>
                            <td class="style27">
                                <asp:DropDownList ID="drpStream" runat="server" AutoPostBack="True" 
                                    CssClass="style11">
                                    <asp:ListItem>B.A</asp:ListItem>
                                    <asp:ListItem Value="B.Sc"></asp:ListItem>
                                    <asp:ListItem Value="B.Com"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                               </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="style9"><span class="style14">Choose Subject</span></span></td>
                            <td class="style27">
                                <span class="style9">
                                <asp:DropDownList ID="DrpBa" runat="server" CssClass="style11" 
                                    Visible="False">
                                    <asp:ListItem>Bengali</asp:ListItem>
                                    <asp:ListItem>English</asp:ListItem>
                                    <asp:ListItem>History</asp:ListItem>
                                    <asp:ListItem>Geography</asp:ListItem>
                                    <asp:ListItem>Sanskrit</asp:ListItem>
                                    <asp:ListItem>Education</asp:ListItem>
                                    <asp:ListItem>Philosophy</asp:ListItem>
                                    <asp:ListItem>Politial Science</asp:ListItem>
                                    <asp:ListItem>Music</asp:ListItem>
                                    <asp:ListItem>Santhali</asp:ListItem>
                                    <asp:ListItem>Physical Education</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="DrpBsc" runat="server" CssClass="style11" 
                                    Visible="False">
                                    <asp:ListItem>Mathematics</asp:ListItem>
                                    <asp:ListItem>Physics</asp:ListItem>
                                    <asp:ListItem>Chemistry</asp:ListItem>
                                    <asp:ListItem>Computer Science</asp:ListItem>
                                    <asp:ListItem>BCA</asp:ListItem>
                                    <asp:ListItem>Microbiology</asp:ListItem>
                                    <asp:ListItem>Biotechnology</asp:ListItem>
                                    <asp:ListItem>Botany</asp:ListItem>
                                    <asp:ListItem>Zoology</asp:ListItem>
                                    <asp:ListItem>Physiology</asp:ListItem>
                                    <asp:ListItem>Pure Science</asp:ListItem>
                                    <asp:ListItem>Electronics</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="DrpBcom" runat="server" CssClass="style11" 
                                    Visible="False">
                                    <asp:ListItem>Accontancy</asp:ListItem>
                                    <asp:ListItem>Economics</asp:ListItem>
                                    <asp:ListItem>Management</asp:ListItem>
                                    <asp:ListItem>B.Com General</asp:ListItem>
                                </asp:DropDownList>
                                </span>
                            </td>
                            <td>
                                </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="style9">Year Of Admission</span></td>
                            <td class="style27">
                                <asp:DropDownList ID="drpAdmission" runat="server" CssClass="style11">
                                    <asp:ListItem Value="1990"></asp:ListItem>
                                    <asp:ListItem Value="1991"></asp:ListItem>
                                    <asp:ListItem Value="1992"></asp:ListItem>
                                    <asp:ListItem Value="1993"></asp:ListItem>
                                    <asp:ListItem Value="1994"></asp:ListItem>
                                    <asp:ListItem Value="1995"></asp:ListItem>
                                    <asp:ListItem Value="1996"></asp:ListItem>
                                    <asp:ListItem Value="1997"></asp:ListItem>
                                    <asp:ListItem Value="1998"></asp:ListItem>
                                    <asp:ListItem Value="1999"></asp:ListItem>
                                    <asp:ListItem Value="2000"></asp:ListItem>
                                    <asp:ListItem Value="2001"></asp:ListItem>
                                    <asp:ListItem Value="2002"></asp:ListItem>
                                    <asp:ListItem Value="2003"></asp:ListItem>
                                    <asp:ListItem Value="2004"></asp:ListItem>
                                    <asp:ListItem Value="2005"></asp:ListItem>
                                    <asp:ListItem Value="2006"></asp:ListItem>
                                    <asp:ListItem Value="2007"></asp:ListItem>
                                    <asp:ListItem Value="2008"></asp:ListItem>
                                    <asp:ListItem Value="2009"></asp:ListItem>
                                    <asp:ListItem Value="2010"></asp:ListItem>
                                    <asp:ListItem Value="2011"></asp:ListItem>
                                    <asp:ListItem Value="2012"></asp:ListItem>
                                    <asp:ListItem Value="2013"></asp:ListItem>
                                    <asp:ListItem Value="2014"></asp:ListItem>
                                    <asp:ListItem Value="2015"></asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="style9">Password</span></td>
                            <td class="style27">
                                <asp:TextBox ID="txtPass" runat="server" CssClass="style11" 
                                    TextMode="Password"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="txtPass" CssClass="style20" 
                                    ErrorMessage="Please insert your password." ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="style14"><span class="style9">Retype Password</span></span></td>
                            <td class="style27">
                                <asp:TextBox ID="txtRe" runat="server" CssClass="style11" 
                                    TextMode="Password"></asp:TextBox>
                            </td>
                            <td>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="txtPass" ControlToValidate="txtRe" CssClass="style20" 
                                    ErrorMessage="Check your password." ForeColor="Red"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="style9">Profile Image</span></td>
                            <td class="style27">
                                <asp:FileUpload ID="fuImage" runat="server" ForeColor="#3399FF" Height="30px" 
                                    style="color: #000000;" Width="213px" />
                            </td>
                            <td>
                               </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style27">
                                <asp:Label ID="lblMessage" runat="server" CssClass="style20" ForeColor="Red"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>

                </asp:Panel>
                 </div>
                <br />
                <div class="div12">
                <asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" BorderWidth="2px" 
                        BorderColor="#FF99FF">
                    <table class="style28" cellspacing="5">
                        <tr>
                            <td colspan="3" 
                                style="color: #003366; font-size: x-large; font-weight: 700; background-color: #FFCCFF">
                                Security Question</td>
                        </tr>
                        <tr>
                            <td>
                                I. What is your hoby ?</td>
                            <td>
                                <asp:TextBox ID="txtNewhoby" runat="server" CssClass="style11"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                    ControlToValidate="txtNewhoby" CssClass="style20" 
                                    ErrorMessage="Please insert your hoby." ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                II. What is your favorite game ?</td>
                            <td>
                                <asp:TextBox ID="txtNewgame" runat="server" CssClass="style11"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                    ControlToValidate="txtNewgame" CssClass="style20" 
                                    ErrorMessage="Please insert your favorite game." ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
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
                                <asp:Button ID="btnSubmit" runat="server" BackColor="#CCCCCC" 
                                    CssClass="style13" Height="30px" Text="Submit" Width="70px" />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td align="center">
                                Don&#39;t want to register click
                                <asp:HyperLink ID="hlCancle" runat="server" NavigateUrl="~/Login.aspx">Here</asp:HyperLink>
                            </td>
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
