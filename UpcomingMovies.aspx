<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpcomingMovies.aspx.cs" Inherits="UpcomingMovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: x-large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2" colspan="2">
                UPCOMING MOVIES</td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Image ID="Image1" runat="server" Height="350px" 
                    ImageUrl="~/images/main-qimg-c64c4dbc8b5151d64a979b0c648ecc5a-c.jpg" 
                    Width="230px" />
            </td>
            <td>
                <asp:Image ID="Image2" runat="server" Height="350px" 
                    ImageUrl="~/images/large_ouIvgaSFqBMMailxU9zZiVIXXeV.jpg" Width="230px" />
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Image ID="Image3" runat="server" Height="350px" 
                    ImageUrl="~/images/Upcoming-Hollywood-Movies-2017-691x1024.jpg" Width="230px" />
            </td>
            <td>
                <asp:Image ID="Image4" runat="server" Height="350px" 
                    ImageUrl="~/images/Upcoming-Hollywood-Movies-2018.2-1024x576.jpg" 
                    Width="230px" />
            </td>
        </tr>
    </table>
</asp:Content>

