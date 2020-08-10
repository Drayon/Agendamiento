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
using System.Net;

namespace SomosPC
{
    public partial class Login : System.Web.UI.Page
    {
        string cadenaConexion = SiteMaster.Coneccion;
        ePedido pedido = new ePedido();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                pedido.usuario = txtUsuario.Text.Trim();
                pedido.pass = txtPass.Text.Trim();

                DataTable dt = new DataTable();
                dt = PreparaAccesoRetiro.validapass(pedido, cadenaConexion);

                if (dt.Rows[0][0].ToString() == "CORRECTO")
                {
                    Session["PERFIL"] = dt.Rows[0][1].ToString().Trim();
                    Session["USUARIO"] = pedido.usuario;

                    if (dt.Rows[0][1].ToString().Trim() =="ADMIN")
                    {
                        Response.Redirect("admin.aspx");
                    }
                    else if (dt.Rows[0][1].ToString().Trim() == "VENDEDORA")
                    {
                        Response.Redirect("Pedidos.aspx");
                    }
                    else
                    {
                        Response.Redirect("default.aspx");
                    }

                   
                }
                else
                {
                    Response.Redirect("login.aspx");
                }

            }
            catch (Exception ex)
            {

                
            }

            
        }
    }
}