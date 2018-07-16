<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="EstadoPedido.aspx.cs" Inherits="Presentacion.EstadoPedido" %>
<%@ MasterType VirtualPath="~/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 20%;
        }
        .auto-style4 {
            width: 4px;
        }

        main {  
        background-size: cover;
        background-image:url(/Imagenes/spaguetti.jpg); 
        background-position: center center;
        background-repeat: no-repeat;
        background-attachment: fixed;                    
        } 
        .boton {
    border-radius:4px;
    font-size:15px;
    margin:10px;
    color:#fff!important;
    display:inline-block;
    padding:10px 20px 10px 20px;
    background:#1C5D54;
    box-shadow:0 15px 20px -10px rgba(0, 0, 0, 0), inset 0 -2px 0 0 rgba(0, 0, 0, 0.2), inset 0 -16px 25px 0 #1C5D54;
    transition:all .3s ease-in-out
}
.button:hover {
    text-decoration:none;
    box-shadow:0 0 0 0 rgba(0, 0, 0, 0), inset 0 -1px 0 0 rgba(0, 0, 0, 0.1), inset 0 10px 15px 5px #1C5D54;
    color:#fff!important
}
.button:active {
    box-shadow:0 0 0 0 rgba(0, 0, 0, 0.2), inset 0 -2px 0 0 rgba(0, 0, 0, 0.2), inset 0 50px 25px 10px #1C5D54;
    color:#1C5D54!important;
    position:relative;
    top:1px;     
    transition:all .1s ease-in-out
}
        .auto-style5 {
            height: 62px;
        }
        .auto-style6 {
            width: 4px;
            height: 62px;
        }
        .auto-style7 {
            height: 62px;
            width: 840px;
        }
        .auto-style8 {
            width: 840px;
        }
    </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="auto-style8">
                <asp:Panel ID="Panel1" runat="server" BackColor="#1C5E55" Height="74px" Width="867px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="30pt" ForeColor="White" Text="Cambio de estados"></asp:Label>
                </asp:Panel>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="auto-style8">
                <asp:GridView ID="Linea" runat="server" AutoGenerateColumns="False" DataKeyNames="PedidoID" OnRowUpdating="Linea_RowUpdating" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="Linea_RowCancelingEdit" OnRowEditing="Linea_RowEditing" Width="866px" OnSelectedIndexChanged="Linea_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="# Pedido">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("PedidoID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fecha">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Fecha") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Estado">
                            <EditItemTemplate>
                                <asp:DropDownList ID="dpp" runat="server">
                                    <asp:ListItem Value="1">Entregado</asp:ListItem>
                                    <asp:ListItem Value="5">Anulado</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("DescripcionEstado") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Cliente">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Cliente") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Modificar">
                            <EditItemTemplate>
                                <asp:Button cssclass="boton"  ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:Button>
                                &nbsp;<asp:Button cssclass="boton"  ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:Button>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Button cssclass="boton" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:Button>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#1ABC9C" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
