<%@ Page Title="" Language="VB" MasterPageFile="~/ProfileMaster.master" AutoEventWireup="false" CodeFile="LoginDetails.aspx.vb" Inherits="LoginDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style11
        {        height: 246px;
        width: 750px;
    }
    .style14
    {
        width: 700px;
        color: #006699;
        background-color: #8CB3B3;
    }
    .style13
    {
        width: 280px;
        height: 400px;
    }
    .style8
    {        height: 8px;
        background-color: #8CB3B3;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style11" align="center">
        <tr>
            <td bgcolor="#3399FF" class="style14" 
            
            
            
                style="font-family: Calibri; font-size: x-large; color: #003366; font-weight: 700;">
                &nbsp;Login Details</td>
        </tr>
        <tr>
            <td class="style13" align="center" 
            style="font-family: calibri; background-color: #E4E4E4">
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:GridView ID="gvLog" runat="server" CellPadding="4" 
                style="margin-left: 100px; color: #006699; font-size: medium;" 
                Width="500px" AutoGenerateColumns="False" ForeColor="#333333" GridLines="None" 
                Height="170px" >
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="ID" DataField="LoginId" />
                        <asp:BoundField HeaderText="User" DataField="UserName" />
                        <asp:BoundField HeaderText="Date & Time" DataField="LoginDateTime" />
                    </Columns>
                </asp:GridView>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style8" 
            
            style="font-size: large; font-family: calibri; color: #FF0066;" 
            bgcolor="#0066FF" align="center">
            &nbsp;&nbsp;<asp:HyperLink ID="hlLogin" runat="server" 
                NavigateUrl="~/Login.aspx">Log In</asp:HyperLink>
                <asp:Label ID="lblUser" runat="server" ForeColor="#FF0066" 
                style="color: #0066FF"></asp:Label>
        &nbsp;<asp:Button ID="btnLogout" runat="server" BackColor="#99CCFF" 
                ForeColor="#0066FF" Height="30px" Text="Log  Out" Width="70px" 
                BorderColor="#3399FF" BorderStyle="Double" 
                    style="font-size: medium; font-family: Calibri;" />
            </td>
        </tr>
    </table>
</asp:Content>

