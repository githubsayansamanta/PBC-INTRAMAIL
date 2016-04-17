<%@ Page Title="" Language="VB" MasterPageFile="~/ProfileMaster.master" AutoEventWireup="false" CodeFile="EditProfile.aspx.vb" Inherits="EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
        .style4
        {
            width: 750px;
            color: #006666; 
            font-size: large; 
            background-color: #CCFFFF;
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
            <td>
                <asp:Panel ID="Panel1" runat="server" BorderColor="#006666" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style5" cellspacing="5">
                        <tr>
                            <td colspan="3" style="font-size: x-large; background-color: #A6C4C4">
                                Edit Profile</td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Image ID="Image1" runat="server" BorderColor="#669999" BorderStyle="Ridge" 
                                    BorderWidth="8px" Height="140px" Width="120px" />
                            </td>
                            <td>
                                Change Image</td>
                            <td>
                                <asp:FileUpload ID="fuImage" runat="server" />
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
                            <td>
                                First Name</td>
                            <td>
                                <asp:Label ID="lblFirst" runat="server" CssClass="style10"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtFirstname" runat="server" CssClass="style22"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Last Name</td>
                            <td>
                                <asp:Label ID="lblLast" runat="server" CssClass="style10"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtLastname" runat="server" CssClass="style22"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Address</td>
                            <td>
                                <asp:Label ID="lblAddress" runat="server" CssClass="style10"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="style24" 
                                    style="color: #0099FF" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Stream</td>
                            <td>
                                <asp:Label ID="lblStream" runat="server" CssClass="style10"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="drpStream" runat="server" AutoPostBack="True" 
                                    CssClass="style22">
                                    <asp:ListItem>Choose Stream</asp:ListItem>
                                    <asp:ListItem Value="B.A">B.A</asp:ListItem>
                                    <asp:ListItem Value="B.Com">B.Sc</asp:ListItem>
                                    <asp:ListItem>B.Com</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Subject</td>
                            <td>
                                <asp:Label ID="lblSubject" runat="server" CssClass="style10"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DrpBa" runat="server" CssClass="style22" Visible="False">
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
                                <asp:DropDownList ID="DrpBsc" runat="server" CssClass="style22" Visible="False">
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
                                <asp:DropDownList ID="DrpBcom" runat="server" CssClass="style22" 
                                    Visible="False">
                                    <asp:ListItem>Accontancy</asp:ListItem>
                                    <asp:ListItem>Economics</asp:ListItem>
                                    <asp:ListItem>Management</asp:ListItem>
                                    <asp:ListItem>B.Com General</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Year Of Admission </td>
                            <td>
                                <asp:Label ID="lblYear" runat="server" CssClass="style10"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="drpAdmission" runat="server" CssClass="style22" 
                                    Height="40px" Width="130px">
                                    <asp:ListItem Value="Choose Year"></asp:ListItem>
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
                        </tr>
                        <tr>
                            <td>
                                Mobile No.</td>
                            <td>
                                <asp:Label ID="lblMobile" runat="server" CssClass="style10"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtMobile" runat="server" CssClass="style22"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Date Of Birth</td>
                            <td>
                                <asp:Label ID="lblDate" runat="server" CssClass="style10"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="drpDay" runat="server" CssClass="style22">
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
                                <asp:DropDownList ID="drpMonth" runat="server" CssClass="style22">
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
                                <asp:DropDownList ID="drpYear" runat="server" CssClass="style22">
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
                        </tr>
                        <tr>
                            <td>
                                Gender</td>
                            <td>
                                <asp:Label ID="lblGender" runat="server" CssClass="style10"></asp:Label>
                            </td>
                            <td>
                                <asp:RadioButton ID="rdbMale" runat="server" CssClass="style16" 
                                    ForeColor="Black" GroupName="Gender" Text="Male" />
                                <asp:RadioButton ID="rdbFemale" runat="server" CssClass="style16" 
                                    ForeColor="Black" GroupName="Gender" Text="Female" />
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
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="btnSave" runat="server" BackColor="#CCCCCC" CssClass="style11" 
                                    ForeColor="#333333" Text=" Save Profile" />
                            </td>
                            <td align="right">
                                Don&#39;t want to edit profile click
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ViewProfile.aspx">Here</asp:HyperLink>
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
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel2" runat="server" BorderColor="#006666" BorderStyle="Solid" 
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

