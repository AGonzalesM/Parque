<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarContratosXcliente.aspx.cs" Inherits="WASisImp.ListarContratosXcliente" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 1005px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <center>
          <table class="style1">
              <tr>
                  <td colspan="6" align ="center">
                      Listado Contrato x DNI</td>
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
                  <td colspan="6" align =center>
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                          CellPadding="4" 
                          onselectedindexchanging="GridView1_SelectedIndexChanging" 
                          onselectedindexchanged="GridView1_SelectedIndexChanged" 
                          ForeColor="#333333" GridLines="None">
                          <AlternatingRowStyle BackColor="White" />
                          <Columns>
                              <asp:CommandField ShowSelectButton="True" SelectText="Seleccionar" />
                              <asp:BoundField DataField="Cod_Contrato" HeaderText="Codigo" />
                              <asp:BoundField DataField="mon_Cuota" HeaderText="Monto"/>
                              <asp:BoundField DataField="tip_Moneda" HeaderText="Tipo Moneda"/>
                              <asp:BoundField DataField="can_Cuotas" HeaderText="Nro Cuotas"/>
                              <asp:BoundField DataField="fch_Contrato" HeaderText="Fecha Registro" DataFormatString="{0:d}"/>
                              <asp:BoundField DataField="fch_Vencimiento" HeaderText="Fecha Vencimiento" DataFormatString="{0:d}"/>
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
                  <td colspan="6" align=center>
                      <asp:Label ID="Label1" runat="server"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td colspan="6" align=center>
                      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                          CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" 
                          onpageindexchanging="GridView2_PageIndexChanging">
                          <AlternatingRowStyle BackColor="White" />
                          <Columns>
                             
                            <asp:BoundField DataField="cod_contrato" HeaderText="Contrato" />
                            <asp:BoundField DataField="nro_cuota" HeaderText="Nro Cuota" />
                            <asp:BoundField DataField="saldo" HeaderText="Saldo" />
                            <asp:BoundField DataField="fch_cuota" HeaderText="Fecha Cuota"  DataFormatString="{0:d}"/>
                            <asp:BoundField DataField="fch_pago" HeaderText="Fecha Pago" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="fch_vencimiento" HeaderText="Fecha Vencimiento"  DataFormatString="{0:d}"/>
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
        </center>
    </div>
    </form>
</body>
</html>
