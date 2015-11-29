<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Ver_Mantenciones_Admin.aspx.cs" Inherits="AutomotaNotNull_.Ver_Mantenciones_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="idMantenciones" DataSourceID="DSMantenciones">
            <Columns>
                <asp:BoundField DataField="idMantenciones" HeaderText="ID Mantenciones" ReadOnly="True" SortExpression="idMantenciones" />
                <asp:BoundField DataField="tipoMantencion" HeaderText="Descrición" SortExpression="tipoMantencion" />
                <asp:BoundField DataField="valor" HeaderText="Valor" SortExpression="valor" />
                <asp:BoundField DataField="rutCliente" HeaderText="Cliente" SortExpression="rutCliente" />
                <asp:BoundField DataField="patenteVehiculo" HeaderText="Vehiculo" SortExpression="patenteVehiculo" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="DSMantenciones" runat="server" InsertMethod="insertMantenciones" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Mantenciones">
            <InsertParameters>
                <asp:Parameter Name="idMantenciones" Type="Int32" />
                <asp:Parameter Name="tipoMantencion" Type="String" />
                <asp:Parameter Name="valor" Type="Int32" />
                <asp:Parameter Name="rutCliente" Type="Int32" />
                <asp:Parameter Name="patenteVehiculo" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
    </form>
</asp:Content>
