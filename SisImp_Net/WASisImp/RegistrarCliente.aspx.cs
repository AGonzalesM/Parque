using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WASisImp
{
    public partial class RegistrarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.Count > 0)
            {
                txtDocumento.Text = Request.QueryString["dni"].ToString();
            }
        }

        protected void BtnGrabarCliente_Click(object sender, EventArgs e)
        {
            ServicioJavaParque.DatConServiceClient s1 = new ServicioJavaParque.DatConServiceClient();
            var lista = s1.getClientesXDni(txtDocumento.Text);
            if (lista != null)
            {
                lblMensaje.Text = "*** Cliente Ya Existe!!! ***";
                return;
            }

            int id = s1.setClientes(txtApellidoPaterno.Text.Trim(), txtApellidoMaterno.Text.Trim(), txtNombres.Text.Trim(), "DNI", txtDocumento.Text.Trim(), txtDireccion.Text.Trim(), txtDistrito.Text.Trim(), txtTelefono.Text.Trim(), txtCorreo.Text.Trim());
            lblMensaje.Text = "*** Cliente Grabado Satisfactoriamente!!! ***";

            if (Request.QueryString.Count > 0)
            {
                Response.Redirect("RegistrarContrato.aspx?dni=" + txtDocumento.Text);
            }
            else
            {
                txtApellidoPaterno.Text = "";
                txtApellidoMaterno.Text = "";
                txtNombres.Text = "";
                txtDocumento.Text = "";
                txtDireccion.Text = "";
                txtDistrito.Text = "";
                txtTelefono.Text = "";
                txtCorreo.Text = "";
            }

        }

    }
}