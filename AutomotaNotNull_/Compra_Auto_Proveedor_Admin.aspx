﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Compra_Auto_Proveedor_Admin.aspx.cs" Inherits="AutomotaNotNull_.Compra_Auto_Proveedor_Admin" %>
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
                                Comprar Automóvil Nuevo a Proveedor:
                            </h4>
                        </td>
                    </tr>
                </table>
                <asp:DetailsView ID="DetailsView1" 
                    runat="server" 
                    AutoGenerateRows="False" 
                    DataKeyNames="idCompra" 
                    DataSourceID="DSCompra" 
                    DefaultMode="Insert"  
                    Height="50px" 
                    OnItemInserted="DetailsView1_ItemInserted" 
                    OnItemInserting="DetailsView1_ItemInserting" 
                    Width="100%" 
                    CssClass="table panel-body" 
                    BackColor="White"
                    OnPageIndexChanging="DetailsView1_PageIndexChanging">
                    <AlternatingRowStyle 
                        />
                    <CommandRowStyle Font-Bold="True" />
                    <EditRowStyle  />
                    <FieldHeaderStyle Font-Bold="True" />
                    <Fields>
                        <asp:TemplateField HeaderText="Factura" SortExpression="idCompra">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("idCompra") %>'></asp:Label>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("idCompra") %>' TextMode="Number"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("idCompra") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Proveedor" SortExpression="proveedor">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("proveedor") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtProveedor" runat="server" Text='<%# Bind("proveedor") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVProveedor" runat="server" ControlToValidate="txtProveedor" ErrorMessage="Debe ingresar un Proveedor" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("proveedor") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total Factura" SortExpression="valorVehiculo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("valorVehiculo") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtValor" runat="server" Text='<%# Bind("valorVehiculo") %>' TextMode="Number"></asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtValor" ErrorMessage="Debe ser mayor a 0" ForeColor="Red" MaximumValue="999999999" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("valorVehiculo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fecha Compra" SortExpression="fechaCompra">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("fechaCompra") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtFecha" runat="server" Text='<%# Bind("fechaCompra") %>' TextMode="Date"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("fechaCompra") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle Font-Bold="True"/>
                    <HeaderStyle Font-Bold="True"/>
                    <PagerStyle HorizontalAlign="Center" />
                    <RowStyle />
                </asp:DetailsView>
                <asp:ObjectDataSource ID="DSCompra" runat="server" InsertMethod="insertCompra" OldValuesParameterFormatString="original_{0}" OnLoad="DSCompra_Load" SelectMethod="showAll" TypeName="Negocio.Compra">
                    <InsertParameters>
                        <asp:Parameter Name="idCompra" Type="Int32" />
                        <asp:Parameter Name="proveedor" Type="String" />
                        <asp:Parameter Name="valorVehiculo" Type="String" />
                        <asp:Parameter Name="fechaCompra" Type="String" />
                    </InsertParameters>
                </asp:ObjectDataSource>
            </div>
            <div class="col-lg-1 col-md-1 col-sm-1">
            </div>
        </div>
    </form>
</asp:Content>
