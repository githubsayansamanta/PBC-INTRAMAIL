Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class Trash
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        If Session("Username") <> "" Then
            Dim user As String = Session("Username")
            hlLogin.Visible = False
            lblUser.Text = user
            Dim type As String = "Trash"
            Dim dr As SqlDataReader
            Dim query As String = "select * from MailSend where MailId in (Select MailId from MailCc where UserTo='" + user + "' and MailType='" + type + "');"
            Dim com As New SqlCommand(query, con)
            dr = com.ExecuteReader
            gvTrash.DataSource = dr
            DataBind()
            If gvTrash.Rows.Count.ToString <> "0" Then
                lblCount.Text = "(" + gvTrash.Rows.Count.ToString + ")"
                lblMessage.Text = ""
            Else
                lblMessage.Text = "No message for your Trash."
                lblCount.Text = "(0)"
            End If
        Else
            lblUser.Text = "please to view your Trash"
            hlLogin.Visible = True
            btnLogout.Visible = False
        End If
        con.Close()
    End Sub

    Protected Sub btnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Session("Username") = ""
        Response.Redirect("Login.aspx")
    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        If Session("Username") <> "" Then
            lblUser.Text = Session("Username")
            Dim mailid As Integer = Integer.Parse(Session("MailId"))
            Dim query_del As String = "delete from MailSend where MailId=" & mailid & "; "
            Dim com_del As New SqlCommand(query_del, con)
            Dim query_cc As String = "delete from MailCc where MailId=" & mailid & ";"
            Dim com_cc As New SqlCommand(query_cc, con)
            com_cc.ExecuteNonQuery()
            lblCount.Text = "(" + gvTrash.Rows.Count.ToString + ")"
            Response.Redirect("Trash.aspx")

        Else
            lblUser.Text = "please to view your Trash"
        End If
        con.Close()
    End Sub

    Protected Sub btnRestore_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRestore.Click
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()
        Dim Type As String = "Inbox"
        Dim mailId As Integer = Integer.Parse(Session("MailId"))
        If Session("Username") = "" Then
            lblUser.Text = "please to view your Trash"
        Else
            Dim query_store As String = "update MailCc set MailType='" + Type + "' where UserTo='" + Session("Username") + "' and MailId=" & mailId & ";"
            Dim com_store As New SqlCommand(query_store, sqlcon)
            com_store.ExecuteNonQuery()
            lblCount.Text = "(" + gvTrash.Rows.Count.ToString + ")"
            Response.Redirect("Inbox.aspx")
            sqlcon.Close()
        End If
    End Sub

    Protected Sub gvTrash_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gvTrash.RowCommand
        If e.CommandName = "Select" Then
            Session("MailId") = e.CommandArgument
            btnDelete.Visible = True
            btnRestore.Visible = True
        End If
    End Sub
End Class
