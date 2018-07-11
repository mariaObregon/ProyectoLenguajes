<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AdministracionPedidos.aspx.cs" Inherits="Presentacion.AdministracionPedidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
        width: 1286px;
    }
        .auto-style21 {
            width: 300px;
        }
        .auto-style24 {
            width: 1118px;
            height: 26px;
        }
        
           body {  
        background-size: cover;
        background-image:url(/Imagenes/14.jpg); 
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

        .auto-style32 {
            margin-top: 10;
        }
        .auto-style39 {
            width: 395px;
            
        }
        .auto-style44 {
            width: 395px;
        }
        .auto-style46 {
            width: 1286px;
            body { background-size: cover;
            height: 26px;
        }
        .auto-style47 {
            width: 395px;
            height: 26px;
        }
        .auto-style50 {
            -ms-flex-line-pack: center!important;
            align-content: center!important;
            width: 325px;
        }
        .auto-style51 {
            width: 325px;
            height: 26px;
        }
        .auto-style53 {
            width: 325px;
        }
        .auto-style54 {
            width: 158px;
            height: 26px;
        }
        .auto-style55 {
            width: 158px;
        }
        .auto-style56 {
            width: 1168px;
        }
        .auto-style57 {
            width: 445px;
            body { background-size: cover;
            height: 26px;
        }
        .auto-style58 {
            width: 445px;
            
        }
        .auto-style59 {
            width: 445px;
        }

    }
    .auto-style47 {
        width: 52px;
    }
    .auto-style48 {
        width: 23px;
    }

    </style>




</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table>
            <div class="Container">
            <div class="Row">
            <div class="col-sm-4 col-md-4 col-lg-4">
            <tr>
                <td>&nbsp;</td>
    
                <td colspan="7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Size="30pt" Text="Habilite los filtros que desea utilizar:&nbsp;&nbsp;" Font-Bold="True" ForeColor="#E3EAEB" Font-Underline="False"></asp:Label>
                    &nbsp; &nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button cssclass="boton" ID="Nombre" runat="server" OnClick="Nombre_Click" Text="Habilitar Nombre" Font-Size="15pt" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button cssclass="boton" ID="Fecha" runat="server" Text="Habilitar Fecha" OnClick="Fecha_Click" Font-Size="15pt" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button cssclass="boton" ID="Estadoo" runat="server" Text="Habilitar Estado" OnClick="Estadoo_Click" Font-Size="15pt" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style51">
                    <asp:Panel ID="Panel1" runat="server" Width="292px">
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" ForeColor="#E3EAEB" Text="Fecha de inicio" Font-Size="25pt" Font-Bold="True"></asp:Label>
                        <asp:Calendar ID="Calendar1" runat="server" ForeColor="#333333" Height="225px" Width="185px" BackColor="#E3EAEB" Font-Bold="True">
                            <TitleStyle BackColor="#1C5D54" ForeColor="White" />
                        </asp:Calendar>
                    </asp:Panel>
                </td>
                <td class="auto-style51">
                    <asp:Panel ID="Panel2" runat="server">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" ForeColor="#E3EAEB" Text="Fecha final" Font-Size="25pt" Font-Bold="True"></asp:Label>
                        <asp:Calendar ID="Calendar2" runat="server" ForeColor="#333333" Height="225px" OnSelectionChanged="Calendar2_SelectionChanged" Width="185px" BackColor="#E3EAEB" Font-Bold="True">
                            <TitleStyle BackColor="#1C5D54" ForeColor="White" />
                        </asp:Calendar>
                    </asp:Panel>
                </td>
                <td class="auto-style48">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style46">
                <asp:Label ID="Label1" runat="server" ForeColor="#1C5D54" Text="Nombre del cliente" Font-Size="22pt" Font-Bold="True" Font-Italic="False"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                <asp:Label ID="Label4" runat="server" ForeColor="#1C5D54" Text="Estado del pedido" Font-Size="22pt" Font-Bold="True" Font-Overline="False" Font-Strikeout="False"></asp:Label>
                </td>
                <td class="auto-style47">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <br />
                <asp:DropDownList ID="Estado" runat="server" ForeColor="#584545" CssClass="auto-style32">
                </asp:DropDownList>
                </td>
                <td class="auto-style54">
                    </td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="6">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Font-Size="30pt" Text="Pedidos" Font-Bold="True" ForeColor="#E3EAEB"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button cssclass="boton" ID="Button4" runat="server" Text="Filtrar" OnClick="Button4_Click" Font-Size="20pt" />
                    <br />
&nbsp;
                    <asp:GridView ID="Lista" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="Lista_RowDataBound" Width="913px" Font-Bold="True">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="PedidoID" HeaderText="# Pedido" />
                            <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
                            <asp:BoundField DataField="DescripcionEstado" HeaderText="Estado" />
                            <asp:BoundField DataField="Cliente" HeaderText="Cliente" />
                            <asp:TemplateField HeaderText="Platos">
                                <ItemTemplate>
                                    <asp:GridView ID="Detalles" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                                            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                                            <asp:BoundField DataField="Precio" HeaderText="Precio" />
                                        </Columns>
                                        <EditRowStyle BackColor="#7C6F57" />
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
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            </div>
            </div>
            </div>
            <tr>
                <td class="auto-style53">&nbsp;</td>
                <td class="auto-style53">&nbsp;</td>
                <td class="auto-style53">&nbsp;</td>
                <td class="auto-style48">
                    &nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style55">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style53">&nbsp;</td>
                <td class="auto-style53">&nbsp;</td>
                <td class="auto-style53">&nbsp;</td>
                <td class="auto-style48">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style39">
                    &nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
            </tr>
            </table>
<br />
        
</asp:Content>



