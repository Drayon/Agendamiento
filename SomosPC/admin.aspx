<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="SomosPC.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>PLANILLA DE PEDIDOS</h3>
   


            <div id="divGrid" style="overflow: auto; height: auto">
                <asp:GridView class="table-bordered table table-hover" Font-Names="Calibri" ID="gvInforme" runat="server" AutoGenerateColumns="False"
                    Width="100%"  EmptyDataText="No existen productos." Style="font-size: small" DataKeyNames="idPedido,correlativo" AllowPaging="True" BackColor="White" PageSize="20" OnRowCancelingEdit="gvInforme_RowCancelingEdit" OnRowEditing="gvInforme_RowEditing" OnRowUpdating="gvInforme_RowUpdating" OnRowDeleting="gvInforme_RowDeleting" OnRowDataBound="gvInforme_RowDataBound" OnLoad="gvInforme_Load" >
                    <FooterStyle HorizontalAlign="Center" BackColor="White" ForeColor="#000066" />
                    <HeaderStyle CssClass="cabeceraGrilla2" BackColor="#006699"   ForeColor="White" HorizontalAlign="Center" Font-Bold="True" />
                    <RowStyle CssClass="itemsGridView" ForeColor="#000066" />
                    <AlternatingRowStyle CssClass="itemsGridViewAlternate" />
                    <EditRowStyle BackColor="#e5961a" />
                    <EmptyDataRowStyle CssClass="cssValidator"></EmptyDataRowStyle>
                    <Columns>

                          <asp:TemplateField HeaderText="Ingreso" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblFechaIngresado" runat="server" Text='<%# Bind("FechaIngresado", "{0:dddd} {0:dd/MM/yyyy}") %>'> </asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="5%" HorizontalAlign="Center" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="NroP" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblPedido" runat="server" Text='<%# Bind("idPedido") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="2%" HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Cor" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblCorrelativo" runat="server" Text='<%# Bind("correlativo") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="2%" HorizontalAlign="Center" />
                        </asp:TemplateField>
                      
                        <asp:TemplateField HeaderText="Mod" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblModelo" runat="server" Text='<%# Bind("modelo") %>'></asp:Label>
                            </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtModelo" runat="server"  CssClass="btn btn-light btn-xs" Text='<%# Bind("modelo") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="5%" HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Plaza" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblPlaza" runat="server" Text='<%# Bind("plaza") %>'></asp:Label>
                            </ItemTemplate>
                               <EditItemTemplate>
                                    <asp:TextBox ID="txtPlaza" runat="server"  CssClass="btn btn-light btn-xss" Text='<%# Bind("plaza") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="2%" HorizontalAlign="Center" />
                        </asp:TemplateField>


                         <asp:TemplateField HeaderText="Base" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblBase" runat="server" Text='<%# Bind("base") %>'></asp:Label>
                            </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtBase" runat="server"  CssClass="btn btn-light btn-xss" Text='<%# Bind("base") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="1%" HorizontalAlign="Center" />
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Tela" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblTela" runat="server" Text='<%# Bind("tela") %>'></asp:Label>
                            </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTela" runat="server"  CssClass="btn btn-light btn-xss" Text='<%# Bind("tela") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="3%" HorizontalAlign="Center" />
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Color" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblColor" runat="server" Text='<%# Bind("color") %>'></asp:Label>
                            </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtColor" runat="server"  CssClass="btn btn-light btn-xss" Text='<%# Bind("color") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="5%" HorizontalAlign="Center" />
                        </asp:TemplateField>

                          <asp:TemplateField HeaderText="Direccion" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lbldireccion" runat="server" Text='<%# Bind("direccion") %>'></asp:Label>
                            </ItemTemplate>
                                 <EditItemTemplate>
                                    <asp:TextBox ID="txtDireccion" runat="server"  Width="100%" CssClass="btn btn-light btn-xs" Text='<%# Bind("direccion") %>'></asp:TextBox>
                                     
                            </EditItemTemplate>
                            <ItemStyle Width="30%" HorizontalAlign="Center" />
                        </asp:TemplateField>

                           <asp:TemplateField HeaderText="Dpto" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblcasadepto" runat="server" Text='<%# Bind("deptocasa") %>'></asp:Label>
                            </ItemTemplate>
                                  <EditItemTemplate>
                                    <asp:TextBox ID="txtcasadepto" runat="server"  CssClass="btn btn-light btn-xss" Text='<%# Bind("deptocasa") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="3%" HorizontalAlign="Center" />
                        </asp:TemplateField>

                      

                          <asp:TemplateField HeaderText="Telefono" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lbltelefeno" runat="server" Text='<%# Bind("telefono") %>'></asp:Label>
                            </ItemTemplate>
                                 <EditItemTemplate>
                                    <asp:TextBox ID="txttelefono" runat="server" CssClass="btn btn-light btn-xs" Text='<%# Bind("telefono") %>'></asp:TextBox>
                                     
                            </EditItemTemplate>
                            <ItemStyle Width="5%" HorizontalAlign="Center" />
                        </asp:TemplateField>
                        
                      

                         <asp:TemplateField HeaderText="Vendedor" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblUsuarioCreador" runat="server" Text='<%# Bind("UsuarioCreador") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="5%" HorizontalAlign="Center" />
                        </asp:TemplateField>

                       
                         <asp:TemplateField HeaderText="Precio" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblpreciototal" runat="server" Text='<%# Bind("preciototal") %>'>></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                    <asp:TextBox ID="txtpreciototal" runat="server"  CssClass="btn btn-light btn-xss" Text='<%# Bind("preciototal") %>'></asp:TextBox>
                            </EditItemTemplate>
                          
                            <ItemStyle Width="3%" HorizontalAlign="Center" />
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="$" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblMetoPago" runat="server" Text='<%# Bind("metodoPago") %>'>></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                    <asp:TextBox ID="txtmetodopago" runat="server"  CssClass="btn btn-light btn-xss" Text='<%# Bind("metodoPago") %>'></asp:TextBox>
                            </EditItemTemplate>
                          
                            <ItemStyle Width="3%" HorizontalAlign="Center" />
                        </asp:TemplateField>


                        


                        

                           <asp:TemplateField HeaderText="EstadoActual" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblEstadoActual" runat="server" Text='<%# Bind("EstadoTotal") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="200px" HorizontalAlign="Center" />
                        </asp:TemplateField>
                            <asp:TemplateField HeaderText="Inst" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblInstagram" runat="server" Text='<%# Bind("Instagram") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="2%" HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Observaciones" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblObservaciones" runat="server" Text='<%# Bind("ObservacionGeneral") %>'></asp:Label>
                            </ItemTemplate>
                             <EditItemTemplate>
                                    <asp:TextBox ID="txtObservaciones" runat="server"  CssClass="btn btn-light btn-xs" Text='<%# Bind("ObservacionGeneral") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="200px" HorizontalAlign="Center" />
                        </asp:TemplateField>

                          <asp:CommandField AccessibleHeaderText="Eliminar" ShowDeleteButton="True" ButtonType="Button" DeleteImageUrl="~/Img/desactivar.png" HeaderText="Estado" DeleteText="Estado">
                            <ItemStyle HorizontalAlign="Center"  />
                        </asp:CommandField>
                       
                        <asp:CommandField ButtonType="Image" CancelImageUrl="~/Img/cancelar.png" DeleteImageUrl="~/Img/eliminar.png" EditImageUrl="~/Img/editar.png" ShowEditButton="True" UpdateImageUrl="~/Img/guardar.png" HeaderText="Editar" ItemStyle-Height="5px">
                            <ControlStyle CssClass="botoncs" />
                            <ItemStyle HorizontalAlign="Center"   CssClass="botoncs" />
                        </asp:CommandField>
                     <%--   <asp:CommandField AccessibleHeaderText="Eliminar" ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="~/Img/eliminar.png" HeaderText="Borrar">
                            <ItemStyle HorizontalAlign="Center"   Width="150px" />
                        </asp:CommandField>--%>



                          <asp:TemplateField HeaderText="Comuna" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblcomuna" runat="server" Text='<%# Bind("comuna") %>'></asp:Label>
                            </ItemTemplate>
                               <EditItemTemplate>
                                    <asp:TextBox ID="txtcomuna" runat="server"  CssClass="btn btn-light btn-xs" Text='<%# Bind("comuna") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle Font-Bold="True" />
                            <ItemStyle Width="10%" HorizontalAlign="Center" Font-Bold="True" />
                        </asp:TemplateField>

                          <asp:TemplateField HeaderText="★">
                            <ItemTemplate>
                                <asp:CheckBox ID="chkRowPrioridad"  runat="server" AutoPostBack="false" />
                            </ItemTemplate>
                            <HeaderStyle Font-Size="XX-Small" HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="✓ ">
                            <ItemTemplate>
                                <asp:CheckBox ID="chkRow" OnCheckedChanged="chkRow_CheckedChanged" runat="server" AutoPostBack="true" />
                            </ItemTemplate>
                            <HeaderStyle Font-Size="XX-Small" HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                          <asp:TemplateField HeaderText="" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblprioridad" runat="server" Text='<%# Bind("prioridad") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Font-Bold="True" />
                            <ItemStyle Width="5%" HorizontalAlign="Center" Font-Bold="True" />
                        </asp:TemplateField>



                    </Columns>
                    <PagerStyle HorizontalAlign="Center" CssClass="GridPager" Font-Size="24px" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <%--<SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />--%>
                </asp:GridView>
                     </div>
    <br />
    <hr />
    <br />
    <div class="row">
       
        
      

      
       
        <div class="col-lg-2"><asp:Button ID="btnPrioridad" runat="server" CssClass="btn btn-warning btn-block" OnClick="btnPrioridad_Click" Text="★ Prioridad" style="font-size: small" /></div>
        <div class="col-lg-2"><asp:Button ID="btnFaltaMaterial" runat="server" CssClass="btn btn-warning btn-block"  Text="★ Falta Material" style="font-size: small" OnClick="btnFaltaMaterial_Click" /></div>
          <div class="col-lg-4"></div>
       
    </div>
    <br />
    <hr />
    

        <div id="divGrid2" style="overflow: auto; height: auto">
                <asp:GridView class="table-bordered table table-hover" Font-Names="Calibri" ID="gvPreparaDespacho" runat="server" AutoGenerateColumns="False"
                    Width="100%"  EmptyDataText="No existen productos." Style="font-size: x-small" DataKeyNames="idPedido" AllowPaging="True" BackColor="White" PageSize="20" OnRowDeleting="gvPreparaDespacho_RowDeleting"  >
                    <FooterStyle HorizontalAlign="Center" BackColor="White" ForeColor="#000066" />
                    <HeaderStyle CssClass="cabeceraGrilla2" BackColor="#006699" ForeColor="White" HorizontalAlign="Center" Font-Bold="True" />
                    <RowStyle CssClass="itemsGridView" ForeColor="#000066" />
                    <AlternatingRowStyle CssClass="itemsGridViewAlternate" />
                    <EditRowStyle BackColor="#FF9966" />
                    <EmptyDataRowStyle CssClass="cssValidator"></EmptyDataRowStyle>
                    <Columns>
                        <asp:TemplateField HeaderText="NroP" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblPedido" runat="server" Text='<%# Bind("idPedido") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="40px" HorizontalAlign="Center" />
                        </asp:TemplateField>
                      
                        <asp:TemplateField HeaderText="Mod" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblModelo" runat="server" Text='<%# Bind("modelo") %>'></asp:Label>
                            </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtModelo" runat="server"  CssClass="btn btn-light btn-xs" Text='<%# Bind("modelo") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="30px" HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Plaza" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblPlaza" runat="server" Text='<%# Bind("plaza") %>'></asp:Label>
                            </ItemTemplate>
                               <EditItemTemplate>
                                    <asp:TextBox ID="txtPlaza" runat="server"  CssClass="btn btn-light btn-xss" Text='<%# Bind("plaza") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="50px" HorizontalAlign="Center" />
                        </asp:TemplateField>


                         <asp:TemplateField HeaderText="Base" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblBase" runat="server" Text='<%# Bind("base") %>'></asp:Label>
                            </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtBase" runat="server"  CssClass="btn btn-light btn-xss" Text='<%# Bind("base") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="50px" HorizontalAlign="Center" />
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Tela" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblTela" runat="server" Text='<%# Bind("tela") %>'></asp:Label>
                            </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTela" runat="server"  CssClass="btn btn-light btn-xss" Text='<%# Bind("tela") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="60px" HorizontalAlign="Center" />
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Color" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblColor" runat="server" Text='<%# Bind("color") %>'></asp:Label>
                            </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtColor" runat="server"  CssClass="btn btn-light btn-xss" Text='<%# Bind("color") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="60px" HorizontalAlign="Center" />
                        </asp:TemplateField>

                          <asp:TemplateField HeaderText="Direccion" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lbldireccion" runat="server" Text='<%# Bind("direccion") %>'></asp:Label>
                            </ItemTemplate>
                                 <EditItemTemplate>
                                    <asp:TextBox ID="txtDireccion" runat="server"  CssClass="btn btn-light btn-xs" Text='<%# Bind("direccion") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="200px" HorizontalAlign="Center" />
                        </asp:TemplateField>

                           <asp:TemplateField HeaderText="Dpto" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblcasadepto" runat="server" Text='<%# Bind("deptocasa") %>'></asp:Label>
                            </ItemTemplate>
                                  <EditItemTemplate>
                                    <asp:TextBox ID="txtcasadepto" runat="server"  CssClass="btn btn-light btn-xss" Text='<%# Bind("deptocasa") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="40px" HorizontalAlign="Center" />
                        </asp:TemplateField>

                      

                          <asp:TemplateField HeaderText="Telefono" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lbltelefeno" runat="server" Text='<%# Bind("telefono") %>'></asp:Label>
                            </ItemTemplate>
                                 <EditItemTemplate>
                                    <asp:TextBox ID="txttelefono" runat="server" CssClass="btn btn-light btn-xs" Text='<%# Bind("telefono") %>'></asp:TextBox>
                                     
                            </EditItemTemplate>
                            <ItemStyle Width="100px" HorizontalAlign="Center" />
                        </asp:TemplateField>
                        
                         <asp:TemplateField HeaderText="Precio" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblprecio" runat="server" Text='<%# Bind("preciototal") %>'></asp:Label>
                            </ItemTemplate>
                                 <EditItemTemplate>
                                    <asp:TextBox ID="txtprecio" runat="server" CssClass="btn btn-light btn-xs" Text='<%# Bind("preciototal") %>'></asp:TextBox>
                                     
                            </EditItemTemplate>
                            <ItemStyle Width="60px" HorizontalAlign="Center" />
                        </asp:TemplateField>
                      

                        <asp:TemplateField HeaderText="Pago" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblMetoPago" runat="server" Text='<%# Bind("metodoPago") %>'>></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                               <asp:DropDownList ID="txtMetodoPago" Width="100%"  CssClass="btn btn-danger btn-xs" runat="server" Height="50px">
            <asp:ListItem Selected="True">Transferencia</asp:ListItem>
            <asp:ListItem>Efectivo</asp:ListItem>
             <asp:ListItem>Debito</asp:ListItem>
             <asp:ListItem>Credito</asp:ListItem>
            </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemStyle Width="12px" HorizontalAlign="Center" />
                        </asp:TemplateField>


                            <asp:TemplateField HeaderText="Inst" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblInstagram" runat="server" Text='<%# Bind("Instagram") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="80px" HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Observaciones" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblObservaciones" runat="server" Text='<%# Bind("ObservacionGeneral") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="100px" HorizontalAlign="Center" />
                        </asp:TemplateField>

                        <%--  <asp:CommandField AccessibleHeaderText="Eliminar" ShowDeleteButton="True" ButtonType="Button" DeleteImageUrl="~/Img/desactivar.png" HeaderText="Estado" DeleteText="Estado">
                            <ItemStyle HorizontalAlign="Center"  />
                        </asp:CommandField>
                       
                        <asp:CommandField ButtonType="Image" CancelImageUrl="~/Img/cancelar.png" DeleteImageUrl="~/Img/eliminar.png" EditImageUrl="~/Img/editar.png" ShowEditButton="True" UpdateImageUrl="~/Img/guardar.png" HeaderText="Editar" ItemStyle-Height="5px">
                            <ControlStyle CssClass="botoncs" />
                            <ItemStyle HorizontalAlign="Center"   CssClass="botoncs" />
                        </asp:CommandField>--%>
                     <%--   <asp:CommandField AccessibleHeaderText="Eliminar" ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="~/Img/eliminar.png" HeaderText="Borrar">
                            <ItemStyle HorizontalAlign="Center"   Width="150px" />
                        </asp:CommandField>--%>



                          <asp:TemplateField HeaderText="Comuna" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblcomuna" runat="server" Text='<%# Bind("comuna") %>'></asp:Label>
                            </ItemTemplate>
                               <EditItemTemplate>
                                    <asp:TextBox ID="txtcomuna" runat="server"  CssClass="btn btn-light btn-xs" Text='<%# Bind("comuna") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle Font-Bold="True" />
                            <ItemStyle Width="90px" HorizontalAlign="Center" Font-Bold="True" />
                        </asp:TemplateField>
                       <%-- <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="chkRow" OnCheckedChanged="chkRow_CheckedChanged" runat="server" AutoPostBack="true" />
                            </ItemTemplate>
                            <HeaderStyle Font-Size="XX-Small" HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>--%>


                        <asp:CommandField ShowDeleteButton="True" />


                    </Columns>
                    <PagerStyle HorizontalAlign="Center" CssClass="GridPager" Font-Size="24px" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <%--<SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />--%>
                </asp:GridView>
            </div>

    <div>

        <div class="row">
            <div class="col-lg-2">  <asp:Button ID="btnImprimir" runat="server" CssClass="btn btn-success" Text="Imprimir" OnClick="btnImprimir_Click" /></div>
         <div class="col-lg-2"><asp:DropDownList ID="ddlDespachador" CssClass="btn btn-ligth btn-block" runat="server">
            <asp:ListItem>despachor</asp:ListItem>
            <asp:ListItem>despachador 2</asp:ListItem>
            </asp:DropDownList></div>
         <div class="col-lg-2"><asp:Button ID="btnDespachar" runat="server" CssClass="btn btn-success btn-block" Text="Despachar" OnClick="btnDespachar_Click" /></div>
            
        </div>
          
  

    </div>
</asp:Content>
