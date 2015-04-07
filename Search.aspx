<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Search
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="sql_gamerSearch" runat="server" ConnectionString="<%$ ConnectionStrings:db_jimmy_HW7_LFG %>" SelectCommand="SELECT * FROM [jimmy_HW7_LFG]" DeleteCommand="DELETE FROM [jimmy_HW7_LFG] WHERE [UID] = @UID" InsertCommand="INSERT INTO [jimmy_HW7_LFG] ([GameID], [Nickname], [Server], [Class], [Rank], [AP], [Guild], [Language], [TimeAvailable]) VALUES (@GameID, @Nickname, @Server, @Class, @Rank, @AP, @Guild, @Language, @TimeAvailable)" UpdateCommand="UPDATE [jimmy_HW7_LFG] SET [GameID] = @GameID, [Nickname] = @Nickname, [Server] = @Server, [Class] = @Class, [Rank] = @Rank, [AP] = @AP, [Guild] = @Guild, [Language] = @Language, [TimeAvailable] = @TimeAvailable WHERE [UID] = @UID">
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
    
    <% If Not IsPostBack Then%>
    <table>
        <tr>
            <td class="search">Search By Class or Rank:[class:Ranger or rank:Tiger]&nbsp;&nbsp;&nbsp;</td>
            <td class="search"><asp:TextBox ID="tb_Search1" runat="server" AutoPostBack="True"></asp:TextBox> </td>
        </tr>

    </table>
    
    <% Else%>
    <table>
        <tr>
          
            <td class="search">Search by Class or Rank:[class:Ranger or rank:Tiger]&nbsp;&nbsp;&nbsp; </td>
            <td class="search"><asp:TextBox ID="tb_search2" runat="server" AutoPostBack="True"></asp:TextBox></td>
        </tr>  
    </table>

    <asp:GridView ID="gridview_SearchResults" runat="server" DataSourceID="sql_gamerSearch" AutoGenerateColumns="False" CssClass="gridview" DataKeyNames="UID" AllowPaging="True" AllowSorting="True" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="UID" HeaderText="UID" SortExpression="UID" ItemStyle-Width="20%" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="GameID" HeaderText="GameID" SortExpression="GameID" ItemStyle-Width="20%"/>
            <asp:BoundField DataField="Nickname" HeaderText="Nickname" SortExpression="Nickname" ItemStyle-Width="20%" />
            <asp:BoundField DataField="Server" HeaderText="Server" SortExpression="Server" ItemStyle-Width="20%" />
            <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" ItemStyle-Width="20%" />
            <asp:BoundField DataField="Rank" HeaderText="Rank" SortExpression="Rank" ItemStyle-Width="20%"/>
            <asp:BoundField DataField="AP" HeaderText="AP" SortExpression="AP" ItemStyle-Width="20%"/>
            <asp:BoundField DataField="Guild" HeaderText="Guild" SortExpression="Guild" ItemStyle-Width="20%"/>
            <asp:BoundField DataField="Language" HeaderText="Language" SortExpression="Language" ItemStyle-Width="20%"/>
            <asp:BoundField DataField="TimeAvailable" HeaderText="TimeAvailable" SortExpression="TimeAvailable" ItemStyle-Width="20%"/>
        </Columns>
    </asp:GridView>
    <% End If%>
</asp:Content>

