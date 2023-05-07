<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarTarjeta.aspx.cs" Inherits="WebApplication1.AgregarTarjeta" %>

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
                        <label for="idCuenta" class="form-label">ID Cuenta</label>
                        <asp:TextBox ID="idCuenta" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="idCuenta" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="CampoRequerido" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <label for="nomEntidad" class="form-label">Nombre Entidad</label>
                        <asp:TextBox ID="nomEntidad" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="nomEntidad" ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="CampoRequerido" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <label for="numTarjeta" class="form-label">Numero de Tarjeta</label>
                        <asp:TextBox ID="numTarjeta" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="numTarjeta" ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="CampoRequerido" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                   <div class="mb-3">
                        <label for="fechaCadu" class="form-label">Fecha Caducidad</label>
                        <asp:TextBox ID="fechaCadu" runat="server"  ></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="fechaCadu" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="CampoRequerido" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <label for="marca" class="form-label">Marca</label>
                        <asp:TextBox ID="marca" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="marca" ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="CampoRequerido" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <label for="cvv" class="form-label">CVV</label>
                        <asp:TextBox ID="cvv" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="cvv" ForeColor="Red" ID="RequiredFieldValidator6" runat="server" ErrorMessage="CampoRequerido" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    
                   
                    <div class="mb-3">
                        <asp:Button ID="btnAgregar" CssClass="btn btn-primary" runat="server" Text="Agregar Tarjeta" OnClick="btnAgregar_Click" />
                    </div>

                </div>

            </div>



        </form>
    </div>

</body>
</html>
