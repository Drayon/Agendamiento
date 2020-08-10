using Microsoft.Reporting.WebForms;//necesaria
using Negocio;
using Entidad;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;//necesaria
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SomosPC
{
    public partial class imprimir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mostrar();
            }
        }

        public void mostrar()
        {
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("reporte.rdlc");
            //ReportViewer1.LocalReport.SetParameters(parametros);
            //requisicion.ordenCompra = ordenCompra;

            //DataTable dsC = PreparaAccesoIngresos.detalleProductos(requisicion, cadenaConexion2); //Con este datatable capturaremos el dato retornado para nuestro parámetro // va a buscar a la función en negocio/PreparaAcceso/BuscarDevoluciones cuando se ubique en esta función ira a buscar la función que contiene el sp en datos/AccesoDatos/BuscarLlenaDevoluciones en el caso de que este generando todo esto como nuevo debe crear todo esto desde cero tanto el sp como la forma de llamarlo
            //ReportDataSource datasource = new ReportDataSource("DataSet1", dsC);// nombre del dataset(que guardara los datos + datatable que trae el parámetro 
            //ReportViewer1.LocalReport.DataSources.Add(datasource);//

            ReportViewer1.LocalReport.ReportPath = Server.MapPath("reporte.rdlc");  //se mapea la dirección de nuestro reporte dentro del proyecto.
            ReportViewer1.LocalReport.DisplayName = "pedido";
            ReportViewer1.LocalReport.Refresh();//para refrescar el reporte
           ///comentario
        }
    }
}