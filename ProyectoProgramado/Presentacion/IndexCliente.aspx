<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="IndexCliente.aspx.cs" Inherits="Presentacion.IndexCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!--Plantilla obtenida y modificada de https://www.tutorialrepublic.com/snippets/preview.php?topic=bootstrap&file=sign-in-from-with-facebook-and-twitter-button -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="JavaScript/ScriptFacebook.js"></script>
    <script type="text/javascript" src="JavaScript/JavaScriptValidaciones.js"></script>

    <style type="text/css">
        .login-form {
            width: 385px;
            margin: 30px auto;
        }

            .login-form form {
                margin-bottom: 15px;
                background: #f7f7f7;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }

            .login-form h2 {
                margin: 0 0 15px;
            }

        .form-control, .login-btn {
            min-height: 38px;
            border-radius: 2px;
        }

        .input-group-addon .fa {
            font-size: 18px;
        }

        .login-btn {
            font-size: 15px;
            font-weight: bold;
        }

        .social-btn .btn {
            border: none;
            margin: 10px 3px 0;
            opacity: 1;
        }

            .social-btn .btn:hover {
                opacity: 0.9;
            }

        .social-btn .btn-primary {
            background: #507cc0;
        }

        .social-btn .btn-info {
            background: #64ccf1;
        }

        .social-btn .btn-danger {
            background: #df4930;
        }

        .or-seperator {
            margin-top: 20px;
            text-align: center;
            border-top: 1px solid #ccc;
        }

            .or-seperator i {
                padding: 0 10px;
                background: #f7f7f7;
                position: relative;
                top: -11px;
                z-index: 1;
            }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <!-- Script generado por Facebook https://developers.facebook.com/ -->
    <script>
        window.fbAsyncInit = function () {
            FB.init({
                appId: '923339467863246',
                cookie: true,
                xfbml: true,
                version: 'v3.0'
            });

            FB.AppEvents.logPageView();

        };

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>

    <div class="login-form">

        <h2 class="text-center">Sign in</h2>
        <div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" class="form-control" runat="server" id="username" placeholder="Username" required="required">
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <input type="password" class="form-control" runat="server" id="password" placeholder="Password" required="required">
            </div>
        </div>
        <div class="form-group">
           
                <asp:Button ID="BtnLogin" class="btn btn-primary login-btn btn-block"  runat="server" OnClick="BtnLogin_Click" Text="Log in" />
            
        </div>
        <div class="or-seperator"><i>o</i></div>
        <p class="text-center">Login con Facebook</p>

       
        <div class="text-center">
        <div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="login_with"
            data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false"
            data-onlogin="checkLoginState();" data-scope="public_profile,email">
            Facebook         
        </div>
       </div>
        <br />

        <p class="text-center text-muted small">No tienes una cuenta? <a href="/AdministracionCliente/AgregarCliente.aspx">Registrate aquí!</a></p>
    </div>

        
</asp:Content>
