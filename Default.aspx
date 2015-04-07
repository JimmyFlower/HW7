<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Welcome to the <span id="NYAN">NYAN's</span> <span id="LFG">Looking For Group  </span>page</h2>
    <asp:Image ID="img_logo" runat="server" ImageUrl="~/CSS/Images/Logo.png" ToolTip="Welcome to NYAN" CssClass="image"/>

</asp:Content>

