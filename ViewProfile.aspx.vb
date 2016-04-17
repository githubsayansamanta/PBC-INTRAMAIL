Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class ViewProfile
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        If Session("Username") <> "" Then
            lblUser.Text = Session("Username")
            hlLogin.Visible = False
            Dim query_select As String = "select * from UserDetails where UserName='" + Session("Username") + "';"
            Dim da_select As New SqlDataAdapter(query_select, con)
            Dim ds As New DataSet
            da_select.Fill(ds)
            lblName.Text = ds.Tables(0).Rows(0)(1) + " " + ds.Tables(0).Rows(0)(2)
            lblDate.Text = ds.Tables(0).Rows(0)(3)
            lblAddress.Text = ds.Tables(0).Rows(0)(4)
            lblStream.Text = ds.Tables(0).Rows(0)(5)
            lblSubject.Text = ds.Tables(0).Rows(0)(6)
            lblYear.Text = ds.Tables(0).Rows(0)(7)
            lblMobile.Text = ds.Tables(0).Rows(0)(8)
            lblGender.Text = ds.Tables(0).Rows(0)(9)
            Image1.ImageUrl = ds.Tables(0).Rows(0)(10)
        Else
            lblUser.Text = " to view your profile."
            btnLogout.Visible = False
        End If
        con.Close()
    End Sub

    Protected Sub btnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Session("Username") = ""
        Response.Redirect("Login.aspx")
    End Sub

    Protected Sub btnEdit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnEdit.Click
        Response.Redirect("EditProfile.aspx")
    End Sub

    Protected Sub btnLogindetails_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogindetails.Click
        Response.Redirect("LoginDetails.aspx")
    End Sub
End Class
