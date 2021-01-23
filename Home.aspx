<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 20px;
        }
        .style3
        {
            height: 20px;
            text-align: right;
        }
        .style4
        {
            width: 306px;
            text-align: right;
        }
        .style5
        {
            height: 20px;
            text-align: center;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
        <tr>
            <td class="style5" colspan="2">
                RELEASED MOVIES</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Image ID="Image1" runat="server" Height="350px" 
                    ImageUrl="~/images/avengers-infinity-war-poster-405x600.jpg" 
                    style="text-align: right" Width="230px" />
            </td>
            <td class="style2">
                <asp:Image ID="Image2" runat="server" Height="350px" 
                    ImageUrl="~/images/deadpool_2_poster_by_punktx30-db2iiu7.jpg" Width="230px" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Image ID="Image3" runat="server" Height="350px" 
                    ImageUrl="~/images/large_Baahubali-2-New-Poster-Maha-Shivaratri.jpg" 
                    Width="230px" />
            </td>
            <td>
                <asp:Image ID="Image4" runat="server" Height="350px" 
                    ImageUrl="~/images/large_Tiger-Zinda.jpg" Width="230px" />
            </td>
        </tr>
    </table>

</asp:Content>

