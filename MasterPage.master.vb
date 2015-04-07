
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        ' Display the date to currentTime label
        lbl_currentTime.Text = DateTime.Now.ToLongDateString

        
        If Not Roles.IsUserInRole("admin") Then
            Dim menuItems As MenuItemCollection = menu_Master.Items
            Dim adminItem As New MenuItem()
            For Each MenuItem As MenuItem In menuItems
                If MenuItem.Value = "Manage Users" Then
                    adminItem = MenuItem
                End If
            Next
            menuItems.Remove(adminItem)
        End If

        If Not Roles.IsUserInRole("admin") Then
            Dim menuItems As MenuItemCollection = menu_Master.Items
            Dim adminItem As New MenuItem()
            For Each MenuItem As MenuItem In menuItems
                If MenuItem.Value = "Admingamer" Then
                    adminItem = MenuItem
                End If
            Next
            menuItems.Remove(adminItem)
        End If

        If Roles.IsUserInRole("admin") Then
            Dim menuItems As MenuItemCollection = menu_Master.Items
            Dim adminItem As New MenuItem()
            For Each MenuItem As MenuItem In menuItems
                If MenuItem.Value = "Contact Us" Then
                    adminItem = MenuItem
                End If
            Next
            menuItems.Remove(adminItem)
        End If

        If Roles.IsUserInRole("admin") Then
            Dim menuItems As MenuItemCollection = menu_Master.Items
            Dim adminItem As New MenuItem()
            For Each MenuItem As MenuItem In menuItems
                If MenuItem.Value = "About Us" Then
                    adminItem = MenuItem
                End If
            Next
            menuItems.Remove(adminItem)
        End If

        If Roles.IsUserInRole("admin") Then
            Dim menuItems As MenuItemCollection = menu_Master.Items
            Dim adminItem As New MenuItem()
            For Each MenuItem As MenuItem In menuItems
                If MenuItem.Value = "Gamers" Then
                    adminItem = MenuItem
                End If
            Next
            menuItems.Remove(adminItem)
        End If

    End Sub

End Class

