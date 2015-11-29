<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Ingresar_Repuesto.aspx.cs" Inherits="AutomotaNotNull_.Ingresar_Repuesto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 269px;
        }
        .auto-style2 {
            width: 262px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Ingrese un nuevo Repuesto</td>
                <td class="auto-style2">Modifique el stock de un Repuesto</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="idRepuesto" DataSourceID="DSRepuesto" DefaultMode="Insert" Height="50px" Width="243px">
                        <Fields>
                            <asp:TemplateField HeaderText="ID Repuesto" SortExpression="idRepuesto">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("idRepuesto") %>'></asp:Label>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="txtIdRepuesto" runat="server" ReadOnly="True" Text='<%# Bind("idRepuesto") %>' OnLoad="txtIdRepuesto_Load"></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("idRepuesto") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombre" SortExpression="nombreRepuesto">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nombreRepuesto") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("nombreRepuesto") %>' ValidationGroup="repuesto"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Ingrese Nombre" ForeColor="Red" ValidationGroup="repuesto"></asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("nombreRepuesto") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Stock" SortExpression="stockRepuesto">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("stockRepuesto") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("stockRepuesto") %>' ValidationGroup="repuesto"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="strock" runat="server" ControlToValidate="TextBox2" ErrorMessage="Ingrese Stock" ForeColor="Red" ValidationGroup="repuesto"></asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("stockRepuesto") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Valor" SortExpression="valorRepuesto">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("valorRepuesto") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("valorRepuesto") %>' ValidationGroup="repuesto"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valor" runat="server" ControlToValidate="TextBox4" ErrorMessage="Ingrese Valoor" ForeColor="Red" ValidationGroup="repuesto"></asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("valorRepuesto") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:ObjectDataSource ID="DSRepuesto" runat="server" InsertMethod="insertRespuesto" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.repuesto">
                        <InsertParameters>
                            <asp:Parameter Name="idRepuesto" Type="Int32" />
                            <asp:Parameter Name="nombreRepuesto" Type="String" />
                            <asp:Parameter Name="stockRepuesto" Type="Int32" />
                            <asp:Parameter Name="valorRepuesto" Type="Int32" />
                        </InsertParameters>
                    </asp:ObjectDataSource>
                </td>
                <td class="auto-style2">
                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="idRepuesto" DataSourceID="DSREpuestoStock" DefaultMode="Edit" Height="50px" Width="125px">
                        <Fields>
                            <asp:TemplateField HeaderText="Repuesto" SortExpression="idRepuesto">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DDLRepuesto" runat="server" AutoPostBack="True" DataSourceID="DSREpuestoStock" DataTextField="nombreRepuesto" DataValueField="idRepuesto" OnPreRender="DDLRepuesto_PreRender" SelectedValue='<%# Bind("idRepuesto") %>'>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("idRepuesto") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Stock" SortExpression="stockRepuesto">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtStock" runat="server" Text='<%# Bind("stockRepuesto") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("stockRepuesto") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:ObjectDataSource ID="DSREpuestoStock" runat="server" InsertMethod="insertRespuesto" OldValuesParameterFormatString="original_{0}" SelectMethod="showAll" TypeName="Negocio.repuesto" UpdateMethod="updateStock">
                        <InsertParameters>
                            <asp:Parameter Name="idRepuesto" Type="Int32" />
                            <asp:Parameter Name="nombreRepuesto" Type="String" />
                            <asp:Parameter Name="stockRepuesto" Type="Int32" />
                            <asp:Parameter Name="valorRepuesto" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="stock" Type="Int32" />
                            <asp:Parameter Name="idRepuesto" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
