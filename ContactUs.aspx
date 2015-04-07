<%@ Page Title="Contact Us" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Contact Us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="contact_container">
        <h2>Contact Us</h2>
        

        <div id="contact_table_container">
            <!-- Check to see if you are in postback.  If not, display the contact form. -->
                <% If Not IsPostBack Then%>
                <div id="validation_wrapper">
                </div>
                <table id="contact_table">
                    <tr>
                        <td class="left_column">Your name</td>
                        <td class="right_column"><asp:TextBox ID="senderName" runat="server" placeholder="First and last name" CssClass="textbox" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv_name" runat="server" ControlToValidate="senderName" ErrorMessage="Please enter your name " CssClass="validationError" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="left_column">Your email address</td>
                        <td class="right_column"><asp:TextBox ID="senderAddress" runat="server" placeholder="Preferred email address" CssClass="textbox" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv_email" runat="server" ControlToValidate="senderAddress" ErrorMessage="Please enter your email address " CssClass="validationError" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="left_column">Your subject</td>
                        <td class="right_column"><asp:TextBox ID="senderSubject" runat="server" placeholder="Please enter a subject" CssClass="textbox" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv_subject" runat="server" ControlToValidate="senderSubject" ErrorMessage="Please enter a email subject" CssClass="validationError" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="left_column">Your message</td>
                        <td class="right_column">
                    <asp:RequiredFieldValidator ID="rfv_message" runat="server" ControlToValidate="senderMessage" ErrorMessage="Please enter a message " CssClass="validationError" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="senderMessage" runat="server" Rows="20" TextMode="MultiLine" placeholder="Please enter your message" CssClass="textbox" ></asp:TextBox></td>
                    </tr>
                </table>
                <div id="contact_buttons">
                    <asp:Button ID="sendMail" CssClass="button" runat="server" Text="Send" />
                </div>
            <!-- If you are in postback, display the confirmation label. -->
            <%Else%>

            <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

            <!-- End your 'If' statement. -->
            <%End If%>
        </div> <!-- End contact_table div -->
    </div> <!-- End contact_container div -->
</asp:Content>

