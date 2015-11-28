<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registro_cliente_rick.aspx.cs" Inherits="AutomotaNotNull_.registro_cliente_rick" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        REGISTRO CLIENTE<br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="rutCliente" DataSourceID="DSCliente" DefaultMode="Insert" Height="50px" Width="343px" OnPageIndexChanging="DetailsView1_PageIndexChanging">
            <Fields>
                <%--RUT--%>
                <asp:TemplateField HeaderText="RUT" SortExpression="rutCliente">
                    <EditItemTemplate>
                        <asp:Label ID="lbl_registro_rut" runat="server" Text='<%# Eval("rutCliente") %>'></asp:Label>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="txt_registro_rut" runat="server" Text='<%# Bind("rutCliente") %>' TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_rut" runat="server" ControlToValidate="txt_registro_rut" ErrorMessage="Ingrese RUT" ForeColor="Red"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("rutCliente") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <%--Clave--%>
                <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="Clave" SortExpression="clave">
                    <EditItemTemplate>
                        <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="clave" Mode="Edit" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="txt_registro_clave" runat="server" Text='<%# Bind("clave") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_clave" runat="server" ControlToValidate="txt_registro_clave" ErrorMessage="Ingrese Clave" ForeColor="Red"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="clave" Mode="ReadOnly" />
                    </ItemTemplate>
                </asp:TemplateField>
                <%--Nombre--%>
                <asp:TemplateField HeaderText="Nombre" SortExpression="nombreCliente">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nombreCliente") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("nombreCliente") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_nombre" runat="server" ControlToValidate="TextBox2" ErrorMessage="Ingrese Nombre" ForeColor="Red"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("nombreCliente") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fecha Naciemiento" SortExpression="fechaNacimiento">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("fechaNacimiento") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("fechaNacimiento") %>' TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_fecha" runat="server" ControlToValidate="TextBox3" ErrorMessage="Ingrese Fecha Nacimiento" ForeColor="Red"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("fechaNacimiento") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="direccion" HeaderText="Dirección" SortExpression="direccion" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource ID="DSCliente" runat="server" InsertMethod="insertCliente" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Cliente">
            <InsertParameters>
                <asp:Parameter Name="rutCliente" Type="Int32" />
                <asp:Parameter Name="nombreCliente" Type="String" />
                <asp:Parameter Name="fechaNacimiento" Type="DateTime" />
                <asp:Parameter Name="direccion" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
