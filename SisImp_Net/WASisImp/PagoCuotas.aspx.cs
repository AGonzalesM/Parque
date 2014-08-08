using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WASisImp
{
    public partial class PagoCuotas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString.Count > 0)
                {
                    txtDni.Text = Request.QueryString["dni"].ToString();
                }
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

                ServicioJavaParque.DatConServiceClient s2 = new ServicioJavaParque.DatConServiceClient();
                var lista2 = s2.getDatosContrato(txtDni.Text);
                this.GridView1.DataSource = lista2;
                this.GridView1.DataBind();
                if (GridView1.Rows.Count == 0)
                {
                    this.lblMensaje.Text = "No se encontraron datos en la busqueda";
                    this.GridView2.Visible = false;
                    this.GridView1.Visible = false;
                    return;
                }
                this.GridView2.Visible = true;
                this.GridView1.Visible = true;
                this.lblMensaje.Text = "";
            }
        }

        protected void BtnPagarCuota_Click(object sender, EventArgs e)
        {
            ServicioJavaParque.DatConServiceClient s1 = new ServicioJavaParque.DatConServiceClient();
            if (txtDni.Text.Trim().Length <= 0)
            {
                lblMensaje.Text = "*** Debe Ingresar el Cliente!!! ***";
                return;
            }

            int idCliente = Convert.ToInt32(txtCodCliente.Text.Trim());

            int cod = Convert.ToInt32(this.GridView2.SelectedRow.Cells[1].Text);
            int nro = Convert.ToInt32(this.GridView2.SelectedRow.Cells[2].Text);
            s1.setCuotas(cod, nro);

            txtDni.Text = "";
            txtCodCliente.Text = "";
            txtCliente.Text = "";

            this.GridView2.DataSource = null;
            this.GridView2.Visible = false;
            this.GridView1.DataSource = null;
            this.GridView1.Visible = false;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int cod = Convert.ToInt32(this.GridView1.SelectedRow.Cells[1].Text);
            ServicioJavaParque.DatConServiceClient cl = new ServicioJavaParque.DatConServiceClient();
            var lis = cl.getCuotasXContrato(cod);
            this.GridView2.DataSource = lis;
            Session["ssss"] = lis;
            this.GridView2.DataBind();
        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            GridView2.DataSource = Session["ssss"];
            GridView2.DataBind();

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
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
    }
}