<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ModificarCliente.aspx.cs" Inherits="Presentacion.ModuloCliente.ModificarCliente" %>

<%@ MasterType VirtualPath="~/Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--Plantilla obtenida y modificada https://www.tutorialrepublic.com/snippets/preview.php?topic=bootstrap&file=sign-up-form-with-icons -->


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../JavaScript/JavaScriptValidaciones.js"></script>

    <style type="text/css">
        .form-control, .form-control:focus, .input-group-addon {
            border-color: #e1e1e1;
        }

        .form-control, .btn {
            min-height: 38px;
            border-radius: 2px;
        }

        .signup-form {
            width: 390px;
            margin: 0 auto;
            padding: 30px 0;
        }

            .signup-form form {
                color: #999;
                border-radius: 3px;
                margin-bottom: 15px;
                background: #fff;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }

            .signup-form h2 {
                color: #333;
                font-weight: bold;
                margin-top: 0;
            }

            .signup-form hr {
                margin: 0 -30px 20px;
            }

            .signup-form .form-group {
                margin-bottom: 20px;
            }

            .signup-form label {
                font-weight: normal;
                font-size: 13px;
            }

            .signup-form .form-control {
                min-height: 38px;
                box-shadow: none !important;
            }

            .signup-form .input-group-addon {
                max-width: 42px;
                text-align: center;
            }

            .signup-form input[type="checkbox"] {
                margin-top: 2px;
            }

            .signup-form .btn {
                font-size: 16px;
                font-weight: bold;
                background: #19aa8d;
                border: none;
                min-width: 140px;
            }

                .signup-form .btn:hover, .signup-form .btn:focus {
                    background: #179b81;
                    outline: none;
                }

            .signup-form a {
                color: #19aa8d;
                text-decoration: underline;
            }

                .signup-form a:hover {
                    text-decoration: none;
                }

            .signup-form form a {
                color: #19aa8d;
                text-decoration: none;
            }

                .signup-form form a:hover {
                    text-decoration: underline;
                }

            .signup-form .fa {
                font-size: 21px;
            }

            .signup-form .fa-paper-plane {
                font-size: 18px;
            }

            .signup-form .fa-check {
                color: #fff;
                left: 17px;
                top: 18px;
                font-size: 7px;
                position: absolute;
            }
    </style>

    <script> 
        function ocultar() {
            document.getElementById('divContras').style.display = 'none';
        }


        function recargar() {

            location.href = "/ModuloCliente/ModificarCliente.aspx";
        }

    </script>
</asp:Content>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
            <div class="signup-form">

                <h2>Configuracion</h2>

                <hr>


                <div class="form-group">

                    <div class="input-group">

                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <label>Primer nombre</label>
                    </div>
                    <input type="text" class="form-control" runat="server" id="primerNombre" placeholder="Primer nombre" required="required">
                </div>

                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <label>Segundo nombre</label>
                    </div>
                    <input type="text" class="form-control" runat="server" id="segundoNombre" placeholder="Segundo nombre">
                </div>

                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <label>Primer apellido</label>
                    </div>
                    <input type="text" class="form-control" runat="server" id="primerApellido" placeholder="Primer apellido">
                </div>

                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <label>Segundo apellido</label>
                    </div>
                    <input type="text" class="form-control" runat="server" id="segundoApellido" placeholder="Segundo apellido">
                </div>

                <div class="form-group">
                    <div class="input-group">

                        <span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
                        <label>Direccion</label>
                    </div>
                    <input type="text" class="form-control" runat="server" id="direccionMod" placeholder="Direccion">
                </div>

                <div class="form-group">
                    <div class="text-center">
                        <div class="form-group">
                            <asp:Button ID="BtnModificarDatos" class="btn btn-primary btn-lg" runat="server" OnClick="BtnModificarDatos_Click" Text="Modificar datos" Width="100%" />
                        </div>
                    </div>
                </div>

                <div id="divContras">

                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <input type="text" class="form-control" runat="server" id="anterior" placeholder="Contraseña anterior">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <input type="text" class="form-control" runat="server" id="password" placeholder="Contraseña">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <input type="text" class="form-control" id="confirm_password" runat="server" placeholder="Confirmar Contraseña">
                        </div>

                    </div>

                    <div class="form-group">
                        <div class="text-center">
                            <div class="form-group">
                                <asp:Button ID="BtnModificarContraseña" class="btn btn-primary btn-lg" runat="server" OnClick="BtnModificarContraseña_Click" Text="Modificar contraseña" Width="100%" />
                            </div>
                        </div>
                    </div>

                </div>

            </div>
</asp:Content>
