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
namespace SomosPC
{
    public partial class Pedidos : System.Web.UI.Page
    {
        string cadenaConexion = SiteMaster.Coneccion;
  
        ePedido pedido = new ePedido();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ddlModelo.SelectedValue = "Botone";
            }
                
          
        }

 

        protected void btnAgregarProducto_Click(object sender, EventArgs e)
        {
            try
            {
                  if (txtInstagram.Text.Length == 0 | txtDireccion.Text.Length < 5 |  txtcomuna.Text.Length == 0 | txttelefono.Text.Length == 0)
                {
                    string script = @"<script type='text/javascript'> alert('Faltan Datos Obligatorios del Cliente.'); </script>";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                }
                else if (txtNroPedido.Text.Length <5 | txtPlaza.Text.Length == 0 | txtBase.Text.Length == 0 | txtTela.Text.Length == 0 | txtColor.Text.Length == 0 | txtPrecio.Text.Length == 0)
                {
                    string script = @"<script type='text/javascript'> alert('Faltan Datos Obligatorios al Pedido'); </script>";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                }
               
                else
                {
                    pedido.nroPedido = txtNroPedido.Text.Trim();
                    pedido.modelo = ddlModelo.Text.Trim();
                    pedido.plaza = txtPlaza.Text.Trim();
                    pedido.bases = txtBase.Text.Trim();
                    pedido.tela = txtTela.Text.Trim();
                    pedido.color = txtColor.Text.Trim();
                    pedido.cantidad = Convert.ToInt32(txtCantidad.Text.Trim());
                    pedido.precio = txtPrecio.Text.Trim();
                    pedido.observaciones = txtObservaciones.Text.Trim();

                    pedido.instagram = txtInstagram.Text.Trim();
                    pedido.direccion = txtDireccion.Text.Trim();
                    pedido.deptocasa = txtdeptocasa.Text.Trim();
                    pedido.comuna = txtcomuna.Text.Trim();
                    pedido.telefono = txttelefono.Text.Trim();
                    pedido.metodopago = txtMetodoPago.Text.Trim();


                    DataTable det = new DataTable();
                    det = PreparaAccesoRetiro.insertarProducto(pedido, cadenaConexion);

                    gvPedido.DataSource = det;
                    gvPedido.DataBind();
                    limpiear();
                }


              



            }
            catch (Exception ex)
            {

                string mensaje = ex.Message.ToString();
            }
        }

        public void limpiear()
        {
          
            txtPlaza.Text = "";
            txtBase.Text = "60";
            txtTela.Text = "";
            txtColor.Text = "";
            txtPrecio.Text = "";
            txtNroPedido.Text = "";
            txtInstagram.Text = "";
            txtDireccion.Text = "";
            txttelefono.Text = "";
            txtcomuna.Text = "";
            txtdeptocasa.Text = "";
            txtObservaciones.Text = "";
            btnPedidoListo.Visible = true;
            gvPedido.DataSource = null;
            gvPedido.DataBind();
            gvpedidoanterior.DataSource = null;
            gvpedidoanterior.DataBind();
        }



        protected void btnNuevoPedido_Click(object sender, EventArgs e)
        {
            try
            {
                pedido.usuario = Session["USUARIO"].ToString().ToUpper();
                DataTable det = new DataTable();
                det = PreparaAccesoRetiro.NuevoPedido(pedido, cadenaConexion);

                txtNroPedido.Text = det.Rows[0][0].ToString();
                btnPedidoListo.Visible = false;

                gvpedidoanterior.DataSource = null;
                gvpedidoanterior.DataBind();


                txtInstagram.Focus();
            }
            catch (Exception ex)
            {
                string mensaje = ex.Message.ToString();
                
            }
        }

        protected void txtInstagram_TextChanged(object sender, EventArgs e)
        {
            try
            {
                pedido.instagram = txtInstagram.Text.Trim();
                DataTable dt = new DataTable();
                dt = PreparaAccesoRetiro.buscadatosInstagram(pedido, cadenaConexion);

                if (dt.Rows.Count > 0)
                {
                    txtDireccion.Text = dt.Rows[0][0].ToString().ToUpper();
                    txtdeptocasa.Text = dt.Rows[0][1].ToString().ToUpper();
                    txtcomuna.Text = dt.Rows[0][2].ToString().ToUpper();
                    txttelefono.Text = dt.Rows[0][3].ToString().ToUpper();

                    DataTable dtPedAnteriores = new DataTable();
                    dtPedAnteriores = PreparaAccesoRetiro.historialpedidos(pedido, cadenaConexion);

                    gvpedidoanterior.DataSource = dtPedAnteriores;
                    gvpedidoanterior.DataBind();

                    txtPlaza.Focus();
                }
                else
                {
                    
                    txtDireccion.Text = "";
                    txtdeptocasa.Text = "";
                    txtcomuna.Text = "";
                    txttelefono.Text = "";
                    txtDireccion.Focus();
                }

            }
            catch (Exception)
            {

                throw;
            }
        }

        //protected void BtnCancelar_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        pedido.nroPedido = txtNroPedido.Text.Trim();
        //        pedido.estado = "-1";
        //        DataTable dt = new DataTable();
        //        dt = PreparaAccesoRetiro.cambiaEstadoPedido(pedido, cadenaConexion);


        //    }
        //    catch (Exception ex)
        //    {

        //        string a = ex.Message.ToString();
        //    }
        //}
    }
}