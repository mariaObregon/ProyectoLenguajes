<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Presentacion.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }

        .auto-style3 {
            height: 20px;
        }

        .auto-style5 {
            height: 23px;
        }

        .auto-style6 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel" runat="server">
        <ContentTemplate>
            <table class="auto-style4">
                <tr>
                    <td colspan="2" style="color: White; background-color: #6B696B; font-weight: bold; text-align: center;" class="auto-style3">Iniciar sesión</td>
                </tr>
                <tr>
                    <td style="border-color: #E8D5AE; text-align: right">
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nombre de usuario:</asp:Label>
                    </td>
                    <td style="border-color: #E8D5AE">
                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border-color: #E8D5AE; text-align: right" class="auto-style6">
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                    </td>
                    <td class="auto-style6" style="border-color: #E8D5AE">
                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border-color: #E8D5AE; text-align: right">
                        <asp:Label ID="TypeLabel" runat="server" Text="Tipo de usuario:"></asp:Label>
                    </td>
                    <td style="border-color: #E8D5AE">
                        <asp:DropDownList ID="TypeDropDownList" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="border-color: #E8D5AE;" colspan="2" class="auto-style5"></td>
                </tr>
                <tr>
                    <td colspan="2" style="border-color: #E8D5AE; text-align: center">
                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" OnClick="LoginButton_Click" Text="Inicio de sesión" />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
