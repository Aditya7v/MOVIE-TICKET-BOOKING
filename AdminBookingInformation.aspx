<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminBookingInformation.aspx.cs" Inherits="AdminBookingInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="MOVIE_NAME" HeaderText="MOVIE_NAME" 
                    SortExpression="MOVIE_NAME" />
                <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                <asp:BoundField DataField="THEATER_NAME" HeaderText="THEATER_NAME" 
                    SortExpression="THEATER_NAME" />
                <asp:BoundField DataField="DATE" HeaderText="DATE" SortExpression="DATE" />
                <asp:BoundField DataField="TIME" HeaderText="TIME" SortExpression="TIME" />
                <asp:BoundField DataField="NO_OF_SEATS" HeaderText="NO_OF_SEATS" 
                    SortExpression="NO_OF_SEATS" />
                <asp:BoundField DataField="NET_PAYABLE" HeaderText="NET_PAYABLE" 
                    SortExpression="NET_PAYABLE" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbconnection %>" 
            DeleteCommand="DELETE FROM [Booking] WHERE [ID] = @ID" 
            InsertCommand="INSERT INTO [Booking] ([MOVIE_NAME], [CITY], [THEATER_NAME], [DATE], [TIME], [NO_OF_SEATS], [NET_PAYABLE]) VALUES (@MOVIE_NAME, @CITY, @THEATER_NAME, @DATE, @TIME, @NO_OF_SEATS, @NET_PAYABLE)" 
            SelectCommand="SELECT * FROM [Booking]" 
            UpdateCommand="UPDATE [Booking] SET [MOVIE_NAME] = @MOVIE_NAME, [CITY] = @CITY, [THEATER_NAME] = @THEATER_NAME, [DATE] = @DATE, [TIME] = @TIME, [NO_OF_SEATS] = @NO_OF_SEATS, [NET_PAYABLE] = @NET_PAYABLE WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MOVIE_NAME" Type="String" />
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="THEATER_NAME" Type="String" />
                <asp:Parameter Name="DATE" Type="String" />
                <asp:Parameter Name="TIME" Type="String" />
                <asp:Parameter Name="NO_OF_SEATS" Type="String" />
                <asp:Parameter Name="NET_PAYABLE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MOVIE_NAME" Type="String" />
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="THEATER_NAME" Type="String" />
                <asp:Parameter Name="DATE" Type="String" />
                <asp:Parameter Name="TIME" Type="String" />
                <asp:Parameter Name="NO_OF_SEATS" Type="String" />
                <asp:Parameter Name="NET_PAYABLE" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    </asp:Content>

