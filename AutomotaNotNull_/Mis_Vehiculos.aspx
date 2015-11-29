<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Mis_Vehiculos.aspx.cs" Inherits="AutomotaNotNull_.Mis_Vehiculos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <br />
        <div class="row panel-info">
            <div class="col-lg-1 col-md-1 col-sm-1"></div>
            <div class="col-lg-10 col-md-10 col-sm-10 alert-info" style="padding:30px">
                <table style="width:100%" class="panel">
                    <tr class="panel-heading panel-primary">
                        <td class="panel-heading panel-primary col-lg-3 col-md-3 col-sm-3">
                            <h4>Seleccione sus vehículos por patente:</h4>
                        </td>
                        <td class="panel-heading panel-primary col-lg-6 col-md-6 col-sm-6" style="color:black">
                            <h4>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    DataSourceID="DSPatenten" DataTextField="patenteVehiculo" 
                                    DataValueField="patenteVehiculo" Width="150px"/>
                                <asp:ObjectDataSource ID="DSPatenten" runat="server" InsertMethod="insertMantenciones" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Vehiculo_Cliente">
                                    <InsertParameters>
                                        <asp:Parameter Name="rutCliente" Type="Int32" />
                                        <asp:Parameter Name="patenteVehiculo" Type="String" />
                                        <asp:Parameter Name="idCliente" Type="Int32" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblRut" Name="rut" PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </h4>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblRut" runat="server" Enabled="False" Visible="False" OnLoad="lblRut_Load"/>
                        </td>
                    </tr>
                </table>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="patenteVehiculo" DataSourceID="DSVerPatente" Width="100%"
                    CssClass="table panel-body" BackColor="White">
                    <Columns>
                        <asp:BoundField DataField="patenteVehiculo" HeaderText="Patente" ReadOnly="True" SortExpression="patenteVehiculo"/>
                        <asp:BoundField DataField="numeroMotor" HeaderText="Número Motor" SortExpression="numeroMotor" />
                        <asp:BoundField DataField="numeroChasis" HeaderText="Número Chasis" SortExpression="numeroChasis" />
                        <asp:BoundField DataField="modelo" HeaderText="Modelo" SortExpression="modelo" />
                        <asp:BoundField DataField="tipoVehiculo" HeaderText="Tipo" SortExpression="tipoVehiculo" />
                        <asp:BoundField DataField="color" HeaderText="Color" SortExpression="color" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="DSVerPatente" runat="server" 
                    InsertMethod="insertVehiculo" OldValuesParameterFormatString="original_{0}" 
                    SelectMethod="Patente" TypeName="Negocio.Vehiculo">
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
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="patente" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
            <div class="col-lg-1 col-md-1 col-sm-1"></div>
        </div>   
    </form>
</asp:Content>
