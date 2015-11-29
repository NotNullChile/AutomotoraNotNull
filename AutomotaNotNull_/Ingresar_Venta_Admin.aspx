<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Ingresar_Venta_Admin.aspx.cs" Inherits="AutomotaNotNull_.Ingresar_Venta_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    
        VENDER VEHICULOS<br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="idVenta" DataSourceID="DSVentaVehiculo" DefaultMode="Insert" Height="50px" Width="228px" style="margin-right: 0px">
            <Fields>
                <asp:TemplateField HeaderText="ID Venta" SortExpression="idVenta">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("idVenta") %>'></asp:Label>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="txtIdVenta" runat="server" Text='<%# Bind("idVenta") %>' TextMode="Number" ReadOnly="True" OnLoad="txtIdVenta_Load"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("idVenta") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="RUT Cliente" SortExpression="idCliente">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("idCliente") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DSCliente" DataTextField="nombreCliente" DataValueField="rutCliente" SelectedValue='<%# Bind("idCliente") %>'>
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="DSCliente" runat="server" InsertMethod="insertCliente" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Cliente">
                            <InsertParameters>
                                <asp:Parameter Name="rutCliente" Type="Int32" />
                                <asp:Parameter Name="nombreCliente" Type="String" />
                                <asp:Parameter Name="fechaNacimiento" Type="DateTime" />
                                <asp:Parameter Name="direccion" Type="String" />
                            </InsertParameters>
                        </asp:ObjectDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("idCliente") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Patente Vehiculo" SortExpression="patenteVehiculo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("patenteVehiculo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="DSPatente" DataTextField="patenteVehiculo" DataValueField="patenteVehiculo" SelectedValue='<%# Bind("patenteVehiculo") %>'>
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="DSPatente" runat="server" InsertMethod="insertVehiculo" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Vehiculo">
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
                            </InsertParameters>
                        </asp:ObjectDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("patenteVehiculo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Valor Venta" SortExpression="valorVenta">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("valorVenta") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("idVenta") %>' TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Ingrese valor de Venta" ForeColor="Red"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("valorVenta") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fecha Venta" SortExpression="fechaVenta">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("fechaVenta") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("fechaVenta") %>' TextMode="DateTimeLocal"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("fechaVenta") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource ID="DSVentaVehiculo" runat="server" InsertMethod="insertVentaVehiculo" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Venta">
            <InsertParameters>
                <asp:Parameter Name="idVenta" Type="Int32" />
                <asp:Parameter Name="idCliente" Type="Int32" />
                <asp:Parameter Name="patenteVehiculo" Type="String" />
                <asp:Parameter Name="valorVenta" Type="Int32" />
                <asp:Parameter Name="fechaVenta" Type="DateTime" />
            </InsertParameters>
        </asp:ObjectDataSource>
    </form>
</asp:Content>
