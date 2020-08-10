using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.IO;
using Negocio;
using Entidad;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Services;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Drawing;
using Label = System.Web.UI.WebControls.Label;
using Button = System.Web.UI.WebControls.Button;

namespace SomosPC
{
    public partial class _Default : Page
    {
        string cadenaConexion = SiteMaster.Coneccion;

        ePedido pedido = new ePedido();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["PERFIL"].ToString().Trim() == "VENDEDORA")
                {
                    gvProduccion.Enabled = false;
                }
                
                
                    llenaDatos();
            }
        }

        protected void gvProduccion_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.CompareTo("Esqueleto") == 0)
            {

                pedido.nroPedido= gvProduccion.DataKeys[Convert.ToInt32(e.CommandArgument)].Value.ToString() ;
                pedido.correlativo = Convert.ToInt32(gvProduccion.DataKeys[Convert.ToInt32(e.CommandArgument)][1].ToString());
                pedido.tapicero = "";
                pedido.usuario = "ESTADOESQUELETO";
                DataTable dt = new DataTable();
                dt = PreparaAccesoRetiro.cambiaEstadoProduccion(pedido, cadenaConexion);
                llenaDatos();
            }

            if (e.CommandName.CompareTo("Costura") == 0)
            {
                pedido.nroPedido = gvProduccion.DataKeys[Convert.ToInt32(e.CommandArgument)].Value.ToString();
                pedido.correlativo = Convert.ToInt32(gvProduccion.DataKeys[Convert.ToInt32(e.CommandArgument)][1].ToString());
                pedido.tapicero = "";
                pedido.usuario = "ESTADOCOSTURA";
                DataTable dt = new DataTable();
                dt = PreparaAccesoRetiro.cambiaEstadoProduccion(pedido, cadenaConexion);
                llenaDatos();
            }

            if (e.CommandName.CompareTo("Tapicero") == 0)
            {
         

                pedido.nroPedido = gvProduccion.DataKeys[Convert.ToInt32(e.CommandArgument)].Value.ToString();
                pedido.correlativo = Convert.ToInt32(gvProduccion.DataKeys[Convert.ToInt32(e.CommandArgument)][1].ToString());

                foreach (GridViewRow row in gvProduccion.Rows)
                {
                    
                    string valor2  = row.Cells[0].Text;

                    if (valor2 == pedido.nroPedido)
                    {
                        pedido.tapicero= ((DropDownList)row.FindControl("ddlTapicero")).SelectedItem.Value;
                        if (pedido.tapicero == "Seleccionar")
                        {
                            string mensaje = "Debe seleccionar tapicero";
                            llenaDatos();
                        }
                        else
                        {
                            pedido.usuario = "ESTADOTAPICERO";
                            DataTable dt = new DataTable();
                            dt = PreparaAccesoRetiro.cambiaEstadoProduccion(pedido, cadenaConexion);
                            llenaDatos();
                        }
                    }
                    else
                    {
                        llenaDatos();
                    }
                        


                }



               
            }

           


        }

        public void llenaDatos()
        {
            DataTable dt = new DataTable();
            dt = PreparaAccesoRetiro.produccionTodos(cadenaConexion);

            gvProduccion.DataSource = dt;
            gvProduccion.DataBind();
        }

        protected void gvProduccion_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string status = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "EstadoEsqueleto"));

                if (status == "0")
                {
                    e.Row.BackColor = Color.FromName("c6efce");
                    e.Row.Cells[7].BackColor = Color.FromName("#AC1C05");
                    e.Row.Cells[7].ForeColor = Color.FromName("#AC1C05");
                    
                }
                else
                {
                    e.Row.BackColor = Color.FromName("c6efce");
                    e.Row.Cells[7].BackColor = Color.FromName("#05AC19");
                   
                }

                string status2 = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "EstadoCosturera"));

                if (status2 == "0")
                {
                    e.Row.BackColor = Color.FromName("c6efce");
                    e.Row.Cells[8].BackColor = Color.FromName("#AC1C05");
                    
                }
                else
                {
                    e.Row.BackColor = Color.FromName("c6efce");
                    e.Row.Cells[8].BackColor = Color.FromName("#05AC19");
                }

                string status3 = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "EstadoTapicero"));

                if (status3 == "0")
                {
                    e.Row.BackColor = Color.FromName("c6efce");
                    e.Row.Cells[9].BackColor = Color.FromName("#AC1C05");
                  
                }
                else
                {
                    
                    e.Row.BackColor = Color.FromName("c6efce");
                    e.Row.Cells[9].BackColor = Color.FromName("#05AC19");
                    e.Row.Cells[9].Enabled = false;
                }
            }
        }

        protected void gvProduccion_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                llenaDatos();
                ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open( 'imprimir.aspx', null, 'height=768,width=760,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}