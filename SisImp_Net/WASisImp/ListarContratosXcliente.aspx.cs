using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WASisImp
{
    public partial class ListarContratosXcliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack){
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            ServicioJavaParque.DatConServiceClient s1 = new ServicioJavaParque.DatConServiceClient();
            var lista = s1.getDatosContrato(TextBox1.Text);
            this.GridView1.DataSource = lista;
            this.GridView1.DataBind();
            if ( GridView1.Rows.Count == 0 ){
                this.lblMensaje.Text = "No se encontraron datos en la busqueda";
                this.GridView2.Visible = false;
                this.GridView1.Visible = false;
                return;
            }
            this.GridView2.Visible = true;
            this.GridView1.Visible = true;
            this.lblMensaje.Text = "";
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int cod =Convert.ToInt32( this.GridView1.SelectedRow.Cells[1].Text);
            ServicioJavaParque.DatConServiceClient cl = new ServicioJavaParque.DatConServiceClient();
            var lis=  cl.getCuotasXContrato(cod);
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

      
    }
}