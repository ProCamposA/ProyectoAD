<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
            color: #FF3300;
        }
        .auto-style17 {
            width: 112%;
        }
        .auto-style72 {
            height: 34px;
            text-align: center;
            width: 712px;
        }
        .auto-style83 {
            height: 34px;
            text-align: left;
            width: 958px;
        }
        .auto-style97 {
            font-size: medium;
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style105 {
            font-size: medium;
        }
        .auto-style136 {
            height: 19px;
            text-align: right;
            width: 712px;
            color: #FFFFFF;
            font-size: large;
            font-weight: bold;
        }
        .auto-style142 {
            height: 19px;
            text-align: left;
            width: 958px;
        }
        .auto-style143 {
            height: 18px;
            text-align: right;
            width: 712px;
            color: #FFFFFF;
            font-size: large;
            font-weight: bold;
        }
        .auto-style144 {
            height: 18px;
            text-align: left;
            width: 958px;
        }
        .auto-style145 {
            color: #003366;
        }
        .auto-style146 {
            color: #FF0000;
        }
    </style>
</head>
<body bgcolor="black">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <h1 class="auto-style145">UACA Administration</h1>
        </div>
        <table class="auto-style17">
            <tr>
                <td class="auto-style136">
                    <h3>Nombre de usuario</h3>
                </td>
                <td class="auto-style142">
                    <asp:TextBox ID="usuario" runat="server" BackColor="white" Width="219px" CssClass="auto-style105" BorderStyle="Ridge"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usuario" CssClass="auto-style146" ErrorMessage="Por favor dijite un nombre de usuario"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style143">
                    <h3>Contraseña</h3>
                </td>
                <td class="auto-style144">
                    <asp:TextBox ID="contra" runat="server" BackColor="white" Width="219px" CssClass="auto-style105" BorderStyle="Inset" CausesValidation="True"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="contra" CssClass="auto-style146" ErrorMessage="Por favor dijite una contraseña"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style136">
                    <h3>Cargo</h3>
                </td>
                <td class="auto-style142">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="228px">
                        <asp:ListItem>Cliente</asp:ListItem>
                        <asp:ListItem>Administrador Jefe</asp:ListItem>
                        <asp:ListItem>Administrador Financiero</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" CssClass="auto-style146" ErrorMessage="Por favor seleccione su cargo correspondiente"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style72">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <strong>
                    <br />
                    Car<br />
                    &nbsp;</strong></td>
                <td class="auto-style83">
                    <asp:Button ID="btn" runat="server" Text="Continuar" CssClass="auto-style97" Font-Bold="True" Height="27px" Width="221px" BackColor="#003366" ToolTip="Validar" />
                    <br />
                    <asp:Label ID="lblmensaje" runat="server" CssClass="auto-style146" Visible="False">Nombre de usuario o contraseña incorrecto</asp:Label>
                    </td>
            </tr>
            </table>
    </form>

</body>
</html>
