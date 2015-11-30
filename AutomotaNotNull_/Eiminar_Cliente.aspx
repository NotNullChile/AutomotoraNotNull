<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Eiminar_Cliente.aspx.cs" Inherits="AutomotaNotNull_.Eiminar_Cliente" %>
<asp:Content ID="Content1" 
    ContentPlaceHolderID="head" 
    runat="server">
</asp:Content>
<asp:Content ID="Content2" 
    ContentPlaceHolderID="ContentPlaceHolder1" 
    runat="server">
    <form id="form1" runat="server">
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
                                Eliminar Cliente:
                            </h4>
                        </td>
                    </tr>
                </table>
                <div>
                    <asp:GridView ID="GridView1" 
                        runat="server" 
                        AllowPaging="True" 
                        AutoGenerateColumns="False" 
                        DataKeyNames="rutCliente" 
                        DataSourceID="DSCliente"
                        Height="50px" Width="100%" 
                    CssClass="table panel-body" 
                    BackColor="White">
                        <Columns>
                            <asp:BoundField DataField="rutCliente" HeaderText="RUT" ReadOnly="True" SortExpression="rutCliente" />
                            <asp:BoundField DataField="nombreCliente" HeaderText="Nombre" SortExpression="nombreCliente" />
                            <asp:BoundField DataField="fechaNacimiento" HeaderText="Fecha de Nacimiento" SortExpression="fechaNacimiento" />
                            <asp:BoundField DataField="direccion" HeaderText="Dirección" SortExpression="direccion" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:ObjectDataSource ID="DSCliente" runat="server" DeleteMethod="deleteCliente" InsertMethod="insertCliente" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Cliente">
                <DeleteParameters>
                    <asp:Parameter Name="Original_rutCliente" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="rutCliente" Type="Int32" />
                    <asp:Parameter Name="nombreCliente" Type="String" />
                    <asp:Parameter Name="fechaNacimiento" Type="DateTime" />
                    <asp:Parameter Name="direccion" Type="String" />
                    <asp:Parameter Name="clave" Type="String" />
                </InsertParameters>
            </asp:ObjectDataSource>
                </div>
            </div>
            <div class="col-lg-1 col-md-1 col-sm-1">
            </div>
        </div>
    </form>
</asp:Content>
