<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminNewRegistration.aspx.cs" Inherits="Admin_new_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 100%;
        }
        .style6
        {
            height: 22px;
            font-family: "Times New Roman", Times, serif;
        }
        .style7
        {
            height: 26px;
        }
        .style9
        {
            height: 46px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style5">
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
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" 
                    style="font-family: 'Times New Roman', Times, serif" Text="ADMIN NAME"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxAdminName" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="ENTER THE ADMIN NAME" 
                    style="font-family: 'Times New Roman', Times, serif" 
                    ControlToValidate="TextBoxAdminName"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label2" runat="server" 
                    style="font-family: 'Times New Roman', Times, serif" Text="EMAIL ID"></asp:Label>
            </td>
            <td class="style6">
            <asp:TextBox ID="TextBoxEmailId" runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"

         ErrorMessage="PLEASE ENTER THE EMAIL ID" ControlToValidate="TextBoxEmailId"

         Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True"

         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    style="color: #FFFFFF"></asp:RegularExpressionValidator>
         
                <br />
            </td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td style="margin-left: 80px" class="style7">
                <asp:Label ID="Label3" runat="server" 
                    style="font-family: 'Times New Roman', Times, serif" Text="PASSWORD"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
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
                <asp:Label ID="Label4" runat="server" 
                    style="font-family: 'Times New Roman', Times, serif" Text="CONFIRM PASSWORD"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirmPassword" 
                    ErrorMessage="PASSWORD DOES NOT MATCH" 
                    style="font-family: 'Times New Roman', Times, serif"></asp:CompareValidator>
                <br />
                <br />
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
                <asp:Label ID="Label5" runat="server" 
                    style="font-family: 'Times New Roman', Times, serif" Text="GENDER"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    style="font-family: 'Times New Roman', Times, serif">
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                </asp:RadioButtonList>
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
                <asp:Label ID="Label6" runat="server" 
                    style="font-family: 'Times New Roman', Times, serif">MOBILE NO</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxMobileNo" runat="server"></asp:TextBox><br\>  
                <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  
        ControlToValidate="TextBoxMobileNo" ErrorMessage="ENTER THR MOBILE NO UPTO 10 DIGITS"  
        ValidationExpression="[0-9]{10}" style="font-family: 'Times New Roman', Times, serif"></asp:RegularExpressionValidator>  
        
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label7" runat="server" 
                    style="font-family: 'Times New Roman', Times, serif" Text="DATE_OF_BIRTH"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBoxDateOfBirth" runat="server" Type="date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBoxDateOfBirth" ErrorMessage="ENTER THE DATE OF BIRTH" 
                    style="font-family: 'Times New Roman', Times, serif"></asp:RequiredFieldValidator>
                <br />
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
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="Lime" Text="SUBMIT" 
                    Width="80px" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

