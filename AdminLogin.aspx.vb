Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class AdminLogin
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        Dim password_database, get_password, get_username As String
        get_username = txtUsername.Text
        get_password = txtPassword.Text
        Dim query_pass As String = "select Password from Admin where AdminUserName='" + get_username + "';"
        Dim comPass As New SqlCommand(query_pass, con)
        password_database = comPass.ExecuteScalar
        If get_password = password_database Then
            Session("Admin") = get_username
            Response.Redirect("AdminInbox.aspx")
        Else
            lblMessage.Text = "Invalid Username or Password"
        End If
        con.Close()
    End Sub
End Class
