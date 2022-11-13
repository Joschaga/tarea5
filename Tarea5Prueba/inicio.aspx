<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="Tarea5Prueba.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página Principal</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
            border-style: ridge;
            border-color: #008080;
            background-color: #CCCCCC;
        }
        .auto-style3 {
            height: 24px;
            border-style: ridge;
            border-color: #008080;
            background-color: #CCCCCC;
        }
        .auto-style4 {
            height: 24px;
            width: 613px;
            border-style: ridge;
            border-color: #008080;
            background-color: #CCCCCC;
        }
        .auto-style5 {
            border-style: ridge;
            border-color: #008080;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>PRUEBA DE INTELIGENCIA<br class="auto-style5" />
                        <br class="auto-style5" />
                        <asp:Image ID="Image1" runat="server" Height="198px" ImageUrl="~/Imagenes/final-exams.jpg" Width="354px" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <br class="auto-style5" />
                        <br class="auto-style5" />
                        Si desea realizar una prueba de inteligencia, complete los datos a continuación para hacer su registro.<br class="auto-style5" />
                        <br class="auto-style5" />
                        <br class="auto-style5" />
                        Cédula:<br class="auto-style5" />
                        <asp:TextBox ID="Tcedula" runat="server"></asp:TextBox>
                        <br class="auto-style5" />
                        <br class="auto-style5" />
                        Nombre:<br class="auto-style5" />
                        <asp:TextBox ID="Tnombre" runat="server"></asp:TextBox>
                        <br class="auto-style5" />
                        <br class="auto-style5" />
                        Apellido:<br class="auto-style5" />
                        <asp:TextBox ID="Tapellido" runat="server"></asp:TextBox>
                        <br class="auto-style5" />
                        <br class="auto-style5" />
                        Género:
                        <asp:RadioButton ID="Rm" runat="server" Text="Masculino" />
&nbsp;&nbsp;
                        <asp:RadioButton ID="Rf" runat="server" Text="Femenino" />
                        <br class="auto-style5" />
                        <br class="auto-style5" />
                        <asp:Button ID="B1siguiente" runat="server" OnClick="B1siguiente_Click" Text="Iniciar Prueba" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Breportes" runat="server" OnClick="Breportes_Click" Text="Reportes" />
                    </td>
                    <td class="auto-style3">
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
