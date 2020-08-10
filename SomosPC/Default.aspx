<%@ Page Title="Somos PC" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs"  EnableEventValidation="false" Inherits="SomosPC._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    <div class="row">
     <div class="col-12"><h3>PIZARRA</h3></div>
 </div>

    
     <div id="divGrid" runat="server" style="overflow: auto; height: auto; font-size: large;">
     <asp:GridView  class="table-bordered table table-hover" ID="gvProduccion" runat="server" AutoGenerateColumns="False"
                                    Width="100%" EmptyDataText="No Existen Registros" style="font-size: small"  DataKeyNames="IDPEDIDO,CORRELATIVO"  AllowPaging="True"   BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowCommand="gvProduccion_RowCommand" OnRowDataBound="gvProduccion_RowDataBound" PageSize="10000000" Height="56px" OnSelectedIndexChanged="gvProduccion_SelectedIndexChanged"   >
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
                                        
                                   
                                      
                                     
                                        <asp:ButtonField ButtonType="Button" HeaderText="Esqueleto" Text="Esqueleto" CommandName="Esqueleto"  >
                                     <ControlStyle CssClass="btn btn-light btn-lg" />
                                        </asp:ButtonField>
                                        <asp:ButtonField ButtonType="Button" HeaderText="Costura" Text="Costura" CommandName="Costura" >
                                        <ControlStyle CssClass="btn btn-light" />
                                        </asp:ButtonField>
                                        <asp:ButtonField ButtonType="Button" HeaderText="Tapicero"  Text="Tapicero" CommandName="Tapicero" >
                                        <ControlStyle CssClass="btn btn-light" />
                                        <FooterStyle CssClass="btn btn-danger" />
                                        </asp:ButtonField>

                                        
                                               <asp:TemplateField HeaderText="Seleccion" SortExpression="Valor">
                            <ItemTemplate>
                             <asp:DropDownList ID="ddlTapicero" Width="100%" CssClass="botoncstapicero"  runat="server" >
            <asp:ListItem Selected="True">Seleccionar</asp:ListItem>
            <asp:ListItem>t1</asp:ListItem>
             <asp:ListItem>t2</asp:ListItem>
             <asp:ListItem>t3</asp:ListItem>
            </asp:DropDownList>
                            </ItemTemplate>
                        
                            <ItemStyle Width="10%" HorizontalAlign="Center" />
                        </asp:TemplateField>
                                       
                                          <asp:BoundField DataField="Prioridad" HeaderText="Prioridad" >
                                            <ItemStyle Width="15%"  HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>  
                                          <asp:BoundField DataField="TapiceroResponsable" HeaderText="Tap.Res." >
                                            <ItemStyle Width="15%"  HorizontalAlign="Right"></ItemStyle>
                                        </asp:BoundField>  
                 <asp:CommandField ButtonType="Button" SelectText="Imprimir" ShowSelectButton="True" />
                                     
                                    </Columns>
                                    <PagerStyle HorizontalAlign="Left" CssClass="GridPager" BackColor="White" ForeColor="#000066" Font-Size="X-Large" />
                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="black" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                                </asp:GridView>    
    </div>

</asp:Content>
