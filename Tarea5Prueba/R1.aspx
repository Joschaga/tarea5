<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="R1.aspx.cs" Inherits="Tarea5Prueba.R1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página 1</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            border-style: ridge;
            border-color: #008080;
            background-color: #CCCCCC;
        }
        .auto-style3 {
            border-style: ridge;
            border-color: #008080;
        }
        .auto-style4 {
            border-style: dotted;
            border-color: #008080;
        }
        .auto-style5 {
            font-size: xx-large;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <br />
                        <span class="auto-style5"><strong>Pregunta 1</strong></span><br />
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="500px" ImageUrl="~/Imagenes/Pregunta 1.jpg" Width="600px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br class="auto-style3" />
                        <asp:DropDownList ID="DD1" runat="server">
                            <asp:ListItem>a</asp:ListItem>
                            <asp:ListItem>b</asp:ListItem>
                            <asp:ListItem>c</asp:ListItem>
                            <asp:ListItem>d</asp:ListItem>
                            <asp:ListItem>e</asp:ListItem>
                            <asp:ListItem>f</asp:ListItem>
                        </asp:DropDownList>
                        <br class="auto-style3" />
                        <br class="auto-style3" />
                        <asp:Label ID="Lrespuesta1" runat="server" CssClass="auto-style4"></asp:Label>
                        <br class="auto-style3" />
                        <br class="auto-style3" />
                        <asp:Button ID="B2siguiente" runat="server" OnClick="B2siguiente_Click" Text="Siguiente" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Bresponder" runat="server" OnClick="Bresponder_Click" Text="Responder" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
