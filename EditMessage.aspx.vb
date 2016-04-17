Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class ComposeDraft
    Inherits System.Web.UI.Page

    Protected Sub btnSend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSend.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        Dim Username, sendDate, AttachPath, Send_type, mail_type, subject, body, userto As String
        sendDate = System.DateTime.Now.ToString
        Send_type = "Sent"
        mail_type = "Inbox"
        If hlAttachment.NavigateUrl <> "" Then
            AttachPath = hlAttachment.NavigateUrl
        Else
            AttachPath = ""
        End If
        Dim draftId As Integer = Integer.Parse(Session("DraftId"))
        Username = Session("Username")
        subject = txtSubject.Text
        body = txtMessage.Text
        userto = txtUserto.Text
        If Session("Username") = "" Then
            lblUser.Text = " to view save message."
        Else
            Dim query_send As String = "insert into MailSend values('" + Username + "','" + subject + "','" + body + "','" + AttachPath + "','" + sendDate + "','" + Send_type + "');"
            Dim com_send As New SqlCommand(query_send, con)
            com_send.ExecuteNonQuery()
            Dim query_select As String = "select MailId from MailSend   where UserFrom='" + Username + "'and DateTime='" + sendDate + "';"
            Dim com_select As New SqlCommand(query_select, con)
            Dim mailID As Integer = com_select.ExecuteScalar
            Dim query_cc As String = "insert into MailCc values(" & mailID & ",'" + userto + "','" + mail_type + "');"
            Dim com_cc As New SqlCommand(query_cc, con)
            com_cc.ExecuteNonQuery()
            Dim query_del As String = "delete from Draft where DraftId=" & draftId & ";"
            Dim com_del As New SqlCommand(query_del, con)
            com_del.ExecuteNonQuery()
            Response.Redirect("Sent.aspx")
        End If
        con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        If Session("Username") <> "" Then
            hlLogin.Visible = False
            lblUser.Text = Session("Username")
            If Session("DraftId") <> "" Then
                Dim draftId As Integer = Integer.Parse(Session("DraftId"))
                Dim query_draft As String = "select * from Draft where DraftId=" & draftId & ";"
                Dim da_draft As New SqlDataAdapter(query_draft, conn)
                Dim ds As New DataSet
                da_draft.Fill(ds)
                If ds.Tables(0).Rows(0)(2) <> "" Then
                    txtUserto.Text = ds.Tables(0).Rows(0)(2)
                End If
                If ds.Tables(0).Rows(0)(3) <> "" Then
                    txtSubject.Text = ds.Tables(0).Rows(0)(3)
                End If
                If ds.Tables(0).Rows(0)(4) <> "" Then
                    txtMessage.Text = ds.Tables(0).Rows(0)(4)
                End If
                If ds.Tables(0).Rows(0)(5) <> "" Then
                    hlAttachment.NavigateUrl = ds.Tables(0).Rows(0)(5)
                    hlAttachment.Text = "Click to view"
                Else
                    hlAttachment.Text = "No attachment save."
                End If
            End If
            conn.Close()
        Else
            lblUser.Text = " at first to see save message."
            hlLogin.Visible = True
            btnLogout.Visible = False
            hlAttachment.Visible = False
        End If

    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()
        If Session("Username") <> "" Then
            hlLogin.Visible = False
            lblUser.Text = Session("Username")
            Dim draftId As Integer = Integer.Parse(Session("DraftId"))
            Dim query_del As String = "delete from Draft where DraftId=" & draftId & ";"
            Dim com_del As New SqlCommand(query_del, sqlcon)
            com_del.ExecuteNonQuery()
            Response.Redirect("Draft.aspx")
            sqlcon.Close()
        End If
    End Sub

    Protected Sub btnCancle_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancle.Click
        Response.Redirect("Draft.aspx")
    End Sub
End Class
