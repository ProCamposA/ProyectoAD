Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default


    Inherits System.Web.UI.Page


    Dim Adaptador As SqlDataAdapter
    Dim Data As New DataSet
    Dim i As Integer
    Dim ofila As DataRow


    Sub metCOnectar()

    End Sub

    Sub log()

        Dim conexion As SqlConnection = New SqlConnection()
        Dim strconexion As String = ConfigurationManager.
                ConnectionStrings("analisis y diseños").ConnectionString
        conexion.ConnectionString = strconexion

        Adaptador = New SqlDataAdapter("select * from usuario", conexion)
        Dim Command As SqlCommandBuilder = New SqlCommandBuilder(Adaptador)

        'Creamos datset
        Data = New DataSet
        Adaptador.Fill(Data, "usuario")

        Dim sql As String

        sql = "selecttt * from usuario where usuario = '" & usuario.Text & "' and contraseña ='" & contra.Text & "'"

        Dim cmd As New SqlCommand(sql, conexion)
        Dim dr As SqlDataReader
        conexion.Open()
        dr = cmd.ExecuteReader

        If dr.Read = True Then
            Response.Redirect("menu.aspx")
        Else
            lblmensaje.Visible = True
            lblmensaje.Text = "Nombre de usuario o contraseña incorrecto"


        End If

        conexion.Close()

    End Sub

    Protected Sub btnLimpiar_Click(sender As Object, e As EventArgs) Handles btn.Click
        log()
    End Sub
End Class
