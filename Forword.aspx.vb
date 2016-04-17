Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class Forword
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        If Session("Username") <> "" Then
            lblUser.Text = Session("Username")
            hlLogin.Visible = False
            Dim mailid As Integer = Integer.Parse(Session("MailId"))
            Dim query_select As String = "select * from MailSend where MailId=" & mailid & ";"
            Dim com_da As New SqlDataAdapter(query_select, conn)
            Dim ds As New DataSet
            com_da.Fill(ds)
            txtSubject.Text = ds.Tables(0).Rows(0)(2)
            txtMessage.Text = ds.Tables(0).Rows(0)(3)
            If ds.Tables(0).Rows(0)(4) <> "" Then
                hlAttachment.NavigateUrl = ds.Tables(0).Rows(0)(4)
                hlAttachment.Text = "Click to View"
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
        userTo = txtUserto.Text
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
            Dim query_cc As String = "insert into MailCc values('" & mailID & "','" + userTo + "','" + mail_type + "');"
            Dim com_cc As New SqlCommand(query_cc, con)
            com_cc.ExecuteNonQuery()
            Response.Redirect("Sent.aspx")
        End If
    End Sub

    Protected Sub btnCancle_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancle.Click
        Response.Redirect("SentDetails.aspx")
    End Sub

    Protected Sub btnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Session("Username") = ""
        Response.Redirect("Login.aspx")
    End Sub
End Class
