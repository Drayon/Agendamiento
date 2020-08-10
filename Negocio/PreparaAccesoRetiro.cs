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
    

    public class PreparaAccesoRetiro
    {
        ePedido pedido = new ePedido();
      
        public static DataTable insertarProducto(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.insertarProducto(pedido, Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable cambiaEstadoPedido(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.cambiaEstadoPedido(pedido, Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        

        public static DataTable produccionTodos( string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.produccionTodos( Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable NuevoPedido(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.NuevoPedido(pedido,Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable cambiaEstadoProduccion(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.cambiaEstadoProduccion(pedido, Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable buscadatosInstagram(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.buscadatosInstagram(pedido, Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable verTodo(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.verTodo(pedido, Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable preparaDespacho(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.preparaDespacho(pedido, Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable verTodoDespacho(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.verTodoDespacho(pedido, Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable eliminaProductoDespacho(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.eliminaProductoDespacho(pedido, Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable prioridad(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.prioridad(pedido, Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable ruta(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.ruta(pedido, Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable faltamaterial(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.faltamaterial(pedido, Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable historialpedidos(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.historialpedidos(pedido, Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable buscaDespachosactuales( string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.buscaDespachosactuales( Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable CambioPedidoaentregado(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.CambioPedidoaentregado(pedido, Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable devolverdespachoaterminado(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.devolverdespachoaterminado(pedido, Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable updatingadmin(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.updatingadmin(pedido, Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable validapass(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.validapass(pedido, Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        public static DataTable pedidosfinalizados(ePedido pedido, string Coneccion)
        {
            SqlCommand _comando = AccesoRetiro.pedidosfinalizados(pedido, Coneccion);
            _comando.CommandType = CommandType.StoredProcedure;
            return AccesoRetiro.EjecutarComando(_comando);
        }

        

    }
}
