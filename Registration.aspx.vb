Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class Registration
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()

        'Get all the values
        Dim Get_gender, Birth_day, Ext, Check_block, stream, subject, admission_year, Path As String
        stream = drpStream.SelectedValue
        Path = "~//UserImage//User.jpg"
        subject = Session("subject")
        admission_year = drpAdmission.SelectedValue
        Check_block = "No"
        Birth_day = drpDay.Text + "-" + drpMonth.Text + "-" + drpYear.Text
        If rdbMale.Checked = True Then
            Get_gender = rdbMale.Text
        Else
            Get_gender = rdbFemale.Text
        End If

        'Check if user exists or not
        Dim query_check_user As String = "select UserName from UserCredentials where UserName='" + txtUsername.Text + "';"
        Dim sqlcom_check_user As New SqlCommand(query_check_user, con)
        If sqlcom_check_user.ExecuteScalar <> "" Then
            'user exists.
            lblMessage.Text = "Username already exists. Please choose another username."
        Else
            'Username is available
            Ext = System.IO.Path.GetExtension(fuImage.FileName)
            If Ext.ToLower = ".jpg" Or Ext.ToLower = ".jpeg" Or Ext.ToLower = ".png" Or Ext.ToLower = ".bmp" Or Ext.ToLower = ".gif" Then
                fuImage.PostedFile.SaveAs(Server.MapPath(".") + "//UserImage//" + (txtUsername.Text + fuImage.FileName))
                Path = "~//UserImage//" + (txtUsername.Text + fuImage.FileName)
            Else
                lblMessage.Text = "Only .jpg/.jpeg/.png/.bmp/.gif Files are accepted."
            End If
        Dim query_details As String = "insert into UserDetails values('" + txtUsername.Text + "','" + txtFirstname.Text + "','" + txtLastname.Text + "','" + Birth_day + "','" + txtAddress.Text + "','" + stream + "','" + subject + "','" + admission_year + "','" + txtMobile.Text + "','" + Get_gender + "','" + Path + "');"
        Dim comDetails As New SqlCommand(query_details, con)
        comDetails.ExecuteNonQuery()
        Dim query_credentials As String = "insert into UserCredentials values('" + txtUsername.Text + "','" + txtPass.Text + "','" + Check_block + "');"
        Dim comCredentials As New SqlCommand(query_credentials, con)
        comCredentials.ExecuteNonQuery()
        Dim query_secure As String = "insert into Security values('" + txtUsername.Text + "','" + txtNewhoby.Text + "','" + txtNewgame.Text + "');"
        Dim comSecure As New SqlCommand(query_secure, con)
        comSecure.ExecuteNonQuery()
        Session("Username") = txtUsername.Text
        con.Close()
        Response.Redirect("ViewProfile.aspx")
            End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If drpStream.SelectedValue = "B.A" Then
            DrpBa.Visible = True
            Session("Subject") = DrpBa.SelectedValue
        Else
            DrpBa.Visible = False
        End If
        If drpStream.SelectedValue = "B.Sc" Then
            DrpBsc.Visible = True
            Session("Subject") = DrpBsc.SelectedValue
        Else
            DrpBsc.Visible = False
        End If
        If drpStream.SelectedValue = "B.Com" Then
            DrpBcom.Visible = True
            Session("Subject") = DrpBcom.SelectedValue
        Else
            DrpBcom.Visible = False
        End If
    End Sub
End Class
