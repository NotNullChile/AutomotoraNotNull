<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Ver_Vehiculo_Cliente_Admin.aspx.cs" Inherits="AutomotaNotNull_.Ver_Vehiculo_Cliente_Admin" %>
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
                                Ver vehículos por cliente:
                            </h4>
                        </td>
                    </tr>
                </table>
                <table style="width:100%" class="panel">
                    <tr class="panel-heading panel-primary">
                        <td class="panel-heading panel-primary 
                            col-lg-6 col-md-6 col-sm-6">                            Busque a Cliente
                        </td>
                        <td class="panel-heading panel-primary 
                            col-lg-6 col-md-6 col-sm-6"
                            style="color:black">
                            <asp:DropDownList 
                                ID="DropDownList1" 
                                runat="server" 
                                AutoPostBack="True" 
                                DataSourceID="DSCLiente" 
                                DataTextField="nombreCliente" 
                                DataValueField="rutCliente"/>
                            <asp:ObjectDataSource ID="DSCLiente" runat="server" InsertMethod="insertCliente" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Cliente">
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
                    <tr class="panel-heading panel-primary">
                        <td class="panel-heading panel-primary 
                            col-lg-6 col-md-6 col-sm-6">Busque Por Patente:</td>
                        <td class="panel-heading panel-primary 
                            col-lg-6 col-md-6 col-sm-6"
                            style="color:black">
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="DSPatenten" DataTextField="patenteVehiculo" DataValueField="patenteVehiculo" Width="150px">
                            </asp:DropDownList>
                            <asp:ObjectDataSource ID="DSPatenten" runat="server" InsertMethod="insertMantenciones" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Vehiculo_Cliente">
                                <InsertParameters>
                                    <asp:Parameter Name="rutCliente" Type="Int32" />
                                    <asp:Parameter Name="patenteVehiculo" Type="String" />
                                    <asp:Parameter Name="idCliente" Type="Int32" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="rut" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </td>
                    </tr>
                </table>
                <asp:GridView ID="GridView1" 
                    runat="server" 
                    AutoGenerateColumns="False" 
                    DataKeyNames="patenteVehiculo" 
                    DataSourceID="DSVerPatente"
                    Width="100%" 
                    CssClass="table panel-body" 
                    BackColor="White">
                    <Columns>
                        <asp:BoundField DataField="patenteVehiculo" HeaderText="Patente" ReadOnly="True" SortExpression="patenteVehiculo" />
                        <asp:BoundField DataField="numeroMotor" HeaderText="Número Motor" SortExpression="numeroMotor" />
                        <asp:BoundField DataField="numeroChasis" HeaderText="Número Chasis" SortExpression="numeroChasis" />
                        <asp:BoundField DataField="modelo" HeaderText="Modelo" SortExpression="modelo" />
                        <asp:BoundField DataField="tipoVehiculo" HeaderText="Tipo" SortExpression="tipoVehiculo" />
                        <asp:BoundField DataField="color" HeaderText="Color" SortExpression="color" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="DSVerPatente" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Patente" TypeName="Negocio.Vehiculo">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="patente" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            </div>
            <div class="col-lg-1 col-md-1 col-sm-1">
            </div>
        </div>
    </form>
</asp:Content>
