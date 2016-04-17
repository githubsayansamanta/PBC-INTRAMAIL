Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class Login
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        If txtUsername.Text <> "" And txtPassword.Text <> "" Then
            Dim check_block, password_database, get_password, get_username As String
            get_username = txtUsername.Text
            get_password = txtPassword.Text
            Dim query_pass As String = "select Password from UserCredentials where UserName='" + get_username + "';"
            Dim query_check As String = "select Block from UserCredentials where UserName='" + get_username + "';"
            Dim comPass As New SqlCommand(query_pass, con)
            Dim comCheck As New SqlCommand(query_check, con)
            password_database = comPass.ExecuteScalar
            check_block = comCheck.ExecuteScalar
            If get_password = password_database And check_block = "No" Then
                'insert login date time into UserLogin Table.
                Dim loginDate As String = System.DateTime.Now.ToString
                Dim query_login As String = "insert into UserLogin values('" + get_username + "' , '" + loginDate + "');"
                Dim comLogin As New SqlCommand(query_login, con)
                comLogin.ExecuteNonQuery()
                con.Close()
                Session("Username") = get_username
                Response.Redirect("Inbox.aspx")
            Else
                lblMessage.Text = "Invalid username or password or you are blocked."
            End If
        Else
            lblMessage.Text = "Inser your username and passsword."
        End If
    End Sub
End Class
