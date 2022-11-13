<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="R2.aspx.cs" Inherits="Tarea5Prueba.R2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página 2</title>
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            text-align: center;
            border-style: ridge;
            border-color: #008080;
            background-color: #CCCCCC;
        }
        .auto-style6 {
            border-style: ridge;
            border-color: #008080;
        }
        .auto-style7 {
            border-style: dotted;
            border-color: #008080;
        }
        .auto-style8 {
            font-size: xx-large;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style5">
                        <br />
                        <span class="auto-style8"><strong>Pregunta 2</strong></span><br />
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="500px" ImageUrl="~/Imagenes/Pregunta 2.jpg" Width="600px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <br class="auto-style6" />
                        <asp:DropDownList ID="DD2" runat="server">
                            <asp:ListItem>a</asp:ListItem>
                            <asp:ListItem>b</asp:ListItem>
                            <asp:ListItem>c</asp:ListItem>
                            <asp:ListItem>d</asp:ListItem>
                            <asp:ListItem>e</asp:ListItem>
                            <asp:ListItem>f</asp:ListItem>
                        </asp:DropDownList>
                        <br class="auto-style6" />
                        <br class="auto-style6" />
                        <asp:Label ID="Lrespuesta2" runat="server" CssClass="auto-style7"></asp:Label>
                        <br class="auto-style6" />
                        <br class="auto-style6" />
                        <asp:Button ID="B2siguiente" runat="server" OnClick="B2siguiente_Click" Text="Siguiente" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Bresponder2" runat="server" OnClick="Bresponder2_Click" Text="Responder" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
