using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WASisImp
{
    public partial class RegistrarContrato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString.Count > 0)
                {
                    txtDni.Text = Request.QueryString["dni"].ToString();
                }
                txtFechaContrato.Text = DateTime.Now.ToString("dd/MM/yyyy");
                txtFechaContrato.Text = DateTime.Now.ToString("dd/MM/yyyy");
            }
        }

        protected void BtnBuscarDni_Click(object sender, EventArgs e)
        {
            if (txtDni.Text.Trim().Length <= 0)
            {
                lblMensaje.Text = "*** Debe Ingresar el Cliente!!! ***";
                return;
            }

            ServicioJavaParque.DatConServiceClient s1 = new ServicioJavaParque.DatConServiceClient();
            var lista = s1.getClientesXDni(txtDni.Text);
            ServicioJavaParque.cliente objcli;

            if (lista == null)
            {
                lblMensaje.Text = "* Cliente no Existe. Registre Cliente *";
                Response.Redirect("RegistrarCliente.aspx?dni=" + txtDni.Text);
            }
            else
            {
                objcli = (ServicioJavaParque.cliente)lista.GetValue(0);
                txtCodCliente.Text = objcli.cod_Cliente.ToString();
                txtCliente.Text = objcli.ape_Paterno.ToString() + " " + objcli.ape_Materno.ToString() + ", " + objcli.nom_Cliente.ToString();
                
            }
        }

        protected void BtnGrabarContrato_Click(object sender, EventArgs e)
        {
            if (txtDni.Text.Trim().Length <= 0)
            {
                lblMensaje.Text = "*** Debe Ingresar el Cliente!!! ***";
                return;
            }
            if (txtFechaContrato.Text.Trim().Length < 10)
            {
                lblMensaje.Text = "*** Debe ingresar Fecha de Contrato Valida con el Calendario!!! ***";
                return;
            }
            if (txtFechaVencimiento.Text.Trim().Length < 10)
            {
                lblMensaje.Text = "*** Debe ingresar Fecha de Vencimiento Valida con el Calendario!!! ***";
                return;
            }

            int idCliente = Convert.ToInt32(txtCodCliente.Text.Trim());
            Double montoCuota = Convert.ToDouble(txtMontoCuota.Text.Trim());
            int nroCuotas = Convert.ToInt32(txtCantCuotas.Text.Trim());
            int idEmpleado = 1, nYear, nMonth, nDay;
            DateTime dtFechaContrato;
            DateTime dtFechaVencimiento;

            nYear = Convert.ToInt32(txtFechaContrato.Text.Trim().Substring(6, 4));
            nMonth = Convert.ToInt32(txtFechaContrato.Text.Trim().Substring(3, 2));
            nDay = Convert.ToInt32(txtFechaContrato.Text.Trim().Substring(0, 2));
            dtFechaContrato = new DateTime(nYear, nMonth, nDay);

            nYear = Convert.ToInt32(txtFechaVencimiento.Text.Trim().Substring(6, 4));
            nMonth = Convert.ToInt32(txtFechaVencimiento.Text.Trim().Substring(3, 2));
            nDay = Convert.ToInt32(txtFechaVencimiento.Text.Trim().Substring(0, 2));
            dtFechaVencimiento = new DateTime(nYear, nMonth, nDay);

            ServicioJavaParque.DatConServiceClient s1 = new ServicioJavaParque.DatConServiceClient();
            int id = s1.setContratos(idCliente, DateTime.Now.ToString("yyyyMMdd"), DateTime.Now.AddMonths(nroCuotas).ToString("yyyyMMdd"), "ABIERTO", montoCuota, nroCuotas, idEmpleado, DropDownList1.SelectedValue.ToString());
            lblMensaje.Text = "*** Contrato Grabado Satisfactoriamente!!! ***";

            txtDni.Text = "";
            txtCodCliente.Text = "";
            txtCliente.Text = "";
            txtMontoCuota.Text = "";
            txtCantCuotas.Text = "";
        }

        protected void BtnVerificar_Click(object sender, EventArgs e)
        {
            if (txtDni.Text.Trim().Length <= 0)
            {
                lblMensaje.Text = "*** Debe Ingresar el Cliente!!! ***";
                return;
            }

            ServicioWcfInfoCorp.Service1Client si = new ServicioWcfInfoCorp.Service1Client();
            ServicioWcfInfoCorp.Persona objPersona = null;

            objPersona = si.ConsultaDni(txtDni.Text.Trim());
            if (objPersona != null)
            {
                lblMensaje.Text = objPersona.APELLIDOS.Trim() + ", " + objPersona.NOMBRES.Trim() + " Registrado en INFOCORP!!!";
                return;
            }
        }

        protected void FechaVencimiento_Actualiza(object sender, EventArgs e)
        {
            if (txtCantCuotas.Text.Trim().Length <= 0) return;
            if (txtFechaContrato.Text.Trim().Length <= 0) return;
            int nroCuotas = Convert.ToInt32(txtCantCuotas.Text.Trim());
            int nYear, nMonth, nDay;
            DateTime dtFechaContrato;
            DateTime dtFechaVencimiento;

            nYear = Convert.ToInt32(txtFechaContrato.Text.Trim().Substring(6, 4));
            nMonth = Convert.ToInt32(txtFechaContrato.Text.Trim().Substring(3, 2));
            nDay = Convert.ToInt32(txtFechaContrato.Text.Trim().Substring(0, 2));
            dtFechaContrato = new DateTime(nYear, nMonth, nDay);

            dtFechaVencimiento = dtFechaContrato.AddMonths(nroCuotas);

            txtFechaVencimiento_CalendarExtender.SelectedDate = dtFechaVencimiento;
            txtFechaVencimiento.Text = dtFechaVencimiento.ToString("dd/MM/yyyy");
        }
    }
}