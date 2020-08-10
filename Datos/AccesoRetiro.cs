using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidad;

namespace Datos
{
    public class AccesoRetiro
    {
        e_retiro retiro = new e_retiro();
      
        public static DataTable EjecutarComando(SqlCommand _comando)
        {
          
            DataTable _tabla = new DataTable();
            try
            {
                _comando.Connection.Open();
                SqlDataAdapter _adaptador = new SqlDataAdapter();
                _adaptador.SelectCommand = _comando;
                _adaptador.Fill(_tabla);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                _comando.Connection.Close();
            }
            return _tabla;
        }

        public static SqlCommand insertarProducto(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_PEDIDO_INSERTAPRODUCTO", _conexion);
            _comando.Parameters.AddWithValue("@NROPEDIDO", pedido.nroPedido);
            _comando.Parameters.AddWithValue("@MODELO", pedido.modelo);
            _comando.Parameters.AddWithValue("@PLAZA", pedido.plaza);
            _comando.Parameters.AddWithValue("@BASE", pedido.bases);
            _comando.Parameters.AddWithValue("@TELA", pedido.tela);
            _comando.Parameters.AddWithValue("@COLOR", pedido.color);
            _comando.Parameters.AddWithValue("@CANTIDAD", pedido.cantidad);
            _comando.Parameters.AddWithValue("@PRECIO", pedido.precio);
            _comando.Parameters.AddWithValue("@OBSERVACIONES", pedido.observaciones);

            _comando.Parameters.AddWithValue("@INSTAGRAM", pedido.instagram);
            _comando.Parameters.AddWithValue("@DIRECCION", pedido.direccion);
            _comando.Parameters.AddWithValue("@DEPTOCASA", pedido.deptocasa);
            _comando.Parameters.AddWithValue("@COMUNA", pedido.comuna);
            _comando.Parameters.AddWithValue("@TELEFONO", pedido.telefono);
            _comando.Parameters.AddWithValue("@METODOPAGO", pedido.metodopago);

            _comando.Connection.Close();
            return _comando;
        }

        

             public static SqlCommand cambiaEstadoPedido(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_PEDIDO_CAMBIA_ESTADO", _conexion);
            _comando.Parameters.AddWithValue("@NROPEDIDO", pedido.nroPedido);
            _comando.Parameters.AddWithValue("@ESTADO", pedido.estado);
            return _comando;
        }

        public static SqlCommand produccionTodos(string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_PIZARRA_PEDIDOS", _conexion);
            //_comando.Parameters.AddWithValue("@nombre", serv.nombre);
            //_comando.Parameters.AddWithValue("@telefono", serv.telefono);
            //_comando.Parameters.AddWithValue("@mail", serv.mail);
            //_comando.Parameters.AddWithValue("@consulta", serv.consulta);
            _comando.Connection.Close();
            return _comando;
        }

        public static SqlCommand NuevoPedido(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_PEDIDO_NUEVOPEDIDO", _conexion);
            _comando.Parameters.AddWithValue("@USUARIO", pedido.usuario);
            return _comando;
        }

        public static SqlCommand cambiaEstadoProduccion(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_PRODUCCION_CAMBIAESTADO_PIZARRA", _conexion);
            _comando.Parameters.AddWithValue("@NROPEDIDO", pedido.nroPedido);
            _comando.Parameters.AddWithValue("@CORRELATIVO", pedido.correlativo);
            _comando.Parameters.AddWithValue("@ESTADOUSUARIO", pedido.usuario);
            _comando.Parameters.AddWithValue("@TAPICERO", pedido.tapicero);
            return _comando;
        }

        public static SqlCommand buscadatosInstagram(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_BUSCADATOS_INSTAGRAM", _conexion);
            _comando.Parameters.AddWithValue("@INSTAGRAM", pedido.instagram);
            return _comando;
        }

        public static SqlCommand verTodo(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_ADMIN_VERTODO", _conexion);
            return _comando;
        }

        public static SqlCommand preparaDespacho(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_PREPARADESPACHO", _conexion);
            _comando.Parameters.AddWithValue("@NROPEDIDO", pedido.nroPedido);
            _comando.Parameters.AddWithValue("@CORRELATIVO", pedido.correlativo);
            _comando.Parameters.AddWithValue("@ESTADO", pedido.estado);
            return _comando;
        }

        public static SqlCommand verTodoDespacho(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_PREPARADESPACHOPRIMERINGRESO", _conexion);
            return _comando;
        }

        public static SqlCommand eliminaProductoDespacho(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_PREPRANDODESCHAPODEVUELVE", _conexion);
            _comando.Parameters.AddWithValue("@NROPEDIDO", pedido.nroPedido);
            return _comando;
        }

        public static SqlCommand prioridad(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_PRIORIDAD", _conexion);
            _comando.Parameters.AddWithValue("@NROPEDIDO", pedido.nroPedido);
            _comando.Parameters.AddWithValue("@PRIORIDAD", pedido.prioridad);
            return _comando;
        }

        public static SqlCommand ruta(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_RUTA", _conexion);
            _comando.Parameters.AddWithValue("@DESPACHADOR", pedido.despachador);
            return _comando;
        }

        public static SqlCommand faltamaterial(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_FALTAMATERIAL", _conexion);
            _comando.Parameters.AddWithValue("@NROPEDIDO", pedido.nroPedido);
            return _comando;
        }

        public static SqlCommand historialpedidos(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_VERHISTORIALDEPEDIDOSCLIENTE", _conexion);
            _comando.Parameters.AddWithValue("@INSTAGRAM", pedido.instagram);
            return _comando;
        }

        public static SqlCommand buscaDespachosactuales( string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_DESPACHOS", _conexion);
            return _comando;
        }

        public static SqlCommand CambioPedidoaentregado(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_CAMBIA_ESTADO_PEDIDO_A_ENTREGADO", _conexion);
            _comando.Parameters.AddWithValue("@NROPEDIDO", pedido.nroPedido);
            return _comando;
        }

        public static SqlCommand devolverdespachoaterminado(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_CAMBIA_ESTADO_PEDIDO_A_DEVUELTO", _conexion);
            _comando.Parameters.AddWithValue("@NROPEDIDO", pedido.nroPedido);
            return _comando;
        }

        public static SqlCommand updatingadmin(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_UPDATE_ADMIN", _conexion);
            _comando.Parameters.AddWithValue("@NROPEDIDO", pedido.nroPedido);
            _comando.Parameters.AddWithValue("@MODELO", pedido.modelo);
            _comando.Parameters.AddWithValue("@PLAZA", pedido.plaza);
            _comando.Parameters.AddWithValue("@BASE", pedido.bases);
            _comando.Parameters.AddWithValue("@TELA", pedido.tela);
            _comando.Parameters.AddWithValue("@COLOR", pedido.color);
            _comando.Parameters.AddWithValue("@DIRECCION", pedido.direccion);
            _comando.Parameters.AddWithValue("@DEPTOCASA", pedido.deptocasa);
            _comando.Parameters.AddWithValue("@COMUNA", pedido.comuna);
            _comando.Parameters.AddWithValue("@TELEFONO", pedido.telefono);
            _comando.Parameters.AddWithValue("@METODOPAGO", pedido.metodopago);
            _comando.Parameters.AddWithValue("@OBSERVACIONES", pedido.observaciones);
            _comando.Parameters.AddWithValue("@PRECIO", pedido.precio);
            return _comando;
        }

        public static SqlCommand validapass(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("SP_USUARIO_VALIDAR_USUARIOCONTRASENA", _conexion);
            _comando.Parameters.AddWithValue("@USUARIO", pedido.usuario);
            _comando.Parameters.AddWithValue("@PASS", pedido.pass);
            return _comando;
        }

        public static SqlCommand pedidosfinalizados(ePedido pedido, string Coneccion)
        {
            string _cadenaconexion = Coneccion;
            SqlConnection _conexion = new SqlConnection(_cadenaconexion);
            SqlCommand _comando = new SqlCommand("sp_pedidosfinalizados", _conexion);
            return _comando;
        }
        

    }
}
