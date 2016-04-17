Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class AdminSentDetails
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        If Session("Admin") <> "" Then
            lblUser.Text = Session("Admin")
            hlLogin.Visible = False
            If Session("MailId") <> "" Then
                Dim mailId As Integer = Integer.Parse(Session("MailId"))
                Dim query_sent As String = "select * from MailSend where MailId=" & mailId & ";"
                Dim da_sent As New SqlDataAdapter(query_sent, conn)
                Dim query_cc As String = "select UserTo from MailCc where MailId=" & mailId & ";"
                Dim com_cc As New SqlCommand(query_cc, conn)
                lblTo.Text = com_cc.ExecuteScalar
                Dim ds As New DataSet
                da_sent.Fill(ds)
                lblSubject.Text = ds.Tables(0).Rows(0)(2)
                lblBody.Text = ds.Tables(0).Rows(0)(3)
                If ds.Tables(0).Rows(0)(4) <> "" Then
                    hlAttachment.NavigateUrl = ds.Tables(0).Rows(0)(4)
                    hlAttachment.Text = "Click to view attachment"
                Else
                    hlAttachment.Text = "No attachment send"
                    lblDate.Text = ds.Tables(0).Rows(0)(5)
                    conn.Close()
                End If
            End If
        Else
            lblUser.Text = " please to view your sent details."
            hlLogin.Visible = True
            btnLogout.Visible = False
            hlAttachment.Visible = False
        End If

    End Sub

    Protected Sub btnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Session("Admin") = ""
        Response.Redirect("AdminLogin.aspx")
    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        If Session("Admin") <> "" Then
            Dim user As String = Session("Admin")
            lblUser.Text = Session("Admin")
            Dim sent_type As String = "Delete"
            Dim query_del As String = "update MailSend set SentType='" + sent_type + "' where MailId='" + Session("MailId") + "';"
            Dim com_del As New SqlCommand(query_del, conn)
            com_del.ExecuteNonQuery()
            Response.Redirect("AdminSent.aspx")
            conn.Close()
        Else
            lblUser.Text = " please to view your inbox."
        End If
    End Sub

    Protected Sub btnForword_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnForword.Click
        Session("ForwordMailId") = Session("MailId")
        Response.Redirect("AdminForword.aspx")

    End Sub
End Class
