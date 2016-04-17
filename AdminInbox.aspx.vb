Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class AdminInbox
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        If Session("Admin") <> "" Then
            hlLogin.Visible = False
            lblUser.Text = Session("Admin")
            Dim query As String = "select * from ReportAbuse ;"
            Dim com_query As New SqlCommand(query, con)
            Dim dr As SqlDataReader
            dr = com_query.ExecuteReader()
            gvInbox.DataSource = dr
            DataBind()
            con.Close()
            If gvInbox.Rows.Count.ToString <> "0" Then
                lblCount.Text = "(" + gvInbox.Rows.Count.ToString + ")"
                lblMessage.Text = ""
            Else
                lblMessage.Text = "No Message for your Inbox."
                lblCount.Text = "(0)"
            End If
        Else
            lblUser.Text = " to view your Inbox."
            hlLogin.Visible = True
            btnLogout.Visible = False
        End If
    End Sub

    Protected Sub gvInbox_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gvInbox.RowCommand
        If e.CommandName = "Select" Then
            Session("AdminMailId") = e.CommandArgument
            btnDelete.Visible = True
            btnView.Visible = True
        End If
    End Sub

    Protected Sub btnView_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnView.Click
        Response.Redirect("AdminMessage.aspx")
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
            If gvInbox.Rows.Count.ToString <> "0" Then
                lblCount.Text = "(" + gvInbox.Rows.Count.ToString + ")"
                lblMessage.Text = ""
            Else
                lblMessage.Text = "No Message for your Inbox."
                lblCount.Text = "(0)"
            End If
            conn.Close()
            Response.Redirect("AdminInbox.aspx")
        Else
            lblUser.Text = " to view your Inbox."
        End If
    End Sub

    Protected Sub btnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Session("Admin") = ""
        Response.Redirect("AdminLogin.aspx")
    End Sub
End Class
