<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: center;
            height: 31px;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            text-align: center;
            height: 26px;
        }
        .style5
        {
            height: 26px;
        }
        .style6
        {
            text-align: left;
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2" colspan="2">
                TICKET BOOKING</td>
        </tr>
        <tr>
            <td class="style2">
                USERNAME</td>
            <td class="style6">
                <asp:TextBox ID="TextBoxDate0" runat="server" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="ENTER THE USERNAME" ControlToValidate="TextBoxDate0"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="MOVIE NAME"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DDLMoviesName" runat="server" Width="160px">
                    <asp:ListItem>MOVIES NAME</asp:ListItem>
                    <asp:ListItem>AVENGERS INFINITY WAR</asp:ListItem>
                    <asp:ListItem>DEADPOOL 2</asp:ListItem>
                    <asp:ListItem>BAHUBALI 2</asp:ListItem>
                    <asp:ListItem>TIGER ZINDA HAI</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="SELECT THE MOVIE NAME" ControlToValidate="DDLMoviesName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="CITY"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DDLCity" runat="server" Width="160px">
                    <asp:ListItem>CITY</asp:ListItem>
                    <asp:ListItem>YAVATMAL</asp:ListItem>
                    <asp:ListItem>LATUR</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="SELECT THE CITY" ControlToValidate="DDLCity"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Text="THEATER NAME"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="DDLTheaterName" runat="server" Width="160px">
                    <asp:ListItem>THEATER NAME</asp:ListItem>
                    <asp:ListItem>PVR LATUR</asp:ListItem>
                    <asp:ListItem>ELEMENTS YAVATMAL</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="SELECT THE THEATER NAME" ControlToValidate="DDLTheaterName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text="DATE"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxDate" runat="server" Width="160px" Type="date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="SELECT THE DATE" ControlToValidate="TextBoxDate"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr> 
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label6" runat="server" Text="TIME"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DDLTime" runat="server" Width="160px">
                    <asp:ListItem>TIME</asp:ListItem>
                    <asp:ListItem>9:00 AM</asp:ListItem>
                    <asp:ListItem>12:00 PM</asp:ListItem>
                    <asp:ListItem>3:00 PM</asp:ListItem>
                    <asp:ListItem>6:00 PM</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="DDLTime" ErrorMessage="SELECT THE TIME"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                NO OF SEATS</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="161px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="ENTER THE NO OF SEATS"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                NET PAYABLE</td>
            <td>
                <asp:TextBox ID="TextBoxNetPayable" runat="server" Width="160px" ></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="Lime" Text="CALCULATE" 
                    Width="93px" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="Lime" Text="PROCCED TO PAY" 
                    Width="130px" onclick="Button1_Click" />
                &nbsp;&nbsp;<asp:Button ID="Button3" runat="server" BackColor="Lime" 
                    onclick="Button3_Click" Text="CANCEL" Width="64px" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" BackColor="Lime" Text="PRINT" 
                    Width="80px" onclientclick="window.print()" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

