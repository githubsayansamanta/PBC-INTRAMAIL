Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class Compose
    Inherits System.Web.UI.Page

    Protected Sub btnSend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSend.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        If Session("Username") = "" Then
            lblUser.Text = " to create compose mail."
        Else
            Dim query_check As String = "select BlackListedUser from BlackList where UserName='" + txtUserto.Text + "' and BlackListedUser='" + Session("Username") + "';"
            Dim com_check As New SqlCommand(query_check, con)
            If com_check.ExecuteScalar = "" Then
                Dim Username, sendDate, AttachPath, Send_type, mail_type As String
                sendDate = System.DateTime.Now.ToString
                Send_type = "Sent"
                mail_type = "Inbox"
                Username = Session("Username")
                If fuAttachment.HasFile = True Then
                    fuAttachment.PostedFile.SaveAs(Server.MapPath(".") + "//Attachments//" + (Username + fuAttachment.FileName))
                    AttachPath = "~//Attachments//" + (Username + fuAttachment.FileName)
                Else
                    AttachPath = ""
                End If
                Dim query_send As String = "insert into MailSend values('" + Username + "','" + txtSubject.Text + "','" + txtMessage.Text + "','" + AttachPath + "','" + sendDate + "','" + Send_type + "');"
                Dim com_send As New SqlCommand(query_send, con)
                com_send.ExecuteNonQuery()
                Dim query_select As String = "select MailId from MailSend   where UserFrom='" + Username + "'and DateTime='" + sendDate + "';"
                Dim com_select As New SqlCommand(query_select, con)
                Dim mailID As Integer = com_select.ExecuteScalar
                Dim query_cc As String = "insert into MailCc values('" & mailID & "','" + txtUserto.Text + "','" + mail_type + "');"
                Dim com_cc As New SqlCommand(query_cc, con)
                com_cc.ExecuteNonQuery()
                Response.Redirect("Sent.aspx")
            Else
                lblBlock.Text = "You are blocked by this user."
            End If
        End If
        con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Username") <> "" Then
            hlLogin.Visible = False
            lblUser.Text = Session("Username")
        Else
            lblUser.Text = " to create compose mail."
            hlLogin.Visible = True
            btnLogout.Visible = False
        End If
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()
        Dim Username, sendDate, AttachPath As String
        sendDate = System.DateTime.Now.ToString
        Username = Session("Username")
        If Username = "" Then
            lblUser.Text = " to create compose mail."
        Else
            If fuAttachment.HasFile = True Then
                fuAttachment.PostedFile.SaveAs(Server.MapPath(".") + "//Attachments//" + (Username + fuAttachment.FileName))
                AttachPath = "~//Attachments//" + (Username + fuAttachment.FileName)
            Else
                AttachPath = ""
            End If
            Dim query_save As String = "insert into Draft values('" + Username + "','" + txtUserto.Text + "','" + txtSubject.Text + "','" + txtMessage.Text + "','" + AttachPath + "','" + sendDate + "');"
            Dim com_save As New SqlCommand(query_save, sqlcon)
            com_save.ExecuteNonQuery()
            Response.Redirect("Draft.aspx")
        End If
        sqlcon.Close()
    End Sub

    Protected Sub btnCancle_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancle.Click
        Response.Redirect("Inbox.aspx")
    End Sub

    Protected Sub btnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Session("Username") = ""
        Response.Redirect("Login.aspx")
    End Sub
End Class
