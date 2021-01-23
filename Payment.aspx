<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            Width: 100%;
        }
        .style2
        {
            height: 26px;
        }
        .style3
        {
            height: 30px;
        }
        .style4
        {
            width: 75px;
        }
        .style5
        {
            height: 26px;
            width: 75px;
        }
        .style6
        {
            height: 30px;
            width: 75px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px" class="style5">
                <asp:Label ID="Label1" runat="server" Text="USERNAME"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBoxUserName" runat="server" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUserName" ErrorMessage="ENTER THE USERNAME"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px" class="style4">
                <asp:Label ID="Label2" runat="server" Text="EMAIL ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxEmailId" runat="server" Width="156px"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"

         ErrorMessage="PLEASE ENTER THE EMAIL ID" ControlToValidate="TextBoxEmailId"

         Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True"

         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    style="color: #FFFFFF"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px" class="style4">
                <asp:Label ID="Label3" runat="server" Text="NAME ON CREDIT/DEBIT CARD"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxNameOnCredit" runat="server" Width="160px" >
                </asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxNameOnCredit" 
                    ErrorMessage="ENTER THE NAME ON CREDIT CARD"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px" class="style4">
                <asp:Label ID="Label4" runat="server" Text="CREDIT/DEBIT CARD NO"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxCreditCardNo" runat="server" Width="160px">
                </asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxCreditCardNo" ErrorMessage="ENTER THE CREDIT CARD NO"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px"  class="style5">
                <asp:Label ID="Label5" runat="server" Text="CVV"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBoxCVV" runat="server" Width="160px" TextMode="Password"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBoxCVV" ErrorMessage="ENTER THE CVV"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px" class="style4" >
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px" class="style4">
                <asp:Label ID="Label6" runat="server" Text="EXPIRATION DATE"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxExpirationDate" runat="server" Width="160" >
                </asp:TextBox>
                &nbsp;(MM/YY)<br />
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px" class="style4">
                <asp:Label ID="Label7" runat="server" Text="MOBILE NO"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="TextBoxMobileNo" runat="server" Width="158px"></asp:TextBox><br\>  
                <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  
        ControlToValidate="TextBoxMobileNo" ErrorMessage="ENTER THR MOBILE NO UPTO 10 DIGITS"  
        ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>  
        
                <br />
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px" class="style6">
                <asp:Label ID="Label8" runat="server" Text="STATE"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBoxStates" runat="server" Width="160px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px" class="style4">
                <asp:Label ID="Label9" runat="server" Text="CITY"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxCity" runat="server" Width="160px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px" class="style4">
                <asp:Label ID="Label10" runat="server" Text="ZIP"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxZip" runat="server" Width="160px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; margin-left: 120px">
                <asp:CheckBox ID="CheckBox1" runat="server" 
                    Text="I HAVE READ ALL TERMS AND CONDITIONS AND READY TO PAY" Width="500px" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px" class="style4" >
                &nbsp;</td>
            <td style="text-align: center; Width: 100px; margin-left: 120px" >
                <asp:Button ID="Button2" runat="server" BackColor="Lime" Text="PAYMENT" 
                    Width="80px" onclick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px" ">
                &nbsp;</td>
            <td style="text-align: center; Width: 100px; margin-left: 120px" 
                class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px" ">
                &nbsp;</td>
            <td style="text-align: center; Width: 100px; margin-left: 120px" 
                class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>





