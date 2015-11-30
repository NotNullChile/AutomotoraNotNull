<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Index_Admin.aspx.cs" Inherits="AutomotaNotNull_.Index_ADmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <br />
        <!--Dashboard Admin-->
         <div class="alert-info">
            <div class="btn-group btn-group-justified" role="group" aria-label="..." style="padding:80px; padding-bottom:20px">
                <div class="btn-group" role="group">
                    <a href="Index_Admin.aspx" class="btn btn-success" style="height:120px">
                        <h4><asp:Label ID="lblSaludo" runat="server" Text="Bienvenido Administrador"></asp:Label></h4>
                        <br /><i class="fa fa-user fa-2x"></i>
                    </a>
                </div>
                <div class="btn-group" role="group">
                    <a href="Logout.aspx" class="btn btn-danger" style="height:120px"><h4>Cerrar Sesión</h4> <br /><i class="fa fa-close fa-3x"></i></a>
                </div>
            </div>    
            <div class="btn-group btn-group-justified" role="group" aria-label="..." style="padding:80px; padding-top:20px; padding-bottom:0px">
                <div class="btn-group" role="group">
                    <a href="Buscar_Vehiculo_Admin.aspx" class="btn btn-default" style="height:120px"><h4>Buscar Vehículos</h4> <br /><i class="fa fa-search fa-3x"></i></a>
                </div>
                <div class="btn-group" role="group">
                    <a href="Ingresar_Vehiculo_Admin.aspx" class="btn btn-default" style="height:120px"><h4>Ingresar Vehículo<br /> Por compra Proveedor </h4> <i class="fa fa-car fa-3x"></i></a>
                </div>
                <div class="btn-group" role="group">
                    <a href="Ingresar_Mantencion.aspx" class="btn btn-default" style="height:120px"><h4>Ingresar Mantención </h4> <br /><i class="fa fa-wrench fa-3x"></i></a>
                </div>
                <div class="btn-group" role="group">
                    <a href="Ingresar_Venta_Admin.aspx" class="btn btn-default" style="height:120px"><h4>Ingresar Venta </h4> <br /><i class="fa fa-money fa-3x"></i></a>
                </div>
                <div class="btn-group" role="group">
                    <a href="Compra_Auto_Cliente_Admin.aspx" class="btn btn-default" style="height:120px"><h4>Ingresar Compra <br /> Cliente</h4><i class="fa fa-shopping-bag fa-3x"></i></a>
                </div>
                <div class="btn-group" role="group">
                    <a href="Compra_Auto_Proveedor_Admin.aspx" class="btn btn-default" style="height:120px"><h4>Ingresar Compra <br /></h4> <i class="fa fa-ship fa-3x"></i></a>
                </div>
            </div>
            <div class="btn-group btn-group-justified" role="group" aria-label="..." style="padding:80px; padding-top:0px">
                <div class="btn-group" role="group">
                    <a href="Ingresar_Repuesto.aspx" class="btn btn-default" style="height:120px"><h4>Ingresar Repuesto</h4> <br /><i class="fa fa-cog fa-3x"></i></a>
                </div>
                <div class="btn-group" role="group">
                    <a href="Eiminar_Cliente.aspx" class="btn btn-default" style="height:120px"><h4>Eliminar Cliente</h4> <br /><i class="fa fa-user-times fa-3x"></i></a>
                </div>
                <div class="btn-group" role="group">
                    <a href="Ver_Vehiculo_Cliente_Admin.aspx" class="btn btn-default" style="height:120px"><h4>Ver vehículos por <br /> Cliente</h4><i class="fa fa-user-plus fa-3x"></i></a>
                </div>
                <div class="btn-group" role="group"> 
                    <a href="Ver_Mantenciones_Admin.aspx" class="btn btn-default" style="height:120px"><h4>Ver Mantenciones</h4> <br /><i class="fa fa-wrench fa-3x"></i></a>
                </div>
                <div class="btn-group" role="group">
                    <a href="Asociar_Repuestos_Mantencion.aspx" class="btn btn-default" style="height:120px"><h4>Asociar Mantenciones <br /> Repuestos</h4> <i class="fa fa-link fa-3x"></i></a>
                </div> 
            </div>
        </div>
    </form>
</asp:Content>
