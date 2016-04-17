Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class SentDetails
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        If Session("Username") <> "" Then
            lblUser.Text = Session("Username")
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
                Dim query_name As String = "select * from UserDetails where UserName='" + Session("Username") + "';"
                Dim com_name As New SqlDataAdapter(query_name, conn)
                Dim dn As New DataSet
                com_name.Fill(dn)
                lblName.Text = dn.Tables(0).Rows(0)(1) + " " + dn.Tables(0).Rows(0)(2)
                lblSubject.Text = ds.Tables(0).Rows(0)(2)
                lblBody.Text = ds.Tables(0).Rows(0)(3)
                If ds.Tables(0).Rows(0)(4) <> "" Then
                    hlAttachment.NavigateUrl = ds.Tables(0).Rows(0)(4)
                    hlAttachment.Text = "Click to View"
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

    Protected Sub btnForword_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnForword.Click
        Response.Redirect("Forword.aspx")
    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        If Session("Username") <> "" Then
            lblUser.Text = Session("Username")
            Dim sent_type As String = "Delete"
            Dim mailid As Integer = Integer.Parse(Session("MailId"))
            Dim query_del As String = "update MailSend set SentType='" + sent_type + "' where MailId=" & mailid & ";"
            Dim com_del As New SqlCommand(query_del, con)
            com_del.ExecuteNonQuery()
            Response.Redirect("Sent.aspx")
            con.Close()
        Else
            lblUser.Text = " please to view sent Message."
        End If
    End Sub

    Protected Sub btnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Session("Username") = ""
        Response.Redirect("Login.aspx")
    End Sub
End Class
