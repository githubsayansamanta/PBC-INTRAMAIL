Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class AdminForword
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        If Session("Admin") <> "" Then
            lblUser.Text = Session("Admin")
            hlLogin.Visible = False
            Dim mailid As Integer = Integer.Parse(Session("ForwordMailId"))
            Dim query_select As String = "select * from MailSend where MailId=" & mailid & ";"
            Dim com_da As New SqlDataAdapter(query_select, conn)
            Dim ds As New DataSet
            com_da.Fill(ds)
            txtSubject.Text = ds.Tables(0).Rows(0)(2)
            txtMessage.Text = ds.Tables(0).Rows(0)(3)
            If ds.Tables(0).Rows(0)(4) <> "" Then
                hlAttachment.NavigateUrl = ds.Tables(0).Rows(0)(4)
                hlAttachment.Text = "Click to view"
            Else
                hlAttachment.Text = "No Attachment send"
            End If
            conn.Close()
        Else
            lblUser.Text = " to forword mail."
            hlLogin.Visible = True
            btnLogout.Visible = False
        End If
    End Sub

    Protected Sub btnSend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSend.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        Dim Username, sendDate, AttachPath, Send_type, mail_type, userTo As String
        sendDate = System.DateTime.Now.ToString
        If hlAttachment.NavigateUrl <> "" Then
            AttachPath = hlAttachment.NavigateUrl
        Else
            AttachPath = ""
        End If
        Send_type = "Sent"
        mail_type = "Inbox"
        Username = Session("Admin")
        If Username = "" Then
            lblUser.Text = " to forword mail."
        Else
            Dim query_send As String = "insert into MailSend values('" + Username + "','" + txtSubject.Text + "','" + txtMessage.Text + "','" + AttachPath + "','" + sendDate + "','" + Send_type + "');"
            Dim com_send As New SqlCommand(query_send, con)
            com_send.ExecuteNonQuery()
            Dim query_select As String = "select MailId from MailSend   where UserFrom='" + Username + "'and DateTime='" + sendDate + "';"
            Dim com_select As New SqlCommand(query_select, con)
            Dim mailID As Integer = com_select.ExecuteScalar
            If txtUserto.Text = "All" Then
                Dim query_count As String = "select UserName from UserCredentials ;"
                Dim com_count As New SqlDataAdapter(query_count, con)
                Dim ds As New DataSet
                com_count.Fill(ds)
                Dim n As Integer = Integer.Parse(ds.Tables(0).Rows.Count)
                Dim i As Integer
                For i = 0 To n - 1
                    userTo = ds.Tables(0).Rows(i)(0)
                    Dim query_all As String = "insert into MailCc values('" & mailID & "','" + userTo + "','" + mail_type + "');"
                    Dim com_all As New SqlCommand(query_all, con)
                    com_all.ExecuteNonQuery()
                Next
            Else
                userTo = txtUserto.Text
                Dim query_cc As String = "insert into MailCc values('" & mailID & "','" + userTo + "','" + mail_type + "');"
                Dim com_cc As New SqlCommand(query_cc, con)
                com_cc.ExecuteNonQuery()
            End If
            Response.Redirect("AdminSent.aspx")
        End If
        con.Close()
    End Sub

    Protected Sub btnCancle_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancle.Click
        Response.Redirect("AdminSentDetails.aspx")
    End Sub

    Protected Sub btnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Session("Admin") = ""
        Response.Redirect("AdminLogin.aspx")
    End Sub
End Class
