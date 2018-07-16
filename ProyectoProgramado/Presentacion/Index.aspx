<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Presentacion.Index" %>
<%@ MasterType VirtualPath="~/Principal.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!--Plantilla obtenida y modificada https://www.tutorialrepublic.com/snippets/preview.php?topic=bootstrap&file=sign-in-form-with-avatar-icon -->

    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="JavaScript/JavaScriptValidaciones.js"></script>
    <style type="text/css">
        main {
            color: #4e4e4e;
            background: #e2e2e2;
            font-family: 'Roboto', sans-serif;
        }

        .form-control {
            font-size: 16px;
            background: #f2f2f2;
            box-shadow: none !important;
            border-color: transparent;
        }

        .list {
            font-size: 16px;
            background: #f2f2f2;
            box-shadow: none !important;
            border-color: transparent;
        }

        .form-control:focus {
            border-color: #d3d3d3;
        }

        .form-control, .btn {
            border-radius: 2px;
        }

        .login-form {
            width: 380px;
            margin: 0 auto;
        }

            .login-form h2 {
                margin: 0;
                padding: 30px 0;
                font-size: 34px;
            }

            .login-form .avatar {
                margin: 0 auto 30px;
                width: 100px;
                height: 100px;
                border-radius: 50%;
                z-index: 9;
                background: #ef3b3a;
                padding: 15px;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
            }

                .login-form .avatar img {
                    width: 100%;
                }

            .login-form form {
                color: #7a7a7a;
                border-radius: 4px;
                margin-bottom: 15px;
                background: #fff;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }

            .login-form .btn {
                font-weight: bold;
                background: #ef3b3a;
                border: none;
                margin-bottom: 20px;
            }

                .login-form .btn:hover, .login-form .btn:focus {
                    background: #ed2121;
                    outline: none !important;
                }

            .login-form a {
                color: #ef3b3a;
            }

            .login-form form a {
                color: #ef3b3a;
            }

                .login-form a:hover, .login-form form a:hover {
                    text-decoration: underline;
                }

        .hint-text {
            color: #999;
            text-align: center;
        }

        .form-footer {
            padding-bottom: 15px;
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!--
    <asp:UpdatePanel ID="UpdatePanel" runat="server">
        <ContentTemplate>
            -->
            <div class="login-form">
                <h2 class="text-center">Login</h2>

                <div class="avatar">
                    <img src="Imagenes/avatar.png" alt="Avatar">
                </div>
                <div class="form-group">
                    <input type="text" id="username" class="form-control input-lg" runat="server" placeholder="Usuario" required="required">
                </div>
                <div class="form-group">
                    <input type="password" id="password" class="form-control input-lg" runat="server" placeholder="Contraseña" required="required">
                </div>
               
                <div class="form-group">
                    <asp:Button ID="LoginButton" class="btn btn-primary btn-lg btn-block login-btn" runat="server" CommandName="Login" OnClick="LoginButton_Click" Text="Inicio de sesión" />
                </div>
             </div>
                <!--
        </ContentTemplate>
    </asp:UpdatePanel>
-->
</asp:Content>
