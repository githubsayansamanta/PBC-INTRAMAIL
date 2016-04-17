Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class Message
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        If Session("Username") <> "" Then
            hlLogin.Visible = False
            lblUser.Text = Session("Username")
            Dim mailID As Integer = Integer.Parse(Session("MailId"))
            Dim query_mailDetails As String = "Select * from MailSend where MailId=" & mailID & ";"
            Dim da As New SqlDataAdapter(query_mailDetails, con)
            Dim ds As New DataSet
            da.Fill(ds)
            lblFrom.Text = ds.Tables(0).Rows(0)(1)
            Session("from") = ds.Tables(0).Rows(0)(1)
            txtUserto.Text = lblFrom.Text
            Dim query_select As String = "select BlackListedUser from BlackList where UserName='" + Session("Username") + "' and BlackListedUser='" + Session("from") + "';"
            Dim com_select As New SqlCommand(query_select, con)
            If com_select.ExecuteScalar <> "" Then
                btnUnblock.Visible = True
                btnBlock.Visible = False
            Else
                btnUnblock.Visible = False
                btnBlock.Visible = True
            End If
            Dim query_admin As String = "select AdminUserName from Admin ;"
            Dim com_admin As New SqlCommand(query_admin, con)
            If txtUserto.Text = com_admin.ExecuteScalar Then
                btnReply.Visible = False
                btnBlock.Visible = False
                btnUnblock.Visible = False
                btnReport.Visible = False
                lblBlock.Text = ""
            End If
            lblSubject.Text = ds.Tables(0).Rows(0)(2)
            lblBody.Text = ds.Tables(0).Rows(0)(3)
            lblDate.Text = ds.Tables(0).Rows(0)(5)
            If ds.Tables(0).Rows(0)(4) <> "" Then
                hlAttachment.NavigateUrl = ds.Tables(0).Rows(0)(4)
                hlAttachment.Text = "Click to download"
            Else
                hlAttachment.Text = "No attachment with this mail."
                con.Close()
            End If
        Else
            lblUser.Text = " to view your Message."
            hlLogin.Visible = True
            btnLogout.Visible = False
            hlAttachment.Visible = False
            btnReply.Enabled = False
            btnDelete.Enabled = False
            btnBlock.Enabled = False
            btnReport.Enabled = False
            btnUnblock.Enabled = False
        End If
    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        If Session("Username") <> "" Then
            lblUser.Text = Session("Username")
            Dim Mailid As Integer = Session("MailId")
            Dim Type As String = "Trash"
            Dim query_del As String = "update MailCc set MailType='" + Type + "' where UserTo='" + Session("Username") + "'  and MailId=" & Mailid & ";"
            Dim com_del As New SqlCommand(query_del, con)
            com_del.ExecuteNonQuery()
            Response.Redirect("Inbox.aspx")
            con.Close()
        Else
            lblUser.Text = " to view your Message."
        End If
    End Sub

    Protected Sub btnReport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnReport.Click
        Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        If Session("Username") <> "" Then
            lblUser.Text = Session("Username")
            Dim mailID As Integer = Integer.Parse(Session("MailId"))
            Dim check As String = "select MailId from ReportAbuse where MailId=" & mailID & ";"
            Dim sqlcom_check As New SqlCommand(check, conn)
            If sqlcom_check.ExecuteScalar.ToString <> "" Then
                lblBlock.Text = "You have already reported abused this mail."
            Else
                Dim query_report As String = "insert into ReportAbuse values(" & mailID & ",'" + Session("Username") + "');"
                Dim com_report As New SqlCommand(query_report, conn)
                com_report.ExecuteNonQuery()
                conn.Close()
            End If
        Else
            lblUser.Text = " to view Message."
        End If
    End Sub

    Protected Sub btnBlock_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBlock.Click
        Dim sqlconn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlconn.Open()
        Dim black_user As String = Session("from")
            Dim query_insert As String = "insert into BlackList values('" + Session("Username") + "','" + black_user + "');"
            Dim com_insert As New SqlCommand(query_insert, sqlconn)
            com_insert.ExecuteNonQuery()
            btnUnblock.Visible = True
            btnBlock.Visible = False
        sqlconn.Close()
    End Sub

    Protected Sub btnSend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSend.Click
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()
        Dim Username, sendDate, AttachPath, Send_type, mail_type, userTo As String
        userTo = txtUserto.Text
        sendDate = System.DateTime.Now.ToString
        Send_type = "Sent"
        mail_type = "Inbox"
        Username = Session("Username")
        If Session("Username") = "" Then
            lblUser.Text = " to create compose mail."
        Else
            If fuAttachment.HasFile = True Then
                fuAttachment.PostedFile.SaveAs(Server.MapPath(".") + "//Attachments//" + (Username + fuAttachment.FileName))
                AttachPath = "~//Attachments//" + (Username + fuAttachment.FileName)
            Else
                AttachPath = ""
            End If
            Dim query_send As String = "insert into MailSend values('" + Username + "','" + txtSubject.Text + "','" + txtMessage.Text + "','" + AttachPath + "','" + sendDate + "','" + Send_type + "');"
            Dim com_send As New SqlCommand(query_send, sqlcon)
            com_send.ExecuteNonQuery()
            Dim query_select As String = "select MailId from MailSend   where UserFrom='" + Username + "'and DateTime='" + sendDate + "';"
            Dim com_select As New SqlCommand(query_select, sqlcon)
            Dim mailID As Integer = com_select.ExecuteScalar
            Dim query_cc As String = "insert into MailCc values(" & mailID & ",'" + userTo + "','" + mail_type + "');"
            Dim com_cc As New SqlCommand(query_cc, sqlcon)
            com_cc.ExecuteNonQuery()
            Response.Redirect("Sent.aspx")
        End If
        sqlcon.Close()

    End Sub

    Protected Sub btnReply_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnReply.Click
        Panel1.Visible = True
        btnReply.Visible = False
    End Sub

    Protected Sub btnUnblock_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUnblock.Click
        Dim sql As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sql.Open()
        Dim black_user As String = Session("from")
            Dim query_delete As String = "delete from BlackList where UserName='" + Session("Username") + "'and BlackListedUser='" + black_user + "';"
            Dim com_delete As New SqlCommand(query_delete, sql)
            com_delete.ExecuteNonQuery()
            btnUnblock.Visible = False
            btnBlock.Visible = True
        sql.Close()
    End Sub

    Protected Sub btnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Session("Username") = ""
        Response.Redirect("Login.aspx")
    End Sub
End Class
