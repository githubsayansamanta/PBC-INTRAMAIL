Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class AdminMessage
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        If Session("Admin") <> "" Then
            lblUser.Text = Session("Admin")
            hlLogin.Visible = False
            Dim mailid As Integer = Integer.Parse(Session("AdminMailId"))
            Dim query_details As String = "select UserFrom,UserTo,Subject,Body,DateTime,AttachmentPath from MailSend,MailCc where MailSend.MailId=MailCc.MailId and MailCc.MailId=" & mailid & ";"
            Dim da As New SqlDataAdapter(query_details, con)
            Dim ds As New DataSet
            da.Fill(ds)
            lblFrom.Text = ds.Tables(0).Rows(0)(0)
            Session("UserName") = ds.Tables(0).Rows(0)(0)
            lblTo.Text = ds.Tables(0).Rows(0)(1)
            txtUserto.Text = ds.Tables(0).Rows(0)(0)
            lblSubject.Text = ds.Tables(0).Rows(0)(2)
            lblBody.Text = ds.Tables(0).Rows(0)(3)
            lblDate.Text = ds.Tables(0).Rows(0)(4)
            If ds.Tables(0).Rows(0)(5) <> "" Then
                hlAttachment.NavigateUrl = ds.Tables(0).Rows(0)(5)
                hlAttachment.Text = "Click to Download"
            Else
                hlAttachment.Text = "No attachment with this Mail"
            End If
        Else
            lblUser.Text = " to view Message."
            hlLogin.Visible = True
            btnLogout.Visible = False
            hlAttachment.Visible = False
        End If
        con.Close()
    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        If Session("Admin") <> "" Then
            lblUser.Text = Session("Admin")
            Dim mailid As Integer = Integer.Parse(Session("AdminMailId"))
            Dim query_del As String = "delete from ReportAbuse where MailId=" & mailid & ";"
            Dim com_del As New SqlCommand(query_del, conn)
            com_del.ExecuteNonQuery()
            Response.Redirect("AdminInbox.aspx")
            conn.Close()
        Else
            lblUser.Text = " to view your Message."
        End If

    End Sub

    Protected Sub btnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Session("Admin") = ""
        Response.Redirect("AdminLogin.aspx")
    End Sub

    Protected Sub btnWarn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnWarn.Click
        Panel2.Visible = True
        btnWarn.Visible = False
    End Sub

    Protected Sub btnBlock_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBlock.Click
        Dim sqlconn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlconn.Open()
        If Session("Admin") <> "" Then
            lblUser.Text = Session("Admin")
            Dim block As String = "Yes"
            Dim username As String = Session("UserName")
            Dim query_block As String = "update UserCredentials set Block='" + block + "' where UserName='" + username + "';"
            Dim com_block As New SqlCommand(query_block, sqlconn)
            com_block.ExecuteNonQuery()
            Response.Redirect("AdminInbox.aspx")
            sqlconn.Close()
        Else
            lblUser.Text = " to view your Message."
        End If
    End Sub

    Protected Sub btnSend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSend.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        Dim Username, sendDate, AttachPath, Send_type, mail_type, userTo As String
        userTo = Session("UserName")
        sendDate = System.DateTime.Now.ToString
        Send_type = "Sent"
        mail_type = "Inbox"
        Username = Session("Admin")
        If Session("Admin") = "" Then
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
            Dim query_cc As String = "insert into MailCc values(" & mailID & ",'" + userTo + "','" + mail_type + "');"
            Dim com_cc As New SqlCommand(query_cc, con)
            com_cc.ExecuteNonQuery()
            Response.Redirect("AdminSent.aspx")
        End If
        con.Close()
    End Sub
End Class
