Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class EditProfile
    Inherits System.Web.UI.Page

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
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()
        If Session("Username") <> "" Then
            lblUser.Text = Session("Username")
            hlLogin.Visible = False
            Dim query_select As String = "select * from UserDetails where UserName='" + Session("Username") + "';"
            Dim da_select As New SqlDataAdapter(query_select, con)
            Dim ds As New DataSet
            da_select.Fill(ds)
            lblFirst.Text = ds.Tables(0).Rows(0)(1)
            Session("first") = ds.Tables(0).Rows(0)(1)
            lblLast.Text = ds.Tables(0).Rows(0)(2)
            Session("last") = ds.Tables(0).Rows(0)(2)
            lblDate.Text = ds.Tables(0).Rows(0)(3)
            Session("dob") = ds.Tables(0).Rows(0)(3)
            lblAddress.Text = ds.Tables(0).Rows(0)(4)
            Session("address") = ds.Tables(0).Rows(0)(4)
            lblStream.Text = ds.Tables(0).Rows(0)(5)
            Session("stream") = ds.Tables(0).Rows(0)(5)
            lblSubject.Text = ds.Tables(0).Rows(0)(6)
            Session("subject") = ds.Tables(0).Rows(0)(6)
            lblYear.Text = ds.Tables(0).Rows(0)(7)
            Session("year") = ds.Tables(0).Rows(0)(7)
            lblMobile.Text = ds.Tables(0).Rows(0)(8)
            Session("mobile") = ds.Tables(0).Rows(0)(8)
            lblGender.Text = ds.Tables(0).Rows(0)(9)
            Session("gender") = ds.Tables(0).Rows(0)(9)
            Image1.ImageUrl = ds.Tables(0).Rows(0)(10)
            Session("image") = ds.Tables(0).Rows(0)(10)
        Else
            lblUser.Text = " to view your profile."
            btnLogout.Visible = False
        End If
        con.Close()
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        If Session("Username") <> "" Then
            lblUser.Text = Session("Username")
            Dim first, last, address, stream, subject, year, dob, gender, AttachPath, mobile As String
            If txtFirstname.Text <> "" Then
                first = txtFirstname.Text
            Else
                first = Session("first")
            End If
            If txtLastname.Text <> "" Then
                last = txtLastname.Text
            Else
                last = Session("last")
            End If
            If txtAddress.Text <> "" Then
                address = txtAddress.Text
            Else
                address = Session("address")
            End If
            If txtMobile.Text <> "" Then
                mobile = txtMobile.Text
            Else
                mobile = Session("mobile")
            End If
            If drpStream.SelectedValue <> "Choose Stream" Then
                stream = drpStream.SelectedValue
            Else
                stream = Session("stream")
            End If
            If Session("Subject") <> "" Then
                subject = Session("Subject")
            Else
                subject = Session("subject")
            End If
            If drpDay.SelectedValue <> "Day" And drpMonth.SelectedValue <> "Month" And drpYear.SelectedValue <> "Year" Then
                dob = drpDay.SelectedValue + "-" + drpMonth.SelectedValue + "-" + drpYear.SelectedValue
            Else
                dob = Session("dob")
            End If
            If drpAdmission.SelectedValue <> "Choose Year" Then
                year = drpAdmission.SelectedValue
            Else
                year = Session("year")
            End If
            If rdbFemale.Checked = True Then
                gender = rdbFemale.Text
            ElseIf rdbMale.Checked = True Then
                gender = rdbMale.Text
            Else
                gender = Session("gender")
            End If
            If fuImage.HasFile = True Then
                fuImage.PostedFile.SaveAs(Server.MapPath(".") + "//UserImage//" + (Session("Username") + fuImage.FileName))
                AttachPath = "~//UserImage//" + (Session("Username") + fuImage.FileName)
            Else
                AttachPath = Session("image")
            End If
            Dim query_edit As String = "update UserDetails set FirstName='" + first + "',LastName='" + last + "',DateOfBirth='" + dob + "',Address='" + address + "',Stream='" + stream + "',Subject='" + subject + "',YearOfAdmission='" + year + "',MobileNo='" + mobile + "',Gender='" + gender + "',UserImagePath='" + AttachPath + "' where UserName='" + Session("Username") + "';"
            Dim com_edit As New SqlCommand(query_edit, conn)
            com_edit.ExecuteNonQuery()
            conn.Close()
            Response.Redirect("ViewProfile.aspx")
        End If
    End Sub

    Protected Sub btnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Session("Username") = ""
        Response.Redirect("Login.aspx")
    End Sub
End Class
