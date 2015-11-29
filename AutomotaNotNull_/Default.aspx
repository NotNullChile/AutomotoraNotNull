<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AutomotaNotNull_.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="patenteVehiculo" DataSourceID="DSAutos" AllowPaging="True" Width="596px">
            <Columns>
                <asp:TemplateField HeaderText="Foto" SortExpression="urlFoto">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("urlFoto") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Bind("urlFoto")%>' Height="150px" Width="200px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="patenteVehiculo" HeaderText="Patente" ReadOnly="True" SortExpression="patenteVehiculo" />
                <asp:BoundField DataField="modelo" HeaderText="Modelo" SortExpression="modelo" />
                <asp:BoundField DataField="tipoVehiculo" HeaderText="Tipo" SortExpression="tipoVehiculo" />
                <asp:BoundField DataField="color" HeaderText="Color" SortExpression="color" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="DSAutos" runat="server" InsertMethod="insertVehiculo" OldValuesParameterFormatString="original_{0}" SelectMethod="ListadoVehiculoParaVender" TypeName="Negocio.Vehiculo">
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
    </form>

</asp:Content>
