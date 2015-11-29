<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Ver_Mantenciones_Admin.aspx.cs" Inherits="AutomotaNotNull_.Ver_Mantenciones_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID Mantención" DataSourceID="DSMantenciones">
            <Columns>
                <asp:BoundField DataField="ID Mantención" HeaderText="ID Mantención" ReadOnly="True" SortExpression="ID Mantención" />
                <asp:BoundField DataField="Descripción" HeaderText="Descripción" SortExpression="Descripción" />
                <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
                <asp:BoundField DataField="Cliente" HeaderText="Cliente" SortExpression="Cliente" />
                <asp:BoundField DataField="Patente" HeaderText="Patente" SortExpression="Patente" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="DSMantenciones" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Datos.AutomotoraTableAdapters.Ver_MantencionTableAdapter"></asp:ObjectDataSource>
    </form>
</asp:Content>
