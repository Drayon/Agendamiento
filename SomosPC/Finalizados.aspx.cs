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
    public partial class Finalizados : System.Web.UI.Page
    {
        string cadenaConexion = SiteMaster.Coneccion;
        ePedido pedido = new ePedido();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pedidosfinalidos();
            }
        }

        public void pedidosfinalidos()
        {
            DataTable dt = new DataTable();
            dt = PreparaAccesoRetiro.pedidosfinalizados(pedido, cadenaConexion);
            gvfinalizados.DataSource = dt;
            gvfinalizados.DataBind();

        }
    }
}