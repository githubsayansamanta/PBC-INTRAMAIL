Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class Inbox
    Inherits System.Web.UI.Page

    Protected Sub btnView_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnView.Click
        Response.Redirect("MessageDetails.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        If Session("Username") <> "" Then
            Dim user As String = Session("Username")
            hlLogin.Visible = False
            lblUser.Text = user
            Dim type As String = "Inbox"
            Dim dr As SqlDataReader
            Dim query As String = "select * from MailSend where MailId in (Select MailId from MailCc where UserTo='" + user + "' and MailType='" + type + "');"
            Dim com As New SqlCommand(query, con)
            dr = com.ExecuteReader
            gvInbox.DataSource = dr
            DataBind()
            If gvInbox.Rows.Count.ToString <> "0" Then
                lblCount.Text = "(" + gvInbox.Rows.Count.ToString + ")"
                lblMessage.Text = ""
            Else
                lblMessage.Text = "No message for your Inbox."
                lblCount.Text = "(0)"
            End If
        Else
            lblUser.Text = " please to view your inbox."
            hlLogin.Visible = True
            btnLogout.Visible = False
            con.Close()
        End If
    End Sub

    Protected Sub btnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Session("Username") = ""
        Response.Redirect("Login.aspx")
    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()
        Dim Type As String = "Trash"
        If Session("Username") = "" Then
            lblUser.Text = "Login first go to Login page."
        Else
            Dim query_del As String = "update MailCc set MailType='" + Type + "' where mailId='" + Session("MailId") + "';"
            Dim com_del As New SqlCommand(query_del, sqlcon)
            com_del.ExecuteNonQuery()
            lblCount.Text = "(" + gvInbox.Rows.Count.ToString + ")"
            Response.Redirect("Inbox.aspx")
            sqlcon.Close()
        End If

    End Sub

    Protected Sub gvInbox_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gvInbox.RowCommand
        If e.CommandName = "Select" Then
            Session("MailId") = e.CommandArgument
            btnDelete.Visible = True
            btnView.Visible = True
        End If
    End Sub
End Class
