<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        Width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    id<table class="style1">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="USERNAME"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="ENTER THE USERNAME" ControlToValidate="TextBoxUserName"></asp:RequiredFieldValidator>
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
            <asp:Label ID="Label2" runat="server" Text="EMAIL ID"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxEmailId" runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"

         ErrorMessage="PLEASE ENTER THE EMAIL ID" ControlToValidate="TextBoxEmailId"

         Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True"

         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    style="color: #FFFFFF"></asp:RegularExpressionValidator>
         
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
            <asp:Label ID="Label3" runat="server" Text="MOBILE NO"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxMobileNo" runat="server"></asp:TextBox><br\>  
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  
        ControlToValidate="TextBoxMobileNo" ErrorMessage="ENTER THR MOBILE NO UPTO 10 DIGITS"  
        ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>  
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
            <asp:Label ID="Label4" runat="server" Text="SUBJECT"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBoxSubject" runat="server" Height="45px" Width="223px" 
                TextMode="MultiLine"></asp:TextBox>
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
            <asp:Label ID="Label5" runat="server" Text="COMMENT"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBoxComment" runat="server" Height="68px" Width="223px" 
                TextMode="MultiLine" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="ENTER THE COMMENT" ControlToValidate="TextBoxComment"></asp:RequiredFieldValidator>
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
            &nbsp;</td>
        <td>
            <asp:Button ID="Button3" runat="server" BackColor="Lime" Text="SUBMIT" 
                Width="80px" onclick="Button3_Click" />
        </td>
    </tr>
</table>
</asp:Content>



