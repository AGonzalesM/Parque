<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarCliente.aspx.cs" Inherits="WASisImp.RegistrarCliente" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Parque del Recuerdo - PortalWeb</title>
    <link href="./StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="frmRegistrarCliente" runat="server">
        <div id="RegCliente">
            <center>
                <table style="border-collapse: collapse" cellspacing="0" cellpadding="0">
                    <tr>
                        <td style="width: 91px" class="BordeIzquierdo">
                        </td>
                        <td style="vertical-align: top; width: 940px;">
                            <table style="width: 940px; border-collapse: collapse" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td class="TituloDegradadoPortal">
                                        <table style="border-collapse: collapse" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td style="height: 104px">
                                                    <img alt="" src="./Imagenes/LogoPortal.png" id="IMG1"/>
                                                </td>
                                                <td style="height: 104px" width="100%">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <object type="application/x-shockwave-flash" data="./Imagenes/index.swf" width="100%" height="280px"></object>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table style="border-collapse: collapse" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td valign="top" style="vertical-align: top; background-color: #FFFFFF;" class="TituloDegradadoPortal">
                                                    <table style="border-collapse: collapse; width: 189px; height: 270px;" cellspacing="0" 
                                                        cellpadding="0">
                                                        <tr valign="top">
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td>
                                                                <a href="./ListarContratosXcliente.aspx">Listar Contratos por Cliente</a>
                                                            </td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td>
                                                                <a href="./RegistrarCliente.aspx">Registrar Cliente</a>
                                                            </td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td>
                                                                <a href="./RegistrarContrato.aspx">Registrar Contrato</a>
                                                            </td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td>
                                                                <a href="./PagoCuotas.aspx">Pago Cuotas</a>
                                                            </td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td valign="top" style="width: 100%;">
                                        
                                                    <!-- RegistrarCliente -->
                                                    <table class="MiEstilo">
                                                        <tr>
                                                            <td colspan="6" align ="center">
                                                                <label>Registro de Cliente</label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="6" align="center">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" align ="right" style="width: 40%;">
                                                                <label>Apellido Paterno:&nbsp;</label>
                                                            </td>
                                                            <td colspan="3" align ="left" style="width: 60%;">
                                                                <asp:TextBox ID="txtApellidoPaterno" runat="server" Width="200px" MaxLength="20"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtApellidoPaterno" ErrorMessage="Debe ingresar el Apellido Paterno"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" align="right">
                                                                <label>Apellido Materno:&nbsp;</label>
                                                            </td>
                                                            <td colspan="3" align ="left">
                                                                <asp:TextBox ID="txtApellidoMaterno" runat="server" Width="200px" 
                                                                    MaxLength="20"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" align="right">
                                                                <label>Nombres:&nbsp;</label>
                                                            </td>
                                                            <td colspan="3" align ="left">
                                                                <asp:TextBox ID="txtNombres" runat="server" Width="200px" MaxLength="50"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" align="right">
                                                                <label>DNI:&nbsp;</label>
                                                            </td>
                                                            <td colspan="3" align ="left">
                                                                <asp:TextBox ID="txtDocumento" runat="server" Width="200px" MaxLength="20"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" align="right">
                                                                <label>Direccion:&nbsp;</label>
                                                            </td>
                                                            <td colspan="3" align ="left">
                                                                <asp:TextBox ID="txtDireccion" runat="server" Width="200px" MaxLength="250"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" align="right">
                                                                <label>Distrito:&nbsp;</label>
                                                            </td>
                                                            <td colspan="3" align ="left">
                                                                <asp:TextBox ID="txtDistrito" runat="server" Width="200px" MaxLength="50"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" align="right">
                                                                <label>Telefono:&nbsp;</label>
                                                            </td>
                                                            <td colspan="3" align ="left">
                                                                <asp:TextBox ID="txtTelefono" runat="server" Width="200px" MaxLength="20"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" align="right">
                                                                <label>Correo:&nbsp;</label>
                                                            </td>
                                                            <td colspan="3" align ="left">
                                                                <asp:TextBox ID="txtCorreo" runat="server" Width="200px" MaxLength="100"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="6" align="center">
                                                                <asp:label ID="lblMensaje" runat="server" ForeColor="#663300"></asp:label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="6" align="center">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="6" align="center">
                                                                <asp:Button ID="BtnGrabarCliente" runat="server" 
                                                                    onclick="BtnGrabarCliente_Click" Text="Grabar Cliente" Height="35px" />
                                                            </td>
                                                        </tr>
                                                    </table>

                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>

                                <tr>
                                                                                                                            <td class="FooterNaranja">
                                    <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" width="100%">
                                        <tr>
                                            <td class="Footer4" style="padding-left: 23px">
                                                PARQUE DEL RECUERDO
                                            </td>
                                            <td valign="middle">
                                                <table width="100%" style="text-align: right">
                                                    <tr>
                                                        <td style="text-align: right; padding-right: 10px" class="Footer6">
                                                            CENTRAL DE ASISTENCIA 24 HORAS
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="Footer5" style="padding-right: 156px">
                                                            618- 7070
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                </tr>
                                <tr>
                                                                        <td>
                                    <table width="100%">
                                        <tr>
                                            <td style="padding-left: 20px; width: 50%" align="center">
                                                <span class="CopyRight3">Copyright 2013(c) Parque del Recuerdo.</span> <span class="CopyRight4">
                                                    Todos los derechos Reservados</span>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                </tr>

                            </table>
                        </td>
                        <td style="width: 91px" class="BordeDerecho">
                        </td>
                    </tr>
                </table>
            </center>
        </div>
    </form>
</body>
</html>
