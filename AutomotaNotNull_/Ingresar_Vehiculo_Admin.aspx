<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Ingresar_Vehiculo_Admin.aspx.cs" Inherits="AutomotaNotNull_.Ingresar_Vehiculo_Admin" %>
<asp:Content ID="Content1" 
    ContentPlaceHolderID="head" 
    runat="server">
</asp:Content>
<asp:Content ID="Content2" 
    ContentPlaceHolderID="ContentPlaceHolder1" 
    runat="server">
    <form id="form1" runat="server">
        <br />
        <div class="row panel-info">
            <div class="col-lg-1 col-md-1 col-sm-1">
            </div>
            <div class="col-lg-10 col-md-10 col-sm-10 
                alert-info" style="padding:30px">
                <table style="width:100%" class="panel">
                    <tr class="panel-heading panel-primary">
                        <td class="panel-heading panel-primary 
                            col-lg-3 col-md-3 col-sm-3">
                            <h4>
                                Registrar Vehículo:
                            </h4>
                        </td>
                    </tr>
                </table>
                <asp:DetailsView ID="DetailsView1" 
                    runat="server" AutoGenerateRows="False" 
                    DataKeyNames="patenteVehiculo" 
                    DataSourceID="DSVehiculo" 
                    DefaultMode="Insert" 
                    Height="50px" 
                    Width="100%" 
                    CssClass="table panel-body" 
                    BackColor="White">
                    <Fields>
                        <asp:TemplateField HeaderText="Patente" SortExpression="patenteVehiculo">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("patenteVehiculo") %>'></asp:Label>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtPatente" runat="server" MaxLength="10" Text='<%# Bind("patenteVehiculo") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPatente" ErrorMessage="Debe Ingresar un patente" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("patenteVehiculo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Número Motor" SortExpression="numeroMotor">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("numeroMotor") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtMotor" runat="server" Text='<%# Bind("numeroMotor") %>' TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMotor" ErrorMessage="Ingrese Número de Motor" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("numeroMotor") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Número Chasis" SortExpression="numeroChasis">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("numeroChasis") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtChasis" runat="server" Text='<%# Bind("numeroChasis") %>' TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtChasis" ErrorMessage="Ingrese Número de Chasis" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("numeroChasis") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Modelo" SortExpression="modelo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("modelo") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtModelo" runat="server" Text='<%# Bind("modelo") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtModelo" ErrorMessage="Ingrese un Modelo" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("modelo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tipo Vehiculo" SortExpression="tipoVehiculo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("tipoVehiculo") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("tipoVehiculo") %>' Width="126px">
                                    <asp:ListItem>Turismo</asp:ListItem>
                                    <asp:ListItem>Deportivo</asp:ListItem>
                                    <asp:ListItem>Todoterreno</asp:ListItem>
                                    <asp:ListItem>Deportivo</asp:ListItem>
                                    <asp:ListItem>Furgoneta</asp:ListItem>
                                    <asp:ListItem>Camioneta</asp:ListItem>
                                    <asp:ListItem>Sedan</asp:ListItem>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("tipoVehiculo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Color" SortExpression="color">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("color") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("color") %>' Width="99px">
                                    <asp:ListItem>Rojo</asp:ListItem>
                                    <asp:ListItem>Verde</asp:ListItem>
                                    <asp:ListItem>Azul</asp:ListItem>
                                    <asp:ListItem>Magenta</asp:ListItem>
                                    <asp:ListItem>Cian</asp:ListItem>
                                    <asp:ListItem>Amarillo</asp:ListItem>
                                    <asp:ListItem>Marrón</asp:ListItem>
                                    <asp:ListItem>Violeta</asp:ListItem>
                                    <asp:ListItem>Naranja</asp:ListItem>
                                    <asp:ListItem>Blanco</asp:ListItem>
                                    <asp:ListItem>Gris</asp:ListItem>
                                    <asp:ListItem>Negro</asp:ListItem>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("color") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Estado" SortExpression="estado">
                            <EditItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("estado") %>' />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" SelectedValue='<%# Bind("estado") %>'>
                                    <asp:ListItem Value="true">Disponible</asp:ListItem>
                                    <asp:ListItem Value="false">Ocupado</asp:ListItem>
                                </asp:RadioButtonList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("estado") %>' Enabled="false" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Factura" SortExpression="idCompra">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("idCompra") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="DSFactura" DataTextField="idCompra" DataValueField="idCompra" SelectedValue='<%# Bind("idCompra") %>'>
                                </asp:DropDownList>
                                <asp:ObjectDataSource ID="DSFactura" runat="server" InsertMethod="insertCompra" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Compra">
                                    <InsertParameters>
                                        <asp:Parameter Name="idCompra" Type="Int32" />
                                        <asp:Parameter Name="proveedor" Type="String" />
                                        <asp:Parameter Name="valorVehiculo" Type="String" />
                                        <asp:Parameter Name="fechaCompra" Type="String" />
                                    </InsertParameters>
                                </asp:ObjectDataSource>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("idCompra") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Foto" SortExpression="urlFoto">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("urlFoto") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <asp:TextBox ID="txtFoto" runat="server" Text='<%# Bind("urlFoto") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("urlFoto") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:ObjectDataSource ID="DSVehiculo" runat="server" InsertMethod="insertVehiculo" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Vehiculo">
                    <InsertParameters>
                        <asp:Parameter Name="patenteVehiculo" Type="String" />
                        <asp:Parameter Name="numeroMotor" Type="Int32" />
                        <asp:Parameter Name="numeroChasis" Type="Int32" />
                        <asp:Parameter Name="modelo" Type="String" />
                        <asp:Parameter Name="tipoVehiculo" Type="String" />
                        <asp:Parameter Name="color" Type="String" />
                        <asp:Parameter Name="estado" Type="Boolean" />
                        <asp:Parameter Name="idCompra" Type="Int32" />
                        <asp:Parameter Name="urlFoto" Type="String" />
                        <asp:Parameter Name="idCliente" Type="Int32" />
                    </InsertParameters>
                </asp:ObjectDataSource>
            </div>
            <div class="col-lg-1 col-md-1 col-sm-1">
            </div>
        </div>
    </form>
</asp:Content>
