
Partial Class Admin_Gamerdetails
    Inherits System.Web.UI.Page

    Protected Sub fv_gamerDetails_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles fv_gamerdetails.ItemDeleted

        Dim delete As String = e.Values("GameID").ToString

        lbl_delete.Text = delete & " has been deleted from the database."

        Response.AddHeader("REFRESH", "1;URL=./gamerlist.aspx")

    End Sub

    Protected Sub fv_gamerDetails_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles fv_gamerdetails.ItemUpdated

        Response.AddHeader("REFRESH", "3;URL=./gamerlist.aspx")

    End Sub
End Class
