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
    public partial class admin : System.Web.UI.Page
    {
        string cadenaConexion = SiteMaster.Coneccion;

        ePedido pedido = new ePedido();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                llenaGvInforme();
                llenaPreparadespacho();
            }



        }


        public void llenaPreparadespacho()
        {
            try
            {
                DataTable dt = new DataTable();
                dt = PreparaAccesoRetiro.verTodoDespacho(pedido, cadenaConexion);

                gvPreparaDespacho.DataSource = dt;
                gvPreparaDespacho.DataBind();

            }
            catch (Exception ex)
            {

                throw;
            }
        }


        public void llenaGvInforme()
        {
            try
            {

                DataTable dt = new DataTable();
                dt = PreparaAccesoRetiro.verTodo(pedido, cadenaConexion);



                gvInforme.DataSource = dt;
                gvInforme.DataBind();

            }
            catch (Exception ex)
            {

                string mensaje = ex.Message.ToString();
            }
        }

        protected void gvInforme_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvInforme.EditIndex = -1;
            llenaGvInforme();
        }

        protected void gvInforme_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvInforme.EditIndex = e.NewEditIndex;
            llenaGvInforme();

        }

        protected void gvInforme_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                GridViewRow row = (GridViewRow)gvInforme.Rows[e.RowIndex];
                Label numeroPedido = (Label)gvInforme.Rows[e.RowIndex].FindControl("lblPedido");
                Label numeroCorrelativo = (Label)gvInforme.Rows[e.RowIndex].FindControl("lblCorrelativo");
                TextBox txtmodelo = (TextBox)gvInforme.Rows[e.RowIndex].FindControl("txtModelo");
                TextBox txtplaza= (TextBox)gvInforme.Rows[e.RowIndex].FindControl("txtplaza");
                TextBox txtBase = (TextBox)gvInforme.Rows[e.RowIndex].FindControl("txtBase");
                TextBox txtTela = (TextBox)gvInforme.Rows[e.RowIndex].FindControl("txtTela");
                TextBox txtColor = (TextBox)gvInforme.Rows[e.RowIndex].FindControl("txtColor");
                TextBox txtDireccion = (TextBox)gvInforme.Rows[e.RowIndex].FindControl("txtDireccion");
                TextBox txtDeptoCasa = (TextBox)gvInforme.Rows[e.RowIndex].FindControl("txtcasadepto");
                TextBox txtComuna = (TextBox)gvInforme.Rows[e.RowIndex].FindControl("txtComuna");
                TextBox txtTelefono = (TextBox)gvInforme.Rows[e.RowIndex].FindControl("txttelefono");
                TextBox txtmetodopago = (TextBox)gvInforme.Rows[e.RowIndex].FindControl("txtmetodopago");
                TextBox txtobservaciones = (TextBox)gvInforme.Rows[e.RowIndex].FindControl("txtobservaciones");
                TextBox txtprecio = (TextBox)gvInforme.Rows[e.RowIndex].FindControl("txtpreciototal");

                pedido.nroPedido = numeroPedido.Text.Trim();
                pedido.correlativo = Convert.ToInt32(numeroCorrelativo.Text.Trim());
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
                gvInforme.EditIndex = -1;
                llenaGvInforme();


            }
            catch (Exception ex)
            {

                string mensaje = ex.Message.ToString();
            }
        }

        protected void gvInforme_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int id = e.RowIndex; //iterador de la fila


                pedido.nroPedido = Convert.ToString(gvInforme.DataKeys[e.RowIndex].Value);
                pedido.estado = "99";
                DataTable dt = new DataTable();
                dt = PreparaAccesoRetiro.cambiaEstadoPedido(pedido, cadenaConexion);

                llenaGvInforme();
                llenaPreparadespacho();
            }
            catch (Exception ex)
            {

                throw;
            }



        }

        protected void gvInforme_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string status = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "EstadoTotal"));

                if (status == "TERMINADO")
                {
                    e.Row.BackColor = Color.FromName("c6efce");
                    e.Row.Cells[0].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[1].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[2].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[3].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[4].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[5].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[6].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[7].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[8].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[9].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[10].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[11].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[12].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[13].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[14].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[15].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[16].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[17].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[18].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[19].BackColor = Color.FromName("#00b0f0");
                    e.Row.Cells[20].BackColor = Color.FromName("#00b0f0");
                 
                }

                if (status == "FALTA MATERIAL")
                {
                    e.Row.BackColor = Color.FromName("c6efce");
                    e.Row.Cells[0].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[1].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[2].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[3].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[4].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[5].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[6].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[7].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[8].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[9].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[10].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[11].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[12].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[13].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[14].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[15].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[16].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[17].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[18].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[19].BackColor = Color.FromName("#F4EE15");
                    e.Row.Cells[20].BackColor = Color.FromName("#F4EE15");
                 

                }


                if (status == "EN DESPACHO")
                {
                    e.Row.BackColor = Color.FromName("c6efce");
                    e.Row.Cells[0].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[1].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[2].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[3].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[4].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[5].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[6].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[7].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[8].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[9].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[10].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[11].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[12].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[13].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[14].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[15].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[16].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[17].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[18].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[19].BackColor = Color.FromName("#F4B715");
                    e.Row.Cells[20].BackColor = Color.FromName("#F4B715");
                   

                }


            }
        }

        protected void chkRow_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                foreach (GridViewRow row in gvInforme.Rows)



                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        CheckBox chkRow = (row.Cells[0].FindControl("chkRow") as CheckBox);


                        if (chkRow.Checked)
                        {

                            pedido.nroPedido = (row.Cells[1].FindControl("lblPedido") as Label).Text;
                            pedido.correlativo = Convert.ToInt32((row.Cells[2].FindControl("lblCorrelativo") as Label).Text);
                            pedido.estado = "2";



                            DataTable dt = new DataTable();
                            dt = PreparaAccesoRetiro.preparaDespacho(pedido, cadenaConexion);

                            gvPreparaDespacho.DataSource = dt;
                            gvPreparaDespacho.DataBind();
                            chkRow.Checked = false;
                            llenaGvInforme();


                        }
                    }

                }
            }
            catch (Exception ex)
            {

                string mensaje = ex.Message.ToString();
            }
        }
    

        protected void btnImprimir_Click(object sender, EventArgs e)
        {
            try
            {
                #region o
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                StringWriter sw = new StringWriter(sb);
                HtmlTextWriter htw = new HtmlTextWriter(sw);

                Page page = new Page();
                HtmlForm form = new HtmlForm();

                gvPreparaDespacho.EnableViewState = false;

                // Deshabilitar la validación de eventos, sólo asp.net 2
                page.EnableEventValidation = false;


                // Realiza las inicializaciones de la instancia de la clase Page que requieran los diseñadores RAD.
                page.DesignerInitialize();

                page.Controls.Add(form);
                form.Controls.Add(gvPreparaDespacho);

                page.RenderControl(htw);
                Response.Clear();
                Response.Buffer = true;
                Response.ContentType = "application/vnd.ms-excel";
                Response.AddHeader("Content-Disposition", "attachment;filename=Informe.xls");
                Response.Charset = "UTF-8";
                Response.ContentEncoding = System.Text.Encoding.Default;
                Response.Write(sb.ToString());
                Response.End();
                #endregion


            }


            catch (Exception ex)
            {
                string error = ex.ToString();

            }
        }

        protected void gvPreparaDespacho_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int id = e.RowIndex; //iterador de la fila
                 

                pedido.nroPedido =  Convert.ToString(gvPreparaDespacho.DataKeys[e.RowIndex].Value);

                DataTable dt = new DataTable();
                dt = PreparaAccesoRetiro.eliminaProductoDespacho(pedido, cadenaConexion);

                llenaGvInforme();
                llenaPreparadespacho();
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void gvInforme_Load(object sender, EventArgs e)
        {
         
        }

        protected void btnPrioridad_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[1] { new DataColumn("IDPEDIDO") });
                foreach (GridViewRow row in gvInforme.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        CheckBox chkRow = (row.Cells[0].FindControl("chkRowPrioridad") as CheckBox);
                        if (chkRow.Checked)
                        {
                            pedido.nroPedido = (row.Cells[1].FindControl("lblPedido") as Label).Text;
                            pedido.prioridad = "1";
                            PreparaAccesoRetiro.prioridad(pedido, cadenaConexion);
                            
                     
                        }
                    }
                }
                llenaGvInforme();

            }
            catch ( Exception ex)
            {

                
            }
        }

        protected void btnFaltaMaterial_Click(object sender, EventArgs e)
        {

            try
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[1] { new DataColumn("IDPEDIDO") });
                foreach (GridViewRow row in gvInforme.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        CheckBox chkRow = (row.Cells[0].FindControl("chkRowPrioridad") as CheckBox);
                        if (chkRow.Checked)
                        {
                            pedido.nroPedido = (row.Cells[1].FindControl("lblPedido") as Label).Text;
                        
                            DataTable dtfaltaMaterial = new DataTable();
                            dtfaltaMaterial = PreparaAccesoRetiro.faltamaterial(pedido, cadenaConexion);


                        }
                    }
                }
                llenaGvInforme();

            }
            catch (Exception ex)
            {


            }
         
        }

        protected void btnDespachar_Click(object sender, EventArgs e)
        {
            try
            {
                pedido.despachador = ddlDespachador.SelectedValue;

                        DataTable dt2 = new DataTable();
                        dt2 = PreparaAccesoRetiro.ruta(pedido, cadenaConexion);

                llenaPreparadespacho();
                llenaGvInforme();
            }
            catch (Exception ex)
            {

                string mensaje = ex.Message.ToString();
            }
        }

  
    }
}