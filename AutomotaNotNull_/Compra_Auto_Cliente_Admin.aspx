<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Compra_Auto_Cliente_Admin.aspx.cs" Inherits="AutomotaNotNull_.Compra_Auto_Cliente_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 161px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Busque Rut del Cliente</td>
                <td>
                    <asp:DropDownList ID="DDLRut" runat="server" DataSourceID="DSCliente" DataTextField="nombreCliente" DataValueField="rutCliente" AutoPostBack="True" OnPreRender="DDLRut_PreRender">
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
                </td>
            </tr>
        </table>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="patenteVehiculo" DataSourceID="DSVehiculo" DefaultMode="Edit" Height="50px" Width="249px">
            <Fields>
                <asp:TemplateField HeaderText="Patente" SortExpression="patenteVehiculo">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DDLPatente" runat="server" AutoPostBack="True" DataSourceID="DSPatenteCliente" DataTextField="patenteVehiculo" DataValueField="patenteVehiculo" OnPreRender="DDLPatente_PreRender" OnTextChanged="DDLPatente_TextChanged">
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="DSPatenteCliente" runat="server" InsertMethod="insertMantenciones" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Vehiculo_Cliente">
                            <InsertParameters>
                                <asp:Parameter Name="rutCliente" Type="Int32" />
                                <asp:Parameter Name="patenteVehiculo" Type="String" />
                                <asp:Parameter Name="idCliente" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DDLRut" Name="rut" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                        <asp:TextBox ID="txtPatente" runat="server" Text='<%# Bind("patenteVehiculo") %>'></asp:TextBox>
                        <br />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("patenteVehiculo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Foto" SortExpression="urlFoto">
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                        <asp:TextBox ID="txtFoto" runat="server" Text='<%# Bind("urlFoto") %>' Visible="False"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:TextBox ID="txtFoto" runat="server" Text='<%# Bind("urlFoto") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("urlFoto") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource ID="DSVehiculo" runat="server" InsertMethod="insertVehiculo" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Vehiculo" UpdateMethod="updateCompraCliente">
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
            <UpdateParameters>
                <asp:Parameter Name="urlFoto" Type="String" />
                <asp:Parameter Name="patente" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </form>
</asp:Content>
