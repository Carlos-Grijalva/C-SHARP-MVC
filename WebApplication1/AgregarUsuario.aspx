<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="WebApplication1.AgregarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <link href="Incluir/CSS/bootstrap.min.css" rel="stylesheet" type="text/css" />
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
            <div id="mensaje" runat="server"></div>
            <div class="row">
                <div class="col-2"></div>
                <div class="col-6">
                    <div class="mb-3">
                        <label for="txtNombre" class="form-label">Nombre</label>
                        <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="txtNombre" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="CampoRequerido" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <label for="txtPrimerApellido" class="form-label">Primer Apellido</label>
                        <asp:TextBox ID="txtPrimerApellido" CssClass="form-control" runat="server"></asp:TextBox>

                        <asp:RequiredFieldValidator ControlToValidate="txtPrimerApellido" ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="CampoRequerido" Display="Dynamic"></asp:RequiredFieldValidator>

                    </div>
                    <div class="mb-3">
                        <label for="txtSegundopApellido" class="form-label">Segundo Apellido</label>
                        <asp:TextBox ID="txtSegundoApellido" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="txtSegundoApellido" ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="CampoRequerido" Display="Dynamic"></asp:RequiredFieldValidator>

                    </div>
                    <div class="mb-3">
                        <label for="txtEmail" class="form-label">Correo Electronico</label>
                        <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="txtEmail" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="CampoRequerido" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ControlToValidate="txtEmail" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Formato Invalido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>

                    </div>
                    <div class="mb-3">
                        <label for="txtCelular" class="form-label">Celular</label>
                        <asp:TextBox ID="txtCelular" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="txtContrasena" class="form-label">Contrasena</label>
                        <asp:TextBox ID="txtContrasena" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="txtContrasena" ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="CampoRequerido" Display="Dynamic"></asp:RequiredFieldValidator>

                    </div>
                    <div class="mb-3">
                        <label for="txtRepetirContrasena" class="form-label">Repetir Contrasena</label>
                        <asp:TextBox ID="txtRepetirContrasena" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="txtRepetirContrasena" ForeColor="Red" ID="RequiredFieldValidator6" runat="server" ErrorMessage="CampoRequerido" Display="Dynamic"></asp:RequiredFieldValidator>

                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Contrasena no coinciden" ControlToCompare="txtContrasena" ControlToValidate="txtRepetirContrasena" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                    </div>
                    <div class="mb-3">
                        <asp:Button ID="btnAgregar" CssClass="btn btn-primary" runat="server" Text="Agregar Usuario" OnClick="btnAgregar_Click" />
                    </div>

                </div>

            </div>



        </form>
    </div>
</body>
</html>
