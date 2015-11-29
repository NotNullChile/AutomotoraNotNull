<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AutomotaNotNull_.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <form id="form1" runat="server">
        <br />
        <div class="row">
            <div class="col-lg-1 col-md-1 col-sm-1"></div>
            <div class="col-lg-10 col-md-10 col-sm-10 panel panel-primary" style="padding:30px">
                <h2 class="panel-heading panel-primary">INICIAR SESIÓN <i class="fa fa-key"></i></h2>
                <br />
                <h4 class="panel panel-body">
                    <table style="width: 100%;">
                        <tr>
                            <td><asp:label text="Nombre de Usuario" runat="server" /></td>
                            <td><asp:textbox runat="server" ID="txt_username_sesion" Width="80%"></asp:textbox>  </td>
                        </tr>
                        <tr>
                            <td><asp:label text="Contraseña" runat="server" /></td>
                            <td><asp:textbox runat="server" ID="txt_password_sesion" Width="80%"></asp:textbox>  </td>
                        </tr>
                        <tr>
                            <td><asp:Button runat="server" ID="btn_iniciar_sesion" CssClass="btn btn-success" Width="80%" Text="Iniciar Sesión" OnClick="btn_iniciar_sesion_Click1"></asp:Button>  </td>
                            <td><a href="Registro_Cliente.aspx" name="btn_registrar_usuario" class="btn btn-primary" style="width:80%">Registro Usuario Nuevo</a></td>
                        </tr>
                    </table>
                
       
    
   
                </h4>
            </div>    
            <div class="col-lg-1 col-md-1 col-sm-1"></div>
        </div>
    </form>
</asp:Content>
