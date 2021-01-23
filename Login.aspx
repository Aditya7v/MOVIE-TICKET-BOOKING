<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {            text-align: center;
        }
    .style3
    {
        text-align: center;
        font-size: x-large;
    }
        .style4
        {
            height: 23px;
        }
        .style5
        {
            text-align: center;
        }
        .style6
        {
            text-align: center;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style3" colspan="2">
            <strong>USER LOGIN</strong></td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label1" runat="server" style="text-align: right" Text="USERNAME"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBoxUserName" runat="server" Width="160px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBoxUserName" ErrorMessage="ENTER THE USER NAME"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label2" runat="server" Text="PASSWORD"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBoxPassword" runat="server" Width="160px" 
                TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBoxPassword" ErrorMessage="ENTER THE PASSWORD"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" BackColor="Lime" Text="LOGIN" 
                Width="72px" onclick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td class="style4">
            </td>
        <td class="style4">
        </td>
    </tr>
    <tr>
        <td class="style5" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6" colspan="2">
            </td>
    </tr>
</table>
</asp:Content>

