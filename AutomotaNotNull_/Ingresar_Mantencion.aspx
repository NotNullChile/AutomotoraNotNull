<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Ingresar_Mantencion.aspx.cs" Inherits="AutomotaNotNull_.Ingresar_Mantencion" %>
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
                                Ingresar Mantención
                            </h4>
                        </td>
                    </tr>
                </table>
                <table style="width:100%" class="panel">
                    <tr class="panel-heading panel-primary">
                        <td class="panel-heading panel-primary 
                            col-lg-3 col-md-3 col-sm-3">
                            <h4>Seleccione el Cliente:</h4>
                        </td>
                        
                        <td class="panel-heading panel-primary 
                            col-lg-6 col-md-6 col-sm-6" 
                            style="color:black">
                            <h4>
                                <asp:DropDownList ID="DDLCliente" runat="server" AutoPostBack="True" 
                                              DataSourceID="DSClienteAElegir" DataTextField="nombreCliente" 
                                              DataValueField="rutCliente" OnLoad="DDLCliente_Load" 
                                              OnTextChanged="DDLCliente_TextChanged" Width="150px"/>
                                <asp:ObjectDataSource ID="DSClienteAElegir" runat="server" 
                                              InsertMethod="insertCliente" 
                                              OldValuesParameterFormatString="original_{0}" 
                                              SelectMethod="showAll" TypeName="Negocio.Cliente">
                                    <InsertParameters>
                                        <asp:Parameter Name="rutCliente" Type="Int32" />
                                        <asp:Parameter Name="nombreCliente" Type="String" />
                                        <asp:Parameter Name="fechaNacimiento" Type="DateTime" />
                                        <asp:Parameter Name="direccion" Type="String" />
                                        <asp:Parameter Name="clave" Type="String" />
                                    </InsertParameters>
                                </asp:ObjectDataSource>
                            </h4>
                        </td>
                    </tr>
                    <tr class="panel-heading panel-primary">
                        <td class="panel-heading panel-primary col-lg-3 col-md-3 col-sm-3">
                            <h4>Elija Patente</h4>
                        </td>
                        <td class="panel-heading panel-primary col-lg-6 col-md-6 col-sm-6" 
                            style="color:black">
                            <h4>
                                <asp:DropDownList ID="DDLPatente" runat="server" AutoPostBack="True" 
                                            DataSourceID="DSPAtentes" DataTextField="patenteVehiculo" 
                                            DataValueField="patenteVehiculo" 
                                            OnPreRender="DDLPatente_PreRender" 
                                            OnTextChanged="DDLPatente_TextChanged">
                                    <asp:ListItem>Elija</asp:ListItem>
                                </asp:DropDownList>
                                <asp:ObjectDataSource ID="DSPAtentes" runat="server" InsertMethod="insertMantenciones" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Vehiculo_Cliente">
                                    <InsertParameters>
                                        <asp:Parameter Name="rutCliente" Type="Int32" />
                                        <asp:Parameter Name="patenteVehiculo" Type="String" />
                                        <asp:Parameter Name="idCliente" Type="Int32" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DDLCliente" Name="rut" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:ObjectDataSource> 
                            </h4>
                        </td>
                    </tr>
                </table>
                <asp:DetailsView ID="DetailsView1" 
                    runat="server" 
                    AutoGenerateRows="False" 
                    DataKeyNames="idMantenciones" 
                    DataSourceID="DSMAntencion" 
                    DefaultMode="Insert" 
                    Height="50px" 
                    Width="100%" 
                    CssClass="table panel-body" 
                    BackColor="White">
                    <Fields>
                        <asp:TemplateField HeaderText="ID Mantenciones" SortExpression="idMantenciones">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("idMantenciones") %>'></asp:Label>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtIdMantenciones" runat="server" OnLoad="txtIdMantenciones_Load" ReadOnly="True" Text='<%# Bind("idMantenciones") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("idMantenciones") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Descripción" SortExpression="tipoMantencion">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("tipoMantencion") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("tipoMantencion") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFDesc" runat="server" ControlToValidate="TextBox1" ErrorMessage="Debe escribir una descripción" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("tipoMantencion") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Valor" SortExpression="valor">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("valor") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("valor") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFValor" runat="server" ControlToValidate="TextBox2" ErrorMessage="Debe escribir un Valor" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("valor") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Cliente" SortExpression="rutCliente">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("rutCliente") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtRut" runat="server" ReadOnly="True" Text='<%# Bind("rutCliente") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("rutCliente") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Patente" SortExpression="patenteVehiculo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("patenteVehiculo") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtVehiculo" runat="server" ReadOnly="True" Text='<%# Bind("patenteVehiculo") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("patenteVehiculo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:ObjectDataSource ID="DSMAntencion" runat="server" InsertMethod="insertMantenciones" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Mantenciones">
                    <InsertParameters>
                        <asp:Parameter Name="idMantenciones" Type="Int32" />
                        <asp:Parameter Name="tipoMantencion" Type="String" />
                        <asp:Parameter Name="valor" Type="Int32" />
                        <asp:Parameter Name="rutCliente" Type="Int32" />
                        <asp:Parameter Name="patenteVehiculo" Type="String" />
                    </InsertParameters>
                </asp:ObjectDataSource>
            </div>
            <div class="col-lg-1 col-md-1 col-sm-1">
            </div>
        </div>
    </form>
</asp:Content>
