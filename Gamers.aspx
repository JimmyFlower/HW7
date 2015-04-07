<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Gamers.aspx.vb" Inherits="Gamers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Beer Menu
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:sqldatasource runat="server" ID="sql_gamerdetails" ConnectionString="<%$ ConnectionStrings:db_jimmy_HW7_LFG %>" SelectCommand="SELECT * FROM [jimmy_HW7_LFG]" DeleteCommand="DELETE FROM [jimmy_HW7_LFG] WHERE [UID] = @UID" InsertCommand="INSERT INTO [jimmy_HW7_LFG] ([GameID], [Nickname], [Server], [Class], [Rank], [AP], [Guild], [Language], [TimeAvailable]) VALUES (@GameID, @Nickname, @Server, @Class, @Rank, @AP, @Guild, @Language, @TimeAvailable)" UpdateCommand="UPDATE [jimmy_HW7_LFG] SET [GameID] = @GameID, [Nickname] = @Nickname, [Server] = @Server, [Class] = @Class, [Rank] = @Rank, [AP] = @AP, [Guild] = @Guild, [Language] = @Language, [TimeAvailable] = @TimeAvailable WHERE [UID] = @UID">
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
    </asp:sqldatasource>
    <asp:gridview runat="server" ID="gridview_gamers" AllowSorting="True" AutoGenerateColumns="False" CssClass="gridview" DataKeyNames="UID" DataSourceID="sql_gamerdetails" HorizontalAlign="Center" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="GameID" HeaderText="GameID" SortExpression="GameID" ItemStyle-Width="10%">
<ItemStyle Width="10%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Nickname" HeaderText="Nickname" SortExpression="Nickname" ItemStyle-Width="10%" >
<ItemStyle Width="10%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Server" HeaderText="Server" SortExpression="Server" ItemStyle-Width="10%" >
<ItemStyle Width="10%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" ItemStyle-Width="10%" >
<ItemStyle Width="10%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Rank" HeaderText="Rank" SortExpression="Rank" ItemStyle-Width="10%" >
<ItemStyle Width="10%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="AP" HeaderText="AP" SortExpression="AP" ItemStyle-Width="10%">
<ItemStyle Width="10%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Guild" HeaderText="Guild" SortExpression="Guild" ItemStyle-Width="10%">
<ItemStyle Width="10%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Language" HeaderText="Language" SortExpression="Language" ItemStyle-Width="10%" >
<ItemStyle Width="10%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="TimeAvailable" HeaderText="TimeAvailable" SortExpression="TimeAvailable" ItemStyle-Width="10%" >
<ItemStyle Width="10%"></ItemStyle>
            </asp:BoundField>
        </Columns>
    </asp:gridview>
</asp:Content>

