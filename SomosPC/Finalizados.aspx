<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Finalizados.aspx.cs" Inherits="SomosPC.Finalizados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Pedidos Finalizados </h3>

     <div id="divGrid" style="overflow: auto; height: auto">
                <asp:GridView class="table-bordered table table-hover" Font-Names="Calibri" ID="gvfinalizados" runat="server" AutoGenerateColumns="False"
                    Width="100%"  EmptyDataText="No existen productos." Style="font-size: small" DataKeyNames="idPedido,correlativo" AllowPaging="True" BackColor="White" PageSize="1000"  >
                    <FooterStyle HorizontalAlign="Center" BackColor="White" ForeColor="#000066" />
                    <HeaderStyle CssClass="cabeceraGrilla2" BackColor="#006699"   ForeColor="White" HorizontalAlign="Center" Font-Bold="True" />
                    <RowStyle CssClass="itemsGridView" ForeColor="#000066" />
                    <AlternatingRowStyle CssClass="itemsGridViewAlternate" />
                    <EditRowStyle BackColor="#e5961a" />
                    <EmptyDataRowStyle CssClass="cssValidator"></EmptyDataRowStyle>
                    <Columns>
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


                        


                          <asp:TemplateField HeaderText="Ingreso" SortExpression="Valor">
                            <ItemTemplate>
                                <asp:Label ID="lblFechaIngresado" runat="server" Text='<%# Bind("FechaIngresado", "{0:dd/MM/yyyy}") %>'> </asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="10%" HorizontalAlign="Center" />
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
                
                </asp:GridView>
                     </div>

</asp:Content>
