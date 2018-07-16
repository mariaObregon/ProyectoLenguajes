<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="InsertarPlato.aspx.cs" Inherits="Presentacion.AdministracionPlatos.InsertarPlato" %>
<%@ MasterType VirtualPath="~/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="JavaScript/ScriptFacebook.js"></script>
    <script type="text/javascript" src="JavaScript/JavaScriptValidaciones.js"></script>


    <script type="text/javascript">

        function showimagepreview(input) {

            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {

                    document.getElementsByTagName("img")[1].setAttribute("src", e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>

    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <asp:UpdatePanel ID="UpdatePanel1" runat="server">

       <ContentTemplate> 

    <div class="container">

      <div class="row">

          <div class="col-xs-12">


              <table class="auto-style3">
        <tr>
            <td>
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
            <td>
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
            <td><span class="validity"><asp:TextBox ID="txtDescPlato" runat="server" placeholder="Descripcion Plato"> </asp:TextBox>
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
            <td>
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
            <td>
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
            <td>
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
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
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
            <td>
               <asp:Button ID="butGuardarPlato" runat="server" OnClick="ButGuardarPlato_Click" Text="Guardar Plato" />
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
            <td>&nbsp;</td>
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



          </div>



      </div>


    </div>

    

         </ContentTemplate>

         <Triggers>
           <asp:PostBackTrigger ControlID="butGuardarPlato" />
         </Triggers>

        </asp:UpdatePanel>
    

</asp:Content>
