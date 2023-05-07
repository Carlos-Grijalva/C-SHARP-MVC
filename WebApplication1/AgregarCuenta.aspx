<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarCuenta.aspx.cs" Inherits="WebApplication1.AgregarCuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
        <form id="form3" runat="server">
            <div id="mensaje" runat="server"></div>
            <div class="row">
                <div class="col-2"></div>
                <div class="col-6">
                    <div class="mb-3">
                        <label for="idUsuario" class="form-label">ID Usuario</label>
                        <asp:TextBox ID="idUsuario" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="idUsuario" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="CampoRequerido" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <label for="saldo" class="form-label">Saldo</label>
                        <asp:TextBox ID="saldo" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="saldo" ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="CampoRequerido" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <label for="numCuenta" class="form-label">Numero de Tarjeta</label>
                        <asp:TextBox ID="numCuenta" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="numCuenta" ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="CampoRequerido" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                   
                    <div class="mb-3">
                        <asp:Button ID="btnAgregar" CssClass="btn btn-primary" runat="server" Text="Agregar Cuenta" OnClick="btnAgregar_Click" />
                    </div>

                </div>

            </div>



        </form>
    </div>

</body>
</html>
