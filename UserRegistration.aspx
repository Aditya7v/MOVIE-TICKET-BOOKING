<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            Width: 100%;
        }
        .style2
        {
            height: 23px;
            text-align: center;
        }
        .style3
        {
            height: 23px;
            text-align: center;
            font-size: x-large;
        }
        .style4
        {
            height: 23px;
        }
        .style5
        {
            height: 26px;
        }
        .requiredFieldValidateStyle
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style3" colspan="2">
                <strong>NEW USER REGISTRATION </strong>
            </td>
        </tr>
        <tr>
            <td class="style2">
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px">
                <asp:Label ID="Label1" runat="server" Text="USERNAME"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxUserName" runat="server" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUserName" ErrorMessage="ENTER THE USERNAME"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px" class="style5">
                <asp:Label ID="Label2" runat="server" Text="EMAIL ID"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBoxEmailId" runat="server" Width="156px"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"

         ErrorMessage="PLEASE ENTER THE EMAIL ID" ControlToValidate="TextBoxEmailId"

         Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True"

         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    style="color: #FFFFFF"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px" class="style4">
                </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px" class="style5">
                <asp:Label ID="Label3" runat="server" Text="PASSWORD"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBoxPassword" runat="server" Width="160px" TextMode="Password"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px">
                <asp:Label ID="Label4" runat="server" Text="CONFIRM PASSWORD"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxConfirmPassword" runat="server" Width="160px" TextMode="Password"></asp:TextBox>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirmPassword" 
                    ErrorMessage="PASSWORD DOES NOT MATCH"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px">
                <asp:Label ID="Label5" runat="server" Text="GENDER"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px">
                <asp:Label ID="Label6" runat="server" Text="DATE OF BIRTH"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxDateOfBirth" runat="server" Width="160px" Type="date"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="ENTER THE DATE OF BIRTH" 
                    ControlToValidate="TextBoxDateOfBirth"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4" style="margin-left: 120px">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 120px">
                <asp:Label ID="Label7" runat="server" Text="MOBILE NO"></asp:Label>
            </td>
            <td><asp:TextBox ID="TextBoxMobileNo" runat="server"></asp:TextBox>
                <br\>  
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  
        ControlToValidate="TextBoxMobileNo" ErrorMessage="ENTER THR MOBILE NO UPTO 10 DIGITS"  
        ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>  
        
                </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; margin-left: 120px">
                <asp:Button ID="Button1" runat="server" BackColor="Lime" Text="SUBMIT" 
                    Width="75px" onclick="Button1_Click" style="height: 26px" />
            </td>
        </tr>
    </table>
</asp:Content>





