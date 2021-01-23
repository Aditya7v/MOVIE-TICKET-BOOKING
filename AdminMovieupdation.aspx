<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminMovieupdation.aspx.cs" Inherits="Movieupdation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
    .style3
    {
        font-family: "Times New Roman", Times, serif;
    }
        .style6
        {
            height: 27px;
        }
        .style7
        {
            font-family: "Times New Roman", Times, serif;
            text-align: center;
            height: 27px;
        }
        .style8
        {
            font-family: "Times New Roman", Times, serif;
            text-align: center;
            height: 23px;
        }
        .style9
        {
            height: 23px;
        }
        .style10
        {
            font-family: "Times New Roman", Times, serif;
            text-align: center;
            height: 22px;
        }
        .style11
        {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     id<table class="style2">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                SELECT STATE</td>
            <td class="style11">
                <asp:DropDownList ID="DDlStates" runat="server" ValidationGroup="add" 
                    AutoPostBack="True" 
                    Width="160px">
                    <asp:ListItem>STATE</asp:ListItem>
                    <asp:ListItem>MAHARASHTRA</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                SELECT CITY</td>
            <td>
                <asp:DropDownList ID="DDLCity" runat="server" ValidationGroup="add" 
                    Width="160px">
                    <asp:ListItem>CITY</asp:ListItem>
                    <asp:ListItem>YAVATMAL</asp:ListItem>
                    <asp:ListItem>LATUR</asp:ListItem>
                    <asp:ListItem>NANDED</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                THEATER NAME</td>
            <td>
                <asp:TextBox ID="TextBoxTheaterName" runat="server" ValidationGroup="add" Width="157px" 
                    MaxLength="100"></asp:TextBox>
                &nbsp;<br />
                <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;<tr>
            <td class="style7">
                <asp:Label ID="Label1" runat="server" Text="TIME"></asp:Label>
             </td>
            <td class="style6">
                <asp:DropDownList ID="DDLTime" runat="server" Height="16px" Width="160px">
                    <asp:ListItem>TIME</asp:ListItem>
                    <asp:ListItem>9:00 AM</asp:ListItem>
                    <asp:ListItem>12:00 PM</asp:ListItem>
                    <asp:ListItem>3:00PM</asp:ListItem>
                    <asp:ListItem>6:00 PM</asp:ListItem>
                </asp:DropDownList>
                <br />
                <tr>
            <td class="style8">
                </td>
            <td class="style9">
        <tr>
            <td class="style3">
                SCREEN NO</td>
            <td>
                <asp:DropDownList ID="DDLScreenno" runat="server" Width="160px">
                    <asp:ListItem>SCREEN NO</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList>
                <br />
                <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;<tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="Lime" Text="SUBMIT" 
                    onclick="Button1_Click" />
     </table>
</asp:Content>

