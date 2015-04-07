<%@ Page Language="VB" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_jimmy_HW7_LFG %>" DeleteCommand="DELETE FROM [jimmy_HW7_LFG] WHERE [UID] = @UID" InsertCommand="INSERT INTO [jimmy_HW7_LFG] ([GameID], [Nickname], [Server], [Class], [Rank], [AP], [Guild], [Language], [TimeAvailable]) VALUES (@GameID, @Nickname, @Server, @Class, @Rank, @AP, @Guild, @Language, @TimeAvailable)" SelectCommand="SELECT * FROM [jimmy_HW7_LFG]" UpdateCommand="UPDATE [jimmy_HW7_LFG] SET [GameID] = @GameID, [Nickname] = @Nickname, [Server] = @Server, [Class] = @Class, [Rank] = @Rank, [AP] = @AP, [Guild] = @Guild, [Language] = @Language, [TimeAvailable] = @TimeAvailable WHERE [UID] = @UID">
            <DeleteParameters>
                <asp:Parameter Name="UID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="GameID" Type="String" />
                <asp:Parameter Name="Nickname" Type="String" />
                <asp:Parameter Name="Server" Type="String" />
                <asp:Parameter Name="Class" Type="String" />
                <asp:Parameter Name="Rank" Type="String" />
                <asp:Parameter Name="AP" Type="Int32" />
                <asp:Parameter Name="Guild" Type="String" />
                <asp:Parameter Name="Language" Type="String" />
                <asp:Parameter Name="TimeAvailable" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="GameID" Type="String" />
                <asp:Parameter Name="Nickname" Type="String" />
                <asp:Parameter Name="Server" Type="String" />
                <asp:Parameter Name="Class" Type="String" />
                <asp:Parameter Name="Rank" Type="String" />
                <asp:Parameter Name="AP" Type="Int32" />
                <asp:Parameter Name="Guild" Type="String" />
                <asp:Parameter Name="Language" Type="String" />
                <asp:Parameter Name="TimeAvailable" Type="String" />
                <asp:Parameter Name="UID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <% If Not IsPostBack Then%>Search By Class or Rank:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tb_Search1" runat="server"></asp:TextBox>
        <br />
        <%Else%>Search by Class or Rank:&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="tb_search2" runat="server"></asp:TextBox>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="UID" HeaderText="UID" InsertVisible="False" ReadOnly="True" SortExpression="UID" />
                <asp:BoundField DataField="GameID" HeaderText="GameID" SortExpression="GameID" />
                <asp:BoundField DataField="Nickname" HeaderText="Nickname" SortExpression="Nickname" />
                <asp:BoundField DataField="Server" HeaderText="Server" SortExpression="Server" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                <asp:BoundField DataField="Rank" HeaderText="Rank" SortExpression="Rank" />
                <asp:BoundField DataField="AP" HeaderText="AP" SortExpression="AP" />
                <asp:BoundField DataField="Guild" HeaderText="Guild" SortExpression="Guild" />
                <asp:BoundField DataField="Language" HeaderText="Language" SortExpression="Language" />
                <asp:BoundField DataField="TimeAvailable" HeaderText="TimeAvailable" SortExpression="TimeAvailable" />
            </Columns>
        </asp:GridView>
        <% End If %>
    </div>
    </form>
</body>
</html>
