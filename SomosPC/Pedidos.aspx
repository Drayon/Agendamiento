<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="SomosPC.Pedidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Ingresar Pedidos</h2>

     <div class="col-lg-6"><asp:Button ID="btnNuevoPedido" runat="server" CssClass="btn btn-primary btn-lg " Text="Nuevo Pedido" OnClick="btnNuevoPedido_Click"/></div>
    <br />
       
    <div class="row">
    <div class="col-lg-6"></div>
        <div class="col-lg-6"><asp:TextBox ID="txtNroPedido" CssClass="form-control" Enabled="FALSE" Text="" runat="server" Font-Size="X-Large"></asp:TextBox> <hr /></div>
       
    </div>
     <h3>Datos Cliente</h3>
    <div class="row">

        
        <div class="col-lg-2 ">Instagram<asp:TextBox ID="txtInstagram" CssClass="form-control" runat="server" AutoPostBack="true" OnTextChanged="txtInstagram_TextChanged" AutoCompleteType="Disabled"></asp:TextBox></div>
        <div class="col-lg-4">Dirección<asp:TextBox ID="txtDireccion" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox></div>
        <div class="col-lg-2">Depto/Casa<asp:TextBox ID="txtdeptocasa" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox></div>
        <div class="col-lg-2">Comuna<asp:TextBox ID="txtcomuna" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox></div>
       <div class="col-lg-2">Telefono<asp:TextBox ID="txttelefono" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox></div>
    </div>
    <br />
     <h3>Detalle del Pedido</h3>
    <div class="row">
        <div class="col-lg-2">Modelo<asp:DropDownList ID="ddlModelo" Width="100%"  CssClass="btn btn-primary" runat="server" Height="40px">
            <asp:ListItem Selected="True">Botone</asp:ListItem>
            <asp:ListItem>Capitone</asp:ListItem>
            </asp:DropDownList></div>
        <div class="col-lg-1">Plaza<asp:TextBox ID="txtPlaza" CssClass="form-control" runat="server" AutoCompleteType="Disabled" MaxLength="5" Wrap="False"></asp:TextBox></div>
        <div class="col-lg-1">Base<asp:TextBox ID="txtBase" CssClass="form-control" Text="60" AutoCompleteType="Disabled" runat="server"></asp:TextBox></div>
        <div class="col-lg-2">Tela<asp:TextBox ID="txtTela" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox></div>
        <div class="col-lg-2">Color<asp:TextBox ID="txtColor" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox></div>
        <div class="col-lg-2">Cantidad<asp:TextBox ID="txtCantidad" CssClass="form-control" Enabled="false" Text="1" runat="server" AutoCompleteType="Disabled"></asp:TextBox></div>
        <div class="col-lg-2">Precio<asp:TextBox ID="txtPrecio" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox></div>
         <div class="col-lg-2">Metodo de Pago <asp:DropDownList ID="txtMetodoPago" Width="100%"  CssClass="btn btn-primary" runat="server" Height="40px">
            <asp:ListItem Selected="True">Transferencia</asp:ListItem>
            <asp:ListItem>Efectivo</asp:ListItem>
             <asp:ListItem>Maquina</asp:ListItem>
            </asp:DropDownList></div>
        <div class="col-lg-6">Observaciones <asp:TextBox ID="txtObservaciones" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox></div>
      <div class="col-lg-2">-<asp:Button ID="btnAgregarProducto" CssClass="btn btn-primary btn-lg btn-block " runat="server" Text="Agregar" OnClick="btnAgregarProducto_Click" /></div>
   
    </div>
 
   <div id="divGrid" runat="server" style="overflow: auto; height: auto">
     <asp:GridView  class="table-bordered table table-hover" ID="gvPedido" runat="server" AutoGenerateColumns="False"
                                    Width="100%" EmptyDataText="No Existen Registros" style="font-size: x-small" DataKeyNames="IDPEDIDO,CORRELATIVO"  AllowPaging="True"   BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3"   >
                                    <FooterStyle HorizontalAlign="Center" BackColor="White" ForeColor="#000066" />
                                    <HeaderStyle CssClass="cabeceraGrilla2" BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                    <RowStyle CssClass="itemsGridView" ForeColor="#000066" />
                                    <AlternatingRowStyle CssClass="itemsGridViewAlternate" />
                                    <EmptyDataRowStyle CssClass="cssValidator"></EmptyDataRowStyle>
                                    <Columns>
                                      
                                        <asp:BoundField DataField="IDPEDIDO" HeaderText="NroPedido"> 
                                            <HeaderStyle HorizontalAlign="Center" /> 
                                            <ItemStyle Width="10%" HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="CORRELATIVO" HeaderText="Nro">
                                            <ItemStyle Width="5%" HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="MODELO" HeaderText="Modelo" >
                                            <ItemStyle Width="10%" HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="PLAZA" HeaderText="PLAZA">
                                            <ItemStyle Width="10%" HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="BASE" HeaderText="BASE">
                                            <ItemStyle Width="15%" HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>
                                          <asp:BoundField DataField="TELA" HeaderText="TELA" >
                                            <ItemStyle Width="10%"  HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>  
                                         <asp:BoundField DataField="COLOR" HeaderText="COLOR" >
                                            <ItemStyle Width="25%"  HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>                              
                                       <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" >
                                            <ItemStyle Width="10%"  HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>       
                           <asp:BoundField DataField="PRECIO" HeaderText="PRECIO" DataFormatString="{0:N0}" >
                                            <ItemStyle Width="25%"  HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>     
                                          <asp:BoundField DataField="PRECIOTOTAL" HeaderText="PRECIO TOTAL" >
                                            <ItemStyle Width="25%"  HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>       
                                    </Columns>
                                    <PagerStyle HorizontalAlign="Left" CssClass="GridPager" BackColor="White" ForeColor="#000066" Font-Size="X-Large" />
                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                                </asp:GridView>    
    </div>


    <hr />
    <div class="row">
        <div class="col-lg-3"></div>
       
        <div class="col-lg-6"><asp:Button ID="btnPedidoListo" CssClass="btn btn-success btn-lg btn-block " runat="server" Visible="false" Text="Pedido se ha ingresado Correctamente."/></div>
        <div class="col-lg-3"></div>
    </div>


    <hr />


     <div id="div1" runat="server" style="overflow: auto; height: auto; font-size: large;">
     <asp:GridView  class="table-bordered table table-hover" ID="gvpedidoanterior" runat="server" AutoGenerateColumns="False"
                                    Width="100%" EmptyDataText="No Existen Registros" style="font-size: small"   AllowPaging="True"   BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3"  PageSize="10000000" Height="56px"   >
                                    <FooterStyle HorizontalAlign="Center" BackColor="White" ForeColor="#000066" />
                                    <HeaderStyle CssClass="cabeceraGrilla2" BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                    <RowStyle CssClass="itemsGridView" ForeColor="#000066" />
                                    <AlternatingRowStyle CssClass="itemsGridViewAlternate" />
                                    <EmptyDataRowStyle CssClass="cssValidator"></EmptyDataRowStyle>
                                    <Columns>
                                      
                                        <asp:BoundField DataField="IDPEDIDO" HeaderText="NroPedido"> 
                                            <HeaderStyle HorizontalAlign="Center" /> 
                                            <ItemStyle Width="10%" HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="MODELO" HeaderText="Modelo" >
                                            <ItemStyle Width="10%" HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="PLAZA" HeaderText="PLAZA">
                                            <ItemStyle Width="15%" HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="BASE" HeaderText="BASE">
                                            <ItemStyle Width="15%" HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>
                                          <asp:BoundField DataField="TELA" HeaderText="TELA" >
                                            <ItemStyle Width="10%"  HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>  
                                         <asp:BoundField DataField="COLOR" HeaderText="COLOR" >
                                            <ItemStyle Width="15%"  HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>     
                                        
                                   
                                      
                              
                
                                       
                                          <asp:BoundField DataField="FECHAINGRESADO" HeaderText="Fecha" >
                                            <ItemStyle Width="15%"  HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>  
                                          <asp:BoundField DataField="USUARIOCREADOR" HeaderText="Vendedora" >
                                            <ItemStyle Width="15%"  HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>  
                
                                     
                                    </Columns>
                                    <PagerStyle HorizontalAlign="Left" CssClass="GridPager" BackColor="White" ForeColor="#000066" Font-Size="X-Large" />
                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                                </asp:GridView>    
    </div>

</asp:Content>
