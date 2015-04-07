<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Gamerdetails.aspx.vb" Inherits="Admin_Gamerdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Gamer Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="sql_gamerdetails" runat="server" ConnectionString="<%$ ConnectionStrings:db_jimmy_HW7_LFG %>" DeleteCommand="DELETE FROM [jimmy_HW7_LFG] WHERE [UID] = @UID" InsertCommand="INSERT INTO [jimmy_HW7_LFG] ([GameID], [Nickname], [Server], [Class], [Rank], [AP], [Guild], [Language], [TimeAvailable]) VALUES (@GameID, @Nickname, @Server, @Class, @Rank, @AP, @Guild, @Language, @TimeAvailable)" SelectCommand="SELECT * FROM [jimmy_HW7_LFG] WHERE ([UID] = @UID)" UpdateCommand="UPDATE [jimmy_HW7_LFG] SET [GameID] = @GameID, [Nickname] = @Nickname, [Server] = @Server, [Class] = @Class, [Rank] = @Rank, [AP] = @AP, [Guild] = @Guild, [Language] = @Language, [TimeAvailable] = @TimeAvailable WHERE [UID] = @UID">
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
    <span class="lbl_notification"><asp:Label ID="lbl_delete" runat="server"></asp:Label>
    <asp:FormView ID="fv_gamerdetails" runat="server" DataKeyNames="UID" DataSourceID="sql_gamerdetails" HorizontalAlign="Center">
       <EditItemTemplate>
        <div id="validation_wrapper">
                <asp:RequiredFieldValidator ID="rfv_GameID" runat="server" ControlToValidate="GIDTextbox" ErrorMessage="Please enter a GameID" CssClass="validationError" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="rfv_Server" runat="server" ControlToValidate="ServerTextbox" ErrorMessage="Please enter a server name" CssClass="validationError" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="rfv_Class" runat="server" ControlToValidate="ClassTextBox" ErrorMessage="Please identify your class" CssClass="validationError" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <table id="table_gamerDetailsEdit">
                <tr>
                    <td class="left_column">GameID *</td>
                    <td class="right_column"><asp:TextBox ID="GIDTextBox" runat="server" Text='<%# Bind("GameID")%>' />
                          </td>
                </tr>
                <tr>
                        <td class="left_column">Server *</td>
                        <td class="right_column"><asp:TextBox ID="Servertextbox" runat="server" Text='<%# Bind("Server")%>' /></td>
                </tr>
                <tr>
                        <td class="left_column">Class *</td>
                        <td class="right_column"><asp:TextBox ID="Classtextbox" runat="server" Text='<%# Bind("Class")%>' /></td>
                </tr>
                <tr>
                    <td class="left_column">Rank</td>
                    <td class="right_column"><asp:TextBox ID="ranktb" runat="server" Text='<%# Bind("Rank")%>' /></td>
                </tr>
                <tr>
                        <td class="left_column">AP</td>
                        <td class="right_column"><asp:TextBox ID="aptb" runat="server" Text='<%# Bind("AP")%>' /></td>
                </tr>
                <tr>
                        <td class="left_column">Guild</td>
                        <td class="right_column"><asp:TextBox ID="guildtb" runat="server" Text='<%# Bind("Guild")%>' /></td>
                </tr>
                 <tr>
                    <td class="left_column">Language</td>
                    <td class="right_column"><asp:TextBox ID="languagetb" runat="server" Text='<%# Bind("Language")%>' /></td>
                </tr>
                <tr>
                        <td class="left_column">Time Available</td>
                        <td class="right_column"><asp:TextBox ID="timetb" runat="server" Text='<%# Bind("TimeAvailable")%>' /></td>
                </tr>
                
            </table> 
           <div id="details_edit_buttons" class="DetailsButtons">
                <asp:Button ID="btn_Update" runat="server" Text="Update" CausesValidation="True" CommandName="Update" CssClass="button" />
                <asp:Button ID="btn_CancelUpdate" runat="server" Text="Cancel" CausesValidation="False" CommandName="Cancel" CssClass="button" />
            </div> 
       </EditItemTemplate>
        <InsertItemTemplate>
           
            <table id="table_gamerDetailsinsert">
                <tr>
                    <td class="left_column">GameID *</td>
                    <td class="right_column"><asp:TextBox ID="GIDTextBox" runat="server" Text='<%# Bind("GameID")%>' /></td>
                </tr>
                <tr>
                        <td class="left_column">Server *</td>
                        <td class="right_column"><asp:TextBox ID="Servertextbox" runat="server" Text='<%# Bind("Server")%>' /></td>
                </tr>
                <tr>
                        <td class="left_column">Class *</td>
                        <td class="right_column"><asp:TextBox ID="Classtextbox" runat="server" Text='<%# Bind("Class")%>' /></td>
                </tr>
                <tr>
                    <td class="left_column">Rank</td>
                    <td class="right_column"><asp:TextBox ID="ranktb" runat="server" Text='<%# Bind("Rank")%>' /></td>
                </tr>
                <tr>
                        <td class="left_column">AP</td>
                        <td class="right_column"><asp:TextBox ID="aptb" runat="server" Text='<%# Bind("AP")%>' /></td>
                </tr>
                <tr>
                        <td class="left_column">Guild</td>
                        <td class="right_column"><asp:TextBox ID="guildtb" runat="server" Text='<%# Bind("Guild")%>' /></td>
                </tr>
                 <tr>
                    <td class="left_column">Language</td>
                    <td class="right_column"><asp:TextBox ID="languagetb" runat="server" Text='<%# Bind("Language")%>' /></td>
                </tr>
                <tr>
                        <td class="left_column">Time Available</td>
                        <td class="right_column"><asp:TextBox ID="timetb" runat="server" Text='<%# Bind("TimeAvailable")%>' /></td>
                </tr>
                
            </table> 
              <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
         
        </InsertItemTemplate>
        <ItemTemplate>
            <div id="validation_wrapper">
                <asp:RequiredFieldValidator ID="rfv_GameID" runat="server" ControlToValidate="GIDTextbox" ErrorMessage="Please enter a GameID" CssClass="validationError" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="rfv_Server" runat="server" ControlToValidate="ServerTextbox" ErrorMessage="Please enter a server name" CssClass="validationError" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="rfv_Class" runat="server" ControlToValidate="ClassTextBox" ErrorMessage="Please identify your class" CssClass="validationError" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <table id="table_gamerDetails">
                <tr>
                    <td class="left_column">GameID *</td>
                    <td class="right_column"><asp:TextBox ID="GIDTextBox" runat="server" Text='<%# Bind("GameID")%>' /></td>
                </tr>
                <tr>
                        <td class="left_column">Server *</td>
                        <td class="right_column"><asp:TextBox ID="Servertextbox" runat="server" Text='<%# Bind("Server")%>' /></td>
                </tr>
                <tr>
                        <td class="left_column">Class *</td>
                        <td class="right_column"><asp:TextBox ID="Classtextbox" runat="server" Text='<%# Bind("Class")%>' /></td>
                </tr>
                <tr>
                    <td class="left_column">Rank</td>
                    <td class="right_column"><asp:TextBox ID="ranktb" runat="server" Text='<%# Bind("Rank")%>' /></td>
                </tr>
                <tr>
                        <td class="left_column">AP</td>
                        <td class="right_column"><asp:TextBox ID="aptb" runat="server" Text='<%# Bind("AP")%>' /></td>
                </tr>
                <tr>
                        <td class="left_column">Guild</td>
                        <td class="right_column"><asp:TextBox ID="guildtb" runat="server" Text='<%# Bind("Guild")%>' /></td>
                </tr>
                 <tr>
                    <td class="left_column">Language</td>
                    <td class="right_column"><asp:TextBox ID="languagetb" runat="server" Text='<%# Bind("Language")%>' /></td>
                </tr>
                <tr>
                        <td class="left_column">Time Available</td>
                        <td class="right_column"><asp:TextBox ID="timetb" runat="server" Text='<%# Bind("TimeAvailable")%>' /></td>
                </tr>
                
            </table>  
            <div id="details_edit_buttons" class="DetailsButtons">
                <asp:Button ID="btn_Edit" runat="server" Text="Edit" CausesValidation="False" CommandName="Edit" CssClass="button" />
                <asp:Button ID="btn_Delete" runat="server" Text="Delete" CausesValidation="False" CommandName="Delete" CssClass="button" />
            </div>
        </ItemTemplate>
    </asp:FormView>
 
    </span></asp:Content>

