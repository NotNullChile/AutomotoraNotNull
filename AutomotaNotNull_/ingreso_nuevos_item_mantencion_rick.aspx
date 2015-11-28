<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ingreso_nuevos_item_mantencion_rick.aspx.cs" Inherits="AutomotaNotNull_.ingreso_nuevos_item_mantencion_rick" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="idMantenciones" DataSourceID="DSMantencion" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="idMantenciones" HeaderText="idMantenciones" ReadOnly="True" SortExpression="idMantenciones" />
                <asp:BoundField DataField="tipoMantencion" HeaderText="tipoMantencion" SortExpression="tipoMantencion" />
                <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="valor" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource ID="DSMantencion" runat="server" InsertMethod="insertMantenciones" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Mantenciones">
            <InsertParameters>
                <asp:Parameter Name="idMantenciones" Type="Int32" />
                <asp:Parameter Name="tipoMantencion" Type="String" />
                <asp:Parameter Name="valor" Type="Int32" />
            </InsertParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
