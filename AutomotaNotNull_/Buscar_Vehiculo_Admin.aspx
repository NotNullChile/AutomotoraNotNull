<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Buscar_Vehiculo_Admin.aspx.cs" Inherits="AutomotaNotNull_.Buscar_Vehiculo_Admin" %>
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
                panel panel-primary" 
                style="padding:30px;background-color:azure">
                <h4 class="panel-heading panel-primary">Nuestros Automóviles:</h4>
                <asp:GridView ID="GridView1" runat="server" 
                    AutoGenerateColumns="False" DataKeyNames="patenteVehiculo" 
                    DataSourceID="DSAutos" AllowPaging="True" Width="100%" CssClass="table panel-body" 
                    BackColor="White">
                    <Columns>
                        <asp:TemplateField HeaderText="Foto" SortExpression="urlFoto" HeaderStyle-Font-Size="Medium" HeaderStyle-ForeColor="Red">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("urlFoto") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Bind("urlFoto")%>' Height="200px" ImageAlign="Baseline" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="patenteVehiculo" HeaderText="Patente" ReadOnly="True" SortExpression="patenteVehiculo" HeaderStyle-Font-Size="Medium" HeaderStyle-ForeColor="Red"/>
                        <asp:BoundField DataField="modelo" HeaderText="Modelo" SortExpression="modelo" HeaderStyle-Font-Size="Medium" HeaderStyle-ForeColor="Red"/>
                        <asp:BoundField DataField="tipoVehiculo" HeaderText="Tipo" SortExpression="tipoVehiculo" HeaderStyle-Font-Size="Medium" HeaderStyle-ForeColor="Red"/>
                        <asp:BoundField DataField="color" HeaderText="Color" SortExpression="color" HeaderStyle-Font-Size="Medium" HeaderStyle-ForeColor="Red"/>
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="DSAutos" runat="server" InsertMethod="insertVehiculo" OldValuesParameterFormatString="original_{0}" SelectMethod="ListadoVehiculoParaVender" TypeName="Negocio.Vehiculo">
                <InsertParameters>
                    <asp:Parameter Name="patenteVehiculo" Type="String"/>
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
            </div>
            <div class="col-lg-1 col-md-1 col-sm-1">
            </div>
        </div>
    </form>
</asp:Content>
