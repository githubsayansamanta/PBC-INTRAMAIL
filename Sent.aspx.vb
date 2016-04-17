Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class Sent
    Inherits System.Web.UI.Page

    Protected Sub btnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Session("Username") = ""
        Response.Redirect("Login.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        If Session("Username") <> "" Then
            Dim user As String = Session("Username")
            Dim sent_type As String = "Sent"
            hlLogin.Visible = False
            lblUser.Text = user
            Dim dr As SqlDataReader
            Dim query As String = "select MailSend.MailId,UserFrom,UserTo,Subject,AttachmentPath,DateTime from MailSend,MailCc where MailSend.MailId=MailCc.MailId and SentType='" + sent_type + "' and UserFrom='" + user + "';"
            Dim com As New SqlCommand(query, con)
            dr = com.ExecuteReader
            gvSent.DataSource = dr
            DataBind()
            If gvSent.Rows.Count.ToString <> "0" Then
                lblCount.Text = "(" + gvSent.Rows.Count.ToString + ")"
                lblMessage.Text = ""
            Else
                lblMessage.Text = "No message you Sent."
                lblCount.Text = "(0)"
            End If
        Else
            lblUser.Text = " please to view your inbox."
            hlLogin.Visible = True
            btnLogout.Visible = False
        End If
        con.Close()
    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        If Session("Username") <> "" Then
            lblUser.Text = Session("Username")
            Dim sent_type As String = "Delete"
            Dim mailid As Integer = Integer.Parse(Session("MailId"))
            Dim query_del As String = "update MailSend set SentType='" + sent_type + "' where MailId=" & mailid & ";"
            Dim com_del As New SqlCommand(query_del, conn)
            com_del.ExecuteNonQuery()
            Response.Redirect("Sent.aspx")
            conn.Close()
        Else
            lblUser.Text = " please to view your inbox."
        End If
    End Sub

    Protected Sub gvSent_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gvSent.RowCommand
        If e.CommandName = "Select" Then
            Session("MailId") = e.CommandArgument
            btnView.Visible = True
            btnDelete.Visible = True
        End If
    End Sub

    Protected Sub btnView_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnView.Click
        Response.Redirect("SentDetails.aspx")
    End Sub
End Class
