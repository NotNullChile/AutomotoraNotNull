<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registro_Cliente.aspx.cs" Inherits="AutomotaNotNull_.Registro_Cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="css/Style.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <br />
        <div class="row">
            <div class="col-lg-1 col-md-1 col-sm-1"></div>
            <div class="col-lg-10 col-md-10 col-sm-10 panel panel-primary" style="padding:30px">
                <h2 class="panel-heading panel-primary">REGISTRO CLIENTE <i class="fa fa-user"></i></h2>
                <br />
                <h4 class="panel panel-body">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="rutCliente" DataSourceID="DSCliente" DefaultMode="Insert" 
                    Height="50px" Width="100%" OnPageIndexChanging="DetailsView1_PageIndexChanging"
                    CssClass="table">
                <Fields>
                    <%--RUT--%>
                    <asp:TemplateField HeaderText="RUT" SortExpression="rutCliente">
                        <%--Header--%>
                        <EditItemTemplate>
                            <asp:Label ID="lbl_registro_rut" runat="server" Text='<%# Eval("rutCliente") %>'>
                            </asp:Label>
                        </EditItemTemplate>
                        <%--txt_rut--%>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txt_registro_rut" runat="server" Text='<%# Bind("rutCliente") %>' TextMode="Number">
                            </asp:TextBox>
                            <%--Validator--%>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator_rut" runat="server" 
                                ControlToValidate="txt_registro_rut" ErrorMessage="Ingrese RUT" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("rutCliente") %>'>
                        </asp:Label>
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
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nombreCliente") %>'>
                            </asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("nombreCliente") %>'>
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator_nombre" runat="server" ControlToValidate="TextBox2" ErrorMessage="Ingrese Nombre" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("nombreCliente") %>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <%--Fecha--%>
                    <asp:TemplateField HeaderText="Fecha Naciemiento" SortExpression="fechaNacimiento">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("fechaNacimiento") %>'>
                            </asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("fechaNacimiento") %>' TextMode="Date">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator_fecha" runat="server" ControlToValidate="TextBox3" ErrorMessage="Ingrese Fecha Nacimiento" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("fechaNacimiento") %>'>
                            </asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <%--Dirección--%>
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
                </h4>
            </div>    
            <div class="col-lg-1 col-md-1 col-sm-1"></div>
        </div>
    
</asp:Content>
