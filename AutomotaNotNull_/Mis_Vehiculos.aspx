<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Mis_Vehiculos.aspx.cs" Inherits="AutomotaNotNull_.Mis_Vehiculos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 194px;
        }
        .auto-style2 {
            width: 194px;
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <p>
        <table style="width:100%; height: 55px;">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp; Busque Por Patente:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="DSPatenten" DataTextField="patenteVehiculo" DataValueField="patenteVehiculo" Width="150px">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="DSPatenten" runat="server" InsertMethod="insertMantenciones" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Vehiculo_Cliente">
                        <InsertParameters>
                            <asp:Parameter Name="rutCliente" Type="Int32" />
                            <asp:Parameter Name="patenteVehiculo" Type="String" />
                            <asp:Parameter Name="idCliente" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblRut" Name="rut" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>

            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblRut" runat="server" Enabled="False" Visible="False"></asp:Label>
                    <br />
                </td>
            </tr>
        </table>
    </p>
        <p>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
    </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</asp:Content>
