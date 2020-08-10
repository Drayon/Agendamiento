<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Despacho.aspx.cs" Inherits="SomosPC.Despacho" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>DESPACHO</h3>

    <div class="row">
        <div class="col-lg-6"></div>
        <div class="col-lg-6"></div>
    </div>

    <div class="row">
         <div class="col-lg-11">
               <div id="divGrid" style="overflow: auto; height: auto">
                <asp:GridView class="table-bordered table table-hover" Font-Names="Calibri" ID="gvDespacho" runat="server" AutoGenerateColumns="False"
                    Width="100%"  EmptyDataText="No existen productos." Style="font-size: small" DataKeyNames="idPedido" AllowPaging="True" BackColor="White" PageSize="500" OnRowCancelingEdit="gvDespacho_RowCancelingEdit"  OnRowDeleting="gvDespacho_RowDeleting" OnRowEditing="gvDespacho_RowEditing" OnRowUpdating="gvDespacho_RowUpdating" OnSelectedIndexChanged="gvDespacho_SelectedIndexChanged"  >
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
                            <ItemStyle Width="2%" HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Inst" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblInstagram" runat="server" Text='<%# Bind("Instagram") %>'></asp:Label>
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
                                    <asp:TextBox ID="txtDireccion" runat="server" Width="100%" CssClass="btn btn-light btn-xs" Text='<%# Bind("direccion") %>'></asp:TextBox>
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

                       


                        <asp:TemplateField HeaderText="Met Pago" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblMetoPago" runat="server" Text='<%# Bind("metodoPago") %>'>></asp:Label>
                            </ItemTemplate>
                             <EditItemTemplate>
                                    <asp:TextBox ID="txtmetodopago" runat="server"  CssClass="btn btn-light btn-xss" Text='<%# Bind("metodoPago") %>'></asp:TextBox>
                            </EditItemTemplate>
                          
                            <ItemStyle Width="3%" HorizontalAlign="Center" />
                        </asp:TemplateField>


                        


                          <asp:TemplateField HeaderText="Ingreso" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblFechaIngresado" runat="server" Text='<%# Bind("FechaIngresado", "{0:dd/MM/yyyy}") %>'> </asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="10%" HorizontalAlign="Center" />
                        </asp:TemplateField>

         
                            <asp:TemplateField HeaderText="Precio" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblpreciototal" runat="server" Text='<%# Bind("preciototal") %>'></asp:Label>
                            </ItemTemplate>
                                      <EditItemTemplate>
                                    <asp:TextBox ID="txtpreciototal" runat="server" CssClass="btn btn-light btn-xs" Text='<%# Bind("preciototal") %>'></asp:TextBox>
                                     
                            </EditItemTemplate>
                            <ItemStyle Width="2%" HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Observaciones" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblObservaciones" runat="server" Text='<%# Bind("ObservacionGeneral") %>'></asp:Label>
                            </ItemTemplate>
                                  <EditItemTemplate>
                                    <asp:TextBox ID="txtObservaciones" runat="server" CssClass="btn btn-light btn-xs" Text='<%# Bind("ObservacionGeneral") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="200px" HorizontalAlign="Center" />
                        </asp:TemplateField>

                          <asp:CommandField AccessibleHeaderText="Completar" ShowDeleteButton="True" ButtonType="Button" DeleteImageUrl="~/Img/desactivar.png" HeaderText="Estado" DeleteText="Completar">
                            <ItemStyle HorizontalAlign="Center"  />
                        </asp:CommandField>
                       
                        <asp:CommandField ButtonType="Button" CancelImageUrl="~/Img/cancelar.png" DeleteImageUrl="~/Img/eliminar.png" EditImageUrl="~/Img/editar.png" ShowEditButton="True" UpdateImageUrl="~/Img/guardar.png" HeaderText="Editar" ItemStyle-Height="15px">
                            
                            <ItemStyle HorizontalAlign="Center"    />
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

         



                        <asp:CommandField ButtonType="Button" SelectText="Devolver" ShowSelectButton="True" />

         



                    </Columns>
                    <PagerStyle HorizontalAlign="Center" CssClass="GridPager" Font-Size="24px" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                     </div>

         </div>
        <div class="col-lg-1">
            <div class="row">
            <div class="col-12"></div>
            <asp:Button ID="btnFinalizarRuta" runat="server" CssClass="btn btn-success " Text="Finalizar"  Width="100%"   />
       <hr />
            <div class="col-12"><asp:Button ID="btnAnularRuta" runat="server" CssClass="btn btn-danger" Width="100%" Text="Anular   " /></div>
</div>
        </div>

    </div>
              

</asp:Content>
