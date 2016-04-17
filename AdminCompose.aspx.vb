Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class AdminCompose
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Admin") <> "" Then
            lblUser.Text = Session("Admin")
            hlLogin.Visible = False
            If drpTo.SelectedValue = "All" Then
                txtUserto.Visible = False
            Else
                txtUserto.Visible = True
            End If
        Else
            lblUser.Text = " to create compose mail."
            hlLogin.Visible = True
            btnLogout.Visible = False
        End If
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()
        Dim Username, sendDate, AttachPath, userTo As String
        sendDate = System.DateTime.Now.ToString
        If drpTo.SelectedValue = "All" Then
            userTo = "All"
        Else
            userTo = txtUserto.Text
        End If
        Username = Session("Admin")
        If Username = "" Then
            lblUser.Text = " to create compose mail."
        Else
            If fuAttachment.HasFile = True Then
                fuAttachment.PostedFile.SaveAs(Server.MapPath(".") + "//Attachments//" + (Username + fuAttachment.FileName))
                AttachPath = "~//Attachments//" + (Username + fuAttachment.FileName)
            Else
                AttachPath = ""
            End If
            Dim query_save As String = "insert into Draft values('" + Username + "','" + userTo + "','" + txtSubject.Text + "','" + txtMessage.Text + "','" + AttachPath + "','" + sendDate + "');"
            Dim com_save As New SqlCommand(query_save, sqlcon)
            com_save.ExecuteNonQuery()
            Response.Redirect("AdminDraft.aspx")
        End If
        sqlcon.Close()
    End Sub

    Protected Sub btnCancle_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancle.Click
        Session("UserTo") = ""
        Response.Redirect("AdminInbox.aspx")
    End Sub

    Protected Sub btnSend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSend.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        Dim Username, sendDate, AttachPath, Send_type, mail_type, userTo As String
        sendDate = System.DateTime.Now.ToString
        Send_type = "Sent"
        mail_type = "Inbox"
        Username = Session("Admin")
        If Username = "" Then
            lblUser.Text = " to create compose mail."
        Else
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
            If drpTo.SelectedValue = "All" Then
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
            con.Close()
            Response.Redirect("AdminSent.aspx")
        End If
    End Sub

    Protected Sub btnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Session("Admin") = ""
        Response.Redirect("AdminLogin.aspx")
    End Sub
End Class
