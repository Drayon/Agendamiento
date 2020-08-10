using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Datos;
using Entidad;
using System.Text.RegularExpressions;

namespace Negocio
{
    
   public class PedidoNegocio

    {
        ePedido pedido = new ePedido();

                public static DataTable registro(ePedido pedido, string Coneccion)
                {
                    SqlCommand _comando = AccesoRetiro.insertarProducto(pedido, Coneccion);
                    _comando.CommandType = CommandType.StoredProcedure;
                    return AccesoRetiro.EjecutarComando(_comando);
                }

            


    }
}
