Partial Class Admin_NewGamer
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        fv_gamerdetails.Focus()
    End Sub



    Protected Sub fv_gamerdetails_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles fv_gamerdetails.ItemInserted
        Response.Redirect("./gamerlist.aspx")
    End Sub
End Class

