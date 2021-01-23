<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AfterPayment.aspx.cs" Inherits="AfterPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: large;
            text-align: center;
        }
        .style2
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style1">
        PAYMENT HAS BEEN DONE SUCCESSFULLY!!</p>
    <p class="style1">
        YOU WILL GET YOUR TICKET AT THEATER QUICKLY BY SPECIFYING USERNAME AND YOUR 
        MOBILE NO. NEED NOT TO STAND IN QUEUE FOR TICKETS</p>
    <p class="style1">
        TICKET WILL BE ALLOTED SERIALLY AS PER THE BOOKING</p>
    <p class="style1">
        THANK YOU !</p>
    <p class="style1">
        VISIT AGAIN..............!</p>
    <table class="style2">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="Lime" 
                    onclick="Button1_Click" Text="FINISH" Width="80px" />
                &nbsp;</td>
        </tr>
    </table>
    </asp:Content>

