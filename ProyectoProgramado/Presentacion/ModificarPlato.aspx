<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ModificarPlato.aspx.cs" Inherits="Presentacion.ModificarPlato" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 245px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">

       <ContentTemplate> 

    <table class="auto-style3">
        <tr>
            <td class="auto-style4">
                <asp:TextBox ID="txtBuscarPlato" runat="server"> <placeholder="Plato a Buscar"> </asp:TextBox>
                <asp:Label ID="labelBuscPlato" runat="server" Text="Buscar Plato"></asp:Label>
            <td>
                <asp:Button ID="btnBuscarPalto" runat="server" style="margin-left: 0px" Text="Buscar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
              <asp:TextBox ID="txtNombrePlato" runat="server" placeholder="Nombre Plato"></asp:TextBox>
              <asp:Label ID="labelNomPlato" runat="server" Text="Nombre Plato"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <span class="validity"><asp:TextBox ID="txtDescPlato" runat="server" placeholder="Descripcion Plato"> </asp:TextBox>
                <asp:Label ID="labelDescPlato" runat="server" Text="Descripcion Plato"></asp:Label>
                </span>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:TextBox ID="txtPrecioPlato" runat="server" placeholder="Precio Plato"></asp:TextBox>
                <asp:Label ID="labelPrecPlato" runat="server" Text="Precio Plato"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="True">Habilitado</asp:ListItem>
                <asp:ListItem Value="False">Deshabilitado</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="labelHabilitar" runat="server" Text="Habilitar Plato"></asp:Label>
             </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
              <asp:FileUpload ID="InsertarImagenPlato" runat="server" 
                 onchange="showimagepreview(this)"/>
              <asp:Label ID="labelImagen" runat="server" Text="Imagen Plato"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
              <img src="NULL" id="img" alt="" style="width:200px" /></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
     </table>

           </ContentTemplate>

           <Triggers>
               <asp:PostBackTrigger ControlID="btnModificar" />
           </Triggers>

          </asp:UpdatePanel>

</asp:Content>
