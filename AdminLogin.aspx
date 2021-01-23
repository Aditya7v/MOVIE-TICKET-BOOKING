<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
    .style3
    {
        width: 131px;
    }
    .style4
    {
        width: 131px;
        font-family: "Times New Roman", Times, serif;
    }
        .style5
        {
            width: 131px;
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            height: 33px;
        }
        .style6
        {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            ADMIN NAME</td>
        <td style="font-family: 'Times New Roman', Times, serif" class="style6">
            <asp:TextBox ID="TextBoxAdminName" runat="server" Width="160px" >
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBoxAdminName" ErrorMessage="ENTER THE ADMIN NAME"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td style="font-family: 'Times New Roman', Times, serif">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Label ID="Label2" runat="server" 
                style="font-family: 'Times New Roman', Times, serif" Text="PASSWORD"></asp:Label>
        </td>
        <td style="font-family: 'Times New Roman', Times, serif">
            <asp:TextBox ID="TextBoxPassword" runat="server" Width="160px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBoxPassword" ErrorMessage="ENTER THE PASSWORD"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td style="font-family: 'Times New Roman', Times, serif">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td style="font-family: 'Times New Roman', Times, serif">
            <asp:Button ID="Button1" runat="server" BackColor="Lime" Text="LOGIN" 
                Width="80px" onclick="Button1_Click" style="height: 26px" />
        </td>
    </tr>
</table>
</asp:Content>

