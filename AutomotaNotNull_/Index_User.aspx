<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Index_User.aspx.cs" Inherits="AutomotaNotNull_.Index_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <form id="form1" runat="server">
        <br />
        <!--Dashboard User-->
         <div class="alert-info">
            <div class="btn-group btn-group-justified" role="group" aria-label="..." style="padding:80px; padding-bottom:20px">
                <div class="btn-group" role="group">
                    <a href="Index_User.aspx" class="btn btn-success" style="height:120px">
                        <h4><asp:Label ID="lblSaludo" runat="server" Text="lblSaludo"></asp:Label></h4>
                        <br /><i class="fa fa-user fa-2x"></i>
                    </a>
                </div>
                <div class="btn-group" role="group">
                    <a href="Logout.aspx" class="btn btn-danger" style="height:120px"><h4>Cerrar Sesión</h4> <br /><i class="fa fa-close fa-3x"></i></a>
                </div>
            </div>    
            <div class="btn-group btn-group-justified" role="group" aria-label="..." style="padding:80px; padding-top:20px">
                <div class="btn-group" role="group">
                    <a href="Buscar_Vehiculos.aspx" class="btn btn-default" style="height:120px"><h4>Buscar Vehículos</h4> <br /><i class="fa fa-search fa-3x"></i></a>
                </div>
                <div class="btn-group" role="group">
                    <a href="Mis_Vehiculos.aspx" class="btn btn-default" style="height:120px"><h4>Ver mis Vehículos</h4> <br /><i class="fa fa-car fa-3x"></i></a>
                </div>
                <div class="btn-group" role="group">
                    <a href="Mis_Mantenciones.aspx" class="btn btn-default" style="height:120px"><h4>Ver mis mantenciones</h4> <br /><i class="fa fa-wrench fa-3x"></i></a>
                </div>
                <div class="btn-group" role="group">
                    <a href="Ingreso_Vehiculo_Cliente.aspx" class="btn btn-default" style="height:120px"><h4>Registrar Vehículos</h4> <br /><i class="fa fa-registered fa-3x"></i></a>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
