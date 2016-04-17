Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class LoginDetails
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        If Session("Username") <> "" Then
            lblUser.Text = Session("Username")
            Dim query_select As String = "select * from UserLogin where UserName='" + Session("Username") + "';"
            Dim com_select As New SqlCommand(query_select, con)
            Dim dr As SqlDataReader
            dr = com_select.ExecuteReader
            gvLog.DataSource = dr
            DataBind()
            btnLogout.Visible = True
            hlLogin.Visible = False
        Else
            btnLogout.Visible = False
            hlLogin.Visible = True
        End If
    End Sub

    Protected Sub btnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Session("Username") = ""
        Response.Redirect("Login.aspx")
    End Sub
End Class
