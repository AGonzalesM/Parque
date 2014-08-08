﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarContratosXcliente.aspx.cs" Inherits="WASisImp.ListarContratosXcliente" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Parque del Recuerdo - PortalWeb</title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="ListarContratosXcliente">
            <center>
                <table style="border-collapse: collapse" cellspacing="0" cellpadding="0">
                    <tr>
                        <td style="width: 91px"class="BordeIzquierdo">
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
                                        
                                                    <!-- RegistrarCliente -->
                                                    <table class="DetalleCampos">
                                                        <tr>
                                                            <td colspan="6" align ="center">
                                                                <label>Listado Contrato x DNI</label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="6" align ="center">
                                                                DNI:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Buscar" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="6" align ="center">
                                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                                    CellPadding="4" 
                                                                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                                                                    ForeColor="#333333" GridLines="None" Width="100%">
                                                                    <AlternatingRowStyle BackColor="White" />
                                                                    <Columns>
                                                                        <asp:CommandField ShowSelectButton="True" SelectText="Seleccionar" />
                                                                        <asp:BoundField DataField="Cod_Contrato" HeaderText="Codigo" />
                                                                        <asp:BoundField DataField="mon_Cuota" HeaderText="Monto"/>
                                                                        <asp:BoundField DataField="tip_Moneda" HeaderText="Tipo Moneda"/>
                                                                        <asp:BoundField DataField="can_Cuotas" HeaderText="Nro Cuotas"/>
                                                                        <asp:BoundField DataField="fch_Contrato" HeaderText="Fecha Registro" DataFormatString="{0:d}" ApplyFormatInEditMode="false"/>
                                                                        <asp:BoundField DataField="fch_Vencimiento" HeaderText="Fecha Vencimiento" DataFormatString="{0:d}" ApplyFormatInEditMode="true"/>
                                                                    </Columns>
                                                                    <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                                                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                                    <RowStyle ForeColor="#333333" BackColor="#FFFBD6" />
                                                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                                                </asp:GridView>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="6" align="center">
                                                                <asp:label ID="lblMensaje" runat="server"></asp:label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="6" align="center">
                                                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                                                    CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" 
                                                                    onpageindexchanging="GridView2_PageIndexChanging" 
                                                                    Width="100%">
                                                                    <AlternatingRowStyle BackColor="White" />
                                                                    <Columns>
                                                                        <asp:BoundField DataField="cod_contrato" HeaderText="Contrato" />
                                                                        <asp:BoundField DataField="nro_cuota" HeaderText="Nro Cuota" />
                                                                        <asp:BoundField DataField="saldo" HeaderText="Saldo" />
                                                                        <asp:BoundField DataField="fch_cuota" HeaderText="Fecha Cuota"  DataFormatString="{0:dd/MM/yyyy}"/>
                                                                        <asp:BoundField DataField="fch_pago" HeaderText="Fecha Pago" DataFormatString="{0:dd/MM/yyyy}" />
                                                                        <asp:BoundField DataField="fch_vencimiento" HeaderText="Fecha Vencimiento"  DataFormatString="{0:dd/MM/yyyy}"/>
                                                                    </Columns>
                                                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                                                </asp:GridView>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
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
