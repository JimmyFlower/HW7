'Add these two imports so you have access to the mail features.
Imports System.Net.Mail
Imports System.Net

Partial Class ContactUs
    Inherits System.Web.UI.Page

    Protected Sub sendMail_Click(sender As Object, e As EventArgs) Handles sendMail.Click

        Dim msg As New MailMessage
        Dim client As New SmtpClient

        Dim sendersName As String
        Dim sendersEmail As String
        Dim sendersSubject As String
        Dim sendersMessage As String

        sendersName = senderName.Text.ToString()
        sendersEmail = senderAddress.Text.ToString()
        sendersSubject = senderSubject.Text.ToString()
        sendersMessage = senderMessage.Text.ToString().Replace(Environment.NewLine, "<br />")


        msg.To.Add("michael-colbert@uiowa.edu")
        msg.From = New MailAddress("ui.6k183@gmail.com")
        msg.ReplyToList.Add(sendersEmail)
        msg.Subject = sendersSubject
        msg.Body = sendersMessage
        msg.IsBodyHtml = True


        client.Host = "smtp.gmail.com"
        client.Port = 587
        client.Credentials = New NetworkCredential("ui.6k183", "6k183U*I")
        client.EnableSsl = True
        client.Send(msg)

   
        senderAddress.Text = ""
        senderMessage.Text = ""


        confirmSent.Text = "Thank you.  Your message has been sent."


        Response.AddHeader("REFRESH", "2;URL=default.aspx")

    End Sub
End Class
