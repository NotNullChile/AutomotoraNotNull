<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="asignar_vehiculo_cliente_rick.aspx.cs" Inherits="AutomotaNotNull_.asignar_vehiculo_cliente_rick" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        ASIGNAR VEHICULO A CLIENTE<br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="DSVehiculoCliente" DefaultMode="Insert" Height="50px" Width="223px">
            <Fields>
                <asp:TemplateField HeaderText="Cliente" SortExpression="idCliente">
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
                                <asp:Parameter Name="clave" Type="String" />
                            </InsertParameters>
                        </asp:ObjectDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("idCliente") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Vehiculo" SortExpression="patenteVehiculo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("patenteVehiculo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="DSVehiculo" DataTextField="patenteVehiculo" DataValueField="patenteVehiculo" SelectedValue='<%# Bind("patenteVehiculo") %>'>
                        </asp:DropDownList>
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
                            </InsertParameters>
                        </asp:ObjectDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("patenteVehiculo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource ID="DSVehiculoCliente" runat="server" InsertMethod="insertMantenciones" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Vehiculo_Cliente">
            <InsertParameters>
                <asp:Parameter Name="rutCliente" Type="Int32" />
                <asp:Parameter Name="patenteVehiculo" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
