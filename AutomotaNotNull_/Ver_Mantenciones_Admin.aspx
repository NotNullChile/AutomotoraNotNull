<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Ver_Mantenciones_Admin.aspx.cs" Inherits="AutomotaNotNull_.Ver_Mantenciones_Admin" %>
<asp:Content ID="Content1" 
    ContentPlaceHolderID="head" 
    runat="server">
</asp:Content>
<asp:Content ID="Content2" 
    ContentPlaceHolderID="ContentPlaceHolder1" 
    runat="server">
    <form id="form1" runat="server">
        <br />        
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
                                Ver Mantenciones:
                            </h4>
                        </td>
                    </tr>
                </table>
                <asp:GridView ID="GridView2" runat="server" 
                    AutoGenerateColumns="False" 
                    DataKeyNames="ID Mantención" 
                    DataSourceID="DSMantenciones"
                    Width="100%" 
                    CssClass="table panel-body" 
                    BackColor="White">
                    <Columns>
                        <asp:BoundField DataField="ID Mantención" HeaderText="ID Mantención" ReadOnly="True" SortExpression="ID Mantención" />
                        <asp:BoundField DataField="Descripción" HeaderText="Descripción" SortExpression="Descripción" />
                        <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
                        <asp:BoundField DataField="Cliente" HeaderText="Cliente" SortExpression="Cliente" />
                        <asp:BoundField DataField="Patente" HeaderText="Patente" SortExpression="Patente" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="DSMantenciones" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Datos.AutomotoraTableAdapters.Ver_MantencionTableAdapter"/>
            </div>
            <div class="col-lg-1 col-md-1 col-sm-1">
            </div>
        </div>
    </form>
</asp:Content>
