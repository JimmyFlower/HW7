<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link rel="stylesheet" type="text/css" href="./style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlLFGData" runat="server" ConnectionString="<%$ ConnectionStrings:db_jimmy_HW7_LFG %>" DeleteCommand="DELETE FROM [jimmy_HW7_LFG] WHERE [UID] = @UID" InsertCommand="INSERT INTO [jimmy_HW7_LFG] ([GameID], [Nickname], [Server], [Class], [Rank], [AP], [Guild], [Language], [TimeAvailable]) VALUES (@GameID, @Nickname, @Server, @Class, @Rank, @AP, @Guild, @Language, @TimeAvailable)" SelectCommand="SELECT * FROM [jimmy_HW7_LFG] WHERE ([UID] = @UID)" UpdateCommand="UPDATE [jimmy_HW7_LFG] SET [GameID] = @GameID, [Nickname] = @Nickname, [Server] = @Server, [Class] = @Class, [Rank] = @Rank, [AP] = @AP, [Guild] = @Guild, [Language] = @Language, [TimeAvailable] = @TimeAvailable WHERE [UID] = @UID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="UID" QueryStringField="UID" Type="Int32" />
            </SelectParameters>
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
        <asp:Label ID="lbl_deleted" runat="server"></asp:Label>
        <br />
        <asp:DetailsView ID="DetailsView1"  runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="UID" DataSourceID="SqlLFGData" Height="50px" Width="125px" HeaderText="New Player"
	      CssClass="cssdetailsview"
              HeaderStyle-CssClass="header"
              FieldHeaderStyle-CssClass="fieldheader"
              ItemStyle-CssClass="item"
              AlternatingRowStyle-CssClass="altrow"
              CommandRowStyle-CssClass="command"
              PagerStyle-CssClass="pager">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
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
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
