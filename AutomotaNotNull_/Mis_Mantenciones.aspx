<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Mis_Mantenciones.aspx.cs" Inherits="AutomotaNotNull_.Mis_Mantenciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <!--Panel Mantenciones-->
        <div class="row panel-info">
            <div class="col-lg-1 col-md-1 col-sm-1"></div>
            <div class="col-lg-10 col-md-10 col-sm-10 panel panel-primary " 
                style="padding:30px; background-color:azure">
                    <asp:Label ID="lblRut" runat="server" Text="Label" Visible="False"></asp:Label>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" 
                        AutoGenerateColumns="False" DataKeyNames="idMantenciones" 
                        DataSourceID="DSMismantenciones" Width="100%"
                        CssClass="table panel-body" BackColor="White">
                        <Columns>
                            <asp:BoundField DataField="tipoMantencion" HeaderText="Tipo" SortExpression="tipoMantencion" />
                            <asp:BoundField DataField="valor" HeaderText="Valor" SortExpression="valor" />
                            <asp:BoundField DataField="patenteVehiculo" HeaderText="Vehiculo" SortExpression="patenteVehiculo" />
                        </Columns>
                    </asp:GridView>
                    <asp:Label ID="lblSinRegistro" runat="server">
                    </asp:Label>
                    <asp:ObjectDataSource ID="DSMismantenciones" runat="server" InsertMethod="insertMantenciones" OldValuesParameterFormatString="original_{0}" SelectMethod="misMantenciones" TypeName="Negocio.Mantenciones">
                        <InsertParameters>
                            <asp:Parameter Name="idMantenciones" Type="Int32" />
                            <asp:Parameter Name="tipoMantencion" Type="String" />
                            <asp:Parameter Name="valor" Type="Int32" />
                            <asp:Parameter Name="rutCliente" Type="Int32" />
                            <asp:Parameter Name="patenteVehiculo" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblRut" Name="rut" 
                                                  PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
            </div>
            <div class="col-lg-1 col-md-1 col-sm-1"></div>
        </div>
    </form>
</asp:Content>
