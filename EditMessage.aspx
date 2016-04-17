<%@ Page Title="" Language="VB" MasterPageFile="~/UserMaster.master" AutoEventWireup="false" CodeFile="EditMessage.aspx.vb" Inherits="ComposeDraft" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style18
        {
            width:750px;
        font-size: x-large;
        color: #006699;
    }
        .style17
        {
            width: 750px;
            font-size: large;
            background-color: #99CCFF;
            color: #0066FF;
        }
        .style19
        {
            width: 100%;
            font-size: large;
        }
        .style20
        {
            color: #666666;
            background-color: #CCCCCC;
        }
        .style21
        {
            width: 376px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style17">
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" BorderColor="#0099FF" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style18" cellspacing="5">
                        <tr>
                            <td colspan="3" 
                                style="font-size: x-large; background-color: #33CCCC; ">
                                Save Message</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                To</td>
                            <td colspan="2">
                                <asp:TextBox ID="txtUserto" runat="server" CssClass="style13" Height="29px" 
                                    Width="170px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Subject</td>
                            <td colspan="2">
                                <asp:TextBox ID="txtSubject" runat="server" CssClass="style13" Height="30px" 
                                    style="margin-left: 0px" Width="170px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Message
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtMessage" runat="server" CssClass="style13" 
                                    style="margin-left: 0px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Attach File
                            </td>
                            <td colspan="2">
                                <asp:HyperLink ID="hlAttachment" runat="server" 
                                    style="font-size: large; color: #006699; ">[hlAttachment]</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Button ID="btnSend" runat="server" CssClass="style14" 
                                    Text="Send" style="color: #666666; background-color: #CCCCCC" />
                            </td>
                            <td align="center">
                                <asp:Button ID="btnDelete" runat="server" CssClass="style14" 
                                    Text="Delete" style="color: #666666; background-color: #CCCCCC" />
                            </td>
                            <td>
                                <asp:Button ID="btnCancle" runat="server" CssClass="style14" 
                                    Text="Cancle" style="color: #666666; background-color: #CCCCCC" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel2" runat="server" BorderColor="#0099FF" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <table class="style19">
                        <tr>
                            <td align="right" class="style21">
                                <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/Login.aspx">Log In</asp:HyperLink>
                                <asp:Label ID="lblUser" runat="server" ForeColor="#FF0066" 
                                    style="color: #0066FF"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btnLogout" runat="server" CssClass="style20" 
                                    style="font-size: medium; font-family: Calibri;" Text="Log  Out" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    
</asp:Content>

