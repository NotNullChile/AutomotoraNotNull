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
            
                <%--DetailsView--%>
                <asp:Table runat="server"  Width="100%" CssClass="table">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:label text="Nombre de Usuario" runat="server" />
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:textbox runat="server" ID="txt_username_sesion" Width="80%"></asp:textbox>  
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:label text="Contraseña" runat="server" />
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:textbox runat="server" TextMode="Password" ID="txt_password_sesion" Width="80%"></asp:textbox>  
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Button runat="server" ID="btn_iniciar_sesion" CssClass="btn btn-success" Width="80%" Text="Iniciar Sesión"></asp:Button>  
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>&nbsp;</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                        </asp:TableCell>
                        <asp:TableCell>
                            <a href="Registro_Cliente.aspx" name="btn_registrar_usuario" class="btn btn-primary" style="width:80%">Registro Usuario Nuevo</a>  
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                
       
    
   
                </h4>
            </div>    
            <div class="col-lg-1 col-md-1 col-sm-1"></div>
        </div>
    </form>
</asp:Content>
