<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioSesión.aspx.cs" Inherits="WebApplication1.InicioSesión" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Incluir/CSS/bootstrap.min.css" rel="stylesheet" type="text/css"  />

</head>
<body>

    <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Top navbar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled">Disabled</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>

    <div class="container-fluid m-5">
        <form id="form1" runat="server">
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
                    <h1 class="h3 mb-3 fw-normal">Ingresar Sistema</h1>
                    <div class="form-floating p-4">
                        <label for="txtEmail">Correo Electronico</label>
                        <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" * Campo Requerido" ControlToValidate="txtEmail" CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="alert" Display="Dynamic" ErrorMessage="Formato Incorrecto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-floating p-4">
                        <label for="txtContrasena">Contrasena</label>
                        <asp:TextBox ID="txtContrasena" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* CampoRequerido" ControlToValidate="txtContrasena" CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>

                    </div>
                    <asp:Button ID="btnIngresar" CssClass="w-100 btn btn-lg btn-primary p-4" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />


                    <asp:Label ID="txtError" Visible="false" runat="server" Text="*" CssClass="alert-danger"></asp:Label>

                </div>
                <div class="col-4"></div>
            </div>
        </form>
    </div>
</body>
</html>
