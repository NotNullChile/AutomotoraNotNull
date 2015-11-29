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
    
        Eliga Cliente
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DSCliente" DataTextField="nombreCliente" DataValueField="rutCliente" SelectedValue='<%# Bind("rutCliente") %>' AutoPostBack="True" Width="82px">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="DSCliente" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Cliente" InsertMethod="insertCliente">
            <InsertParameters>
                <asp:Parameter Name="rutCliente" Type="Int32" />
                <asp:Parameter Name="nombreCliente" Type="String" />
                <asp:Parameter Name="fechaNacimiento" Type="DateTime" />
                <asp:Parameter Name="direccion" Type="String" />
                <asp:Parameter Name="clave" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
        <br />
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="idMantenciones" DataSourceID="DSMantencion" DefaultMode="Insert" Height="50px" style="margin-right: 1px" Width="383px">
            <Fields>
                <asp:TemplateField HeaderText="ID Mantención" SortExpression="idMantenciones">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("idMantenciones") %>'></asp:Label>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="txtIdMantenciones" runat="server" OnLoad="txtIdMantenciones_Load" ReadOnly="True" Text='<%# Bind("idMantenciones") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("idMantenciones") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Descripción" SortExpression="tipoMantencion">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("tipoMantencion") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("tipoMantencion") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Debe escribir una Descripción" ForeColor="Red"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("tipoMantencion") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Valor" SortExpression="valor">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("valor") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("valor") %>' TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Debe ingresar Valor" ForeColor="Red"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("valor") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="Cliente" SortExpression="rutCliente">
                    <EditItemTemplate>
                        <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="rutCliente" Mode="Edit" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="DSPAtente1" DataTextField="patenteVehiculo" DataValueField="patenteVehiculo" SelectedValue='<%# Bind("patenteVehiculo") %>'>
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="DSPAtente1" runat="server" InsertMethod="insertMantenciones" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Vehiculo_Cliente">
                            <InsertParameters>
                                <asp:Parameter Name="rutCliente" Type="Int32" />
                                <asp:Parameter Name="patenteVehiculo" Type="String" />
                                <asp:Parameter Name="idCliente" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="rut" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                        <asp:TextBox ID="TextBox4" runat="server" OnLoad="TextBox4_Load" Text='<%# Bind("rutCliente") %>'></asp:TextBox>
                        <br />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="rutCliente" Mode="ReadOnly" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="Patente" SortExpression="patenteVehiculo">
                    <EditItemTemplate>
                        <asp:DynamicControl ID="DynamicControl2" runat="server" DataField="patenteVehiculo" Mode="Edit" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="DSPatente" DataTextField="patenteVehiculo" DataValueField="patenteVehiculo" SelectedValue='<%# Bind("patenteVehiculo") %>'>
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="DSPatente" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Vehiculo_Cliente">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DetailsView1" Name="rut" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:DynamicControl ID="DynamicControl2" runat="server" DataField="patenteVehiculo" Mode="ReadOnly" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource ID="DSMantencion" runat="server" InsertMethod="insertMantenciones" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Mantenciones">
            <InsertParameters>
                <asp:Parameter Name="idMantenciones" Type="Int32" />
                <asp:Parameter Name="tipoMantencion" Type="String" />
                <asp:Parameter Name="valor" Type="Int32" />
                <asp:Parameter Name="rutCliente" Type="Int32" />
                <asp:Parameter Name="patenteVehiculo" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
