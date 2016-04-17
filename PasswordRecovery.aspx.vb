Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class Password
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        If txtUser.Text = Session("user") Then
            Dim query_pass As String = "update UserCredentials set Password='" + txtPassword.Text + "' where UserName='" + txtUser.Text + "';"
            Dim com_pass As New SqlCommand(query_pass, con)
            com_pass.ExecuteNonQuery()
            Session("Username") = txtUser.Text
            Response.Redirect("Inbox.aspx")
            con.Close()
        Else
            lblMessage.Text = "Your username is not match."
        End If
    End Sub

    Protected Sub btnOk_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnOk.Click
        Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        Dim query_sel As String = "select UserName from Security where UserHoby='" + txtHoby.Text + "' and UserGame='" + txtGame.Text + "';"
        Dim com_sel As New SqlCommand(query_sel, conn)
        Dim user As String = com_sel.ExecuteScalar
        If user <> "" Then
            Session("user") = user
            PanelPassword.Visible = True
            PanelQuestions.Visible = False
        Else
            lblError.Text = "You are not authenticate."
        End If
        conn.Close()
    End Sub
End Class
