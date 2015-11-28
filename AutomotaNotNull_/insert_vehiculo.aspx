<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insert_vehiculo.aspx.cs" Inherits="AutomotaNotNull_.insert_vehiculo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="idCompra" DataSourceID="DSCompra" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="idCompra" HeaderText="idCompra" ReadOnly="True" SortExpression="idCompra" />
                <asp:BoundField DataField="proveedor" HeaderText="proveedor" SortExpression="proveedor" />
                <asp:BoundField DataField="valorVehiculo" HeaderText="valorVehiculo" SortExpression="valorVehiculo" />
                <asp:BoundField DataField="fechaCompra" HeaderText="fechaCompra" SortExpression="fechaCompra" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource ID="DSCompra" runat="server" InsertMethod="insertCompra" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Compra">
            <InsertParameters>
                <asp:Parameter Name="idCompra" Type="Int32" />
                <asp:Parameter Name="proveedor" Type="String" />
                <asp:Parameter Name="valorVehiculo" Type="String" />
                <asp:Parameter Name="fechaCompra" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
