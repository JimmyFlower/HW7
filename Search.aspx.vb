Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub tb_Search1_TextChanged(sender As Object, e As EventArgs) Handles tb_Search1.TextChanged
        Dim search1 As String
        tb_search2.Text = String.Empty
        search1 = "Select * From jimmy_HW7_LFG Where (Class like '%" + tb_Search1.Text.ToString() + "%') or (rank like '%" + tb_Search1.Text.ToString() + "%')"
        sql_gamerSearch.SelectCommand = search1
    End Sub

    Protected Sub tb_search2_TextChanged(sender As Object, e As EventArgs) Handles tb_search2.TextChanged
        Dim search2 As String
        tb_Search1.Text = String.Empty
        search2 = "Select * From jimmy_HW7_LFG Where (Class like '%" + tb_search2.Text.ToString() + "%') or (rank like '%" + tb_search2.Text.ToString() + "%')"
        sql_gamerSearch.SelectCommand = search2
    End Sub
End Class