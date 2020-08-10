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
using TextBox = System.Web.UI.WebControls.TextBox;
using CheckBox = System.Web.UI.WebControls.CheckBox;
using Excel = Microsoft.Office.Interop.Excel;

namespace SomosPC
{
    public partial class Despacho : System.Web.UI.Page
    {

        string cadenaConexion = SiteMaster.Coneccion;
        ePedido pedido = new ePedido();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                llenaEnDespachos();

            }
        }

        public void llenaEnDespachos()
        {
            DataTable dt = new DataTable();
            dt = PreparaAccesoRetiro.buscaDespachosactuales(cadenaConexion);
            gvDespacho.DataSource = dt;
            gvDespacho.DataBind();
        }

        protected void gvDespacho_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                /// estado completado despacho
                int id = e.RowIndex; //iterador de la fila
                pedido.nroPedido= Convert.ToString(gvDespacho.DataKeys[e.RowIndex].Value);
                DataTable dt = new DataTable();
                dt = PreparaAccesoRetiro.CambioPedidoaentregado(pedido, cadenaConexion);
                llenaEnDespachos();


            }
            catch (Exception Ex)
            {

                string mensaje = Ex.Message.ToString();
            }


        }

        protected void gvDespacho_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvDespacho.EditIndex = e.NewEditIndex;
            llenaEnDespachos();

        }



        protected void gvDespacho_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                GridViewRow row = (GridViewRow)gvDespacho.Rows[e.RowIndex];
                Label numeroPedido = (Label)gvDespacho.Rows[e.RowIndex].FindControl("lblPedido");
              
                TextBox txtmodelo = (TextBox)gvDespacho.Rows[e.RowIndex].FindControl("txtModelo");
                TextBox txtplaza = (TextBox)gvDespacho.Rows[e.RowIndex].FindControl("txtplaza");
                TextBox txtBase = (TextBox)gvDespacho.Rows[e.RowIndex].FindControl("txtBase");
                TextBox txtTela = (TextBox)gvDespacho.Rows[e.RowIndex].FindControl("txtTela");
                TextBox txtColor = (TextBox)gvDespacho.Rows[e.RowIndex].FindControl("txtColor");
                TextBox txtDireccion = (TextBox)gvDespacho.Rows[e.RowIndex].FindControl("txtDireccion");
                TextBox txtDeptoCasa = (TextBox)gvDespacho.Rows[e.RowIndex].FindControl("txtcasadepto");
                TextBox txtComuna = (TextBox)gvDespacho.Rows[e.RowIndex].FindControl("txtComuna");
                TextBox txtTelefono = (TextBox)gvDespacho.Rows[e.RowIndex].FindControl("txttelefono");
                TextBox txtmetodopago = (TextBox)gvDespacho.Rows[e.RowIndex].FindControl("txtmetodopago");
                TextBox txtobservaciones = (TextBox)gvDespacho.Rows[e.RowIndex].FindControl("txtobservaciones");
                TextBox txtprecio = (TextBox)gvDespacho.Rows[e.RowIndex].FindControl("txtpreciototal");

                pedido.nroPedido = numeroPedido.Text.Trim();
                pedido.modelo = txtmodelo.Text.Trim();
                pedido.plaza = txtplaza.Text.Trim();
                pedido.bases = txtBase.Text.Trim();
                pedido.tela = txtTela.Text.Trim();
                pedido.color = txtColor.Text.Trim();
                pedido.direccion = txtDireccion.Text.Trim();
                pedido.deptocasa = txtDeptoCasa.Text.Trim();
                pedido.comuna = txtComuna.Text.Trim();
                pedido.telefono = txtTelefono.Text.Trim();
                pedido.metodopago = txtmetodopago.Text.Trim();
                pedido.observaciones = txtobservaciones.Text.Trim();
                pedido.precio = txtprecio.Text.Trim();
                DataTable dt = new DataTable();
                dt = PreparaAccesoRetiro.updatingadmin(pedido, cadenaConexion);
                gvDespacho.EditIndex = -1;
                llenaEnDespachos();


            }
            catch (Exception ex)
            {

                string mensaje = ex.Message.ToString();
            }
        }

        protected void gvDespacho_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvDespacho.EditIndex = -1;
            llenaEnDespachos();

        }

        protected void gvDespacho_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                GridViewRow row = gvDespacho.SelectedRow;

                pedido.nroPedido= (gvDespacho.DataKeys[row.RowIndex].Values["idPedido"]).ToString();
                DataTable dt = new DataTable();
                dt = PreparaAccesoRetiro.devolverdespachoaterminado(pedido, cadenaConexion);
                llenaEnDespachos();
                Response.Redirect("despacho.aspx", false);
            }
            catch (Exception ex)
            {

                string mensaje = ex.Message.ToString();
            }
           
        }
    }
}