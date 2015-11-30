<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Asociar_Repuestos_Mantencion.aspx.cs" Inherits="AutomotaNotNull_.Asociar_Repuestos_Mantencion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="DSRepuestoMantencion" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:TemplateField HeaderText="Mantención" SortExpression="idMantenciones">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("idMantenciones") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DSMantencion" DataTextField="idMantenciones" DataValueField="idMantenciones" SelectedValue='<%# Bind("idMantenciones") %>'>
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="DSMantencion" runat="server" InsertMethod="insertMantenciones" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Mantenciones">
                            <InsertParameters>
                                <asp:Parameter Name="idMantenciones" Type="Int32" />
                                <asp:Parameter Name="tipoMantencion" Type="String" />
                                <asp:Parameter Name="valor" Type="Int32" />
                                <asp:Parameter Name="rutCliente" Type="Int32" />
                                <asp:Parameter Name="patenteVehiculo" Type="String" />
                            </InsertParameters>
                        </asp:ObjectDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("idMantenciones") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Repuesto" SortExpression="idRepuesto">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("idRepuesto") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="DSRepuesto" DataTextField="nombreRepuesto" DataValueField="idRepuesto" SelectedValue='<%# Bind("idRepuesto") %>'>
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="DSRepuesto" runat="server" InsertMethod="insertRespuesto" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.repuesto" UpdateMethod="updateStock">
                            <InsertParameters>
                                <asp:Parameter Name="idRepuesto" Type="Int32" />
                                <asp:Parameter Name="nombreRepuesto" Type="String" />
                                <asp:Parameter Name="stockRepuesto" Type="Int32" />
                                <asp:Parameter Name="valorRepuesto" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="stock" Type="Int32" />
                                <asp:Parameter Name="idRepuesto" Type="Int32" />
                                <asp:Parameter Name="stockRepuesto" Type="Int32" />
                                <asp:Parameter Name="original_idRepuesto" Type="Int32" />
                            </UpdateParameters>
                        </asp:ObjectDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("idRepuesto") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Cantidad" SortExpression="stock">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("idRepuesto") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("stock") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("idRepuesto") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource ID="DSRepuestoMantencion" runat="server" InsertMethod="insertRespuestoMantenciones" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.Repuesto_Mantenciones">
            <InsertParameters>
                <asp:Parameter Name="idRepuesto" Type="Int32" />
                <asp:Parameter Name="idMantenciones" Type="Int32" />
            </InsertParameters>
        </asp:ObjectDataSource>
    </form>
</asp:Content>
