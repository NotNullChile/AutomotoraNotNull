<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Mis_Mantenciones.aspx.cs" Inherits="AutomotaNotNull_.Mis_Mantenciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Label ID="lblRut" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idMantenciones" DataSourceID="DSMismantenciones" Width="452px">
            <Columns>
                <asp:BoundField DataField="tipoMantencion" HeaderText="Tipo" SortExpression="tipoMantencion" />
                <asp:BoundField DataField="valor" HeaderText="Valor" SortExpression="valor" />
                <asp:BoundField DataField="patenteVehiculo" HeaderText="Vehiculo" SortExpression="patenteVehiculo" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="lblSinRegistro" runat="server"></asp:Label>
        <asp:ObjectDataSource ID="DSMismantenciones" runat="server" InsertMethod="insertMantenciones" OldValuesParameterFormatString="original_{0}" SelectMethod="misMantenciones" TypeName="Negocio.Mantenciones">
            <InsertParameters>
                <asp:Parameter Name="idMantenciones" Type="Int32" />
                <asp:Parameter Name="tipoMantencion" Type="String" />
                <asp:Parameter Name="valor" Type="Int32" />
                <asp:Parameter Name="rutCliente" Type="Int32" />
                <asp:Parameter Name="patenteVehiculo" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="lblRut" Name="rut" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </form>
</asp:Content>
