<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarContrato.aspx.cs" Inherits="WASisImp.RegistrarContrato" Culture="es-PE" UICulture="es-PE" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Parque del Recuerdo - PortalWeb</title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    </head>
<body>
    <form id="frmRegistrarContrato" runat="server">
        <div id="RegContrato">
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
                                                </td>
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
                                        
                                                    <!-- RegistrarContrato -->
                                                    <table class="MiEstilo">
                                                        <tr>
                                                            <td colspan="6" align ="center">
                                                                <label>Registro de Contrato</label>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td colspan="6" align="center">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" align ="right">
                                                                <label>DNI:&nbsp;</label>
                                                            </td>
                                                            <td colspan="3" align ="left">
                                                                <asp:TextBox ID="txtDni" runat="server" MaxLength="8"></asp:TextBox>&nbsp;
                                                                <asp:Button ID="BtnBuscarDni" runat="server" onclick="BtnBuscarDni_Click" Text="Buscar" />&nbsp;
                                                                <asp:Button ID="BtnVerificar" runat="server" onclick="BtnVerificar_Click" Text="Verificar InfoCorp" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" align="right">
                                                                <label>Cliente:&nbsp;</label>
                                                            </td>
                                                            <td colspan="3" align="left">
                                                                <asp:TextBox ID="txtCodCliente" Enabled="false" runat="server" Width="30px"></asp:TextBox>&nbsp;
                                                                <asp:TextBox ID="txtCliente" Enabled="false" runat="server" Width="300px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" align="right">
                                                                <label>Fecha Contrato:&nbsp;</label>
                                                            </td>
                                                            <td colspan="3" align="left">
                                                                <asp:TextBox ID="txtFechaContrato" Enabled="true" runat="server" Width="121px" 
                                                                    ReadOnly="True" MaxLength="10" AutoPostBack="true"></asp:TextBox>
                                                                <asp:ImageButton ID="ImgBntFCCalendario" runat="server"
                                                                    src="./Imagenes/Calendar_scheduleHS.png" Height="21px" Width="21px" alt="Clic para Mostrar Calendario"/>
                                                                <asp:CalendarExtender ID="txtFechaContrato_CalendarExtender" runat="server" 
                                                                    TargetControlID="txtFechaContrato" PopupButtonID="ImgBntFCCalendario" Format="dd/MM/yyyy" 
                                                                    TodaysDateFormat="dd MMMM yyyy">
                                                                </asp:CalendarExtender>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" align="right">
                                                                <label>Tipo de Moneda:&nbsp;</label>
                                                            </td>
                                                            <td colspan="3" align="left">

                                                                <asp:DropDownList ID="DropDownList1" runat="server">
                                                                    <asp:ListItem>NUEVOS SOLES</asp:ListItem>
                                                                    <asp:ListItem>DOLARES</asp:ListItem>
                                                                    <asp:ListItem>EUROS</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" align ="right">
                                                                <label>Monto Cuota:&nbsp;</label>
                                                            </td>
                                                            <td colspan="3" align ="left" style="width: 60%;">
                                                                <asp:TextBox ID="txtMontoCuota" runat="server" Width="121px" 
                                                                    MaxLength="20"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" align="right">
                                                                <label>Cant. Cuotas:&nbsp;</label>
                                                            </td>
                                                            <td colspan="3" align ="left">
                                                                <asp:TextBox ID="txtCantCuotas" runat="server" Width="121px" 
                                                                    MaxLength="20" OnTextChanged="FechaVencimiento_Actualiza" AutoPostBack="true"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" align="right">
                                                                <label>Fecha Vencimiento:&nbsp;</label>
                                                            </td>
                                                            <td colspan="3" align="left">
                                                                <asp:TextBox ID="txtFechaVencimiento" Enabled="true" runat="server" Width="121px" ReadOnly="True" MaxLength="10"></asp:TextBox>
                                                                <asp:ImageButton ID="ImgBtnFVCalendario" runat="server"
                                                                    src="./Imagenes/Calendar_scheduleHS.png" Height="21px" Width="21px"  alt="Clic para Mostrar Calendario"/>
                                                                <asp:CalendarExtender ID="txtFechaVencimiento_CalendarExtender" runat="server" 
                                                                    TargetControlID="txtFechaVencimiento" PopupButtonID="ImgBntFVCalendario" Format="dd/MM/yyyy" 
                                                                    TodaysDateFormat="dd MMMM yyyy">
                                                                </asp:CalendarExtender>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="6" align="center">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="6" align="center">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="6" align ="center">
                                                                <asp:label ID="lblMensaje" runat="server" ForeColor="#663300"></asp:label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="6" align="center">
                                                                <asp:Button ID="BtnGrabarContrato" runat="server" 
                                                                    onclick="BtnGrabarContrato_Click" Text="Grabar Contrato" Height="35px" />                                                                
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="6" align="center">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="6" align="center">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="6" align="center">
                                                                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" 
                                                                    EnableScriptGlobalization="True" EnableScriptLocalization="True">
                                                                </asp:ToolkitScriptManager>
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
