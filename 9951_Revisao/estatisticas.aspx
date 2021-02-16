<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="estatisticas.aspx.cs" Inherits="_9951_Revisao.estatisticas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="index.aspx">Voltar</a>
            <!-- Todos - Contactos por género-->
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="N&#186; de contactos" HeaderText="N&#186; de contactos" ReadOnly="True" SortExpression="N&#186; de contactos"></asp:BoundField>
                    <asp:BoundField DataField="genero" HeaderText="genero" SortExpression="genero"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <!-- Sala 1 - Nome do contacto mais velho-->
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
                    <asp:BoundField DataField="data_nascimento" HeaderText="data_nascimento" SortExpression="data_nascimento"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <!-- Sala 2 - Quantos contactos têm email-->
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="N&#186; de contactos com email" HeaderText="N&#186; de contactos com email" ReadOnly="True" SortExpression="N&#186; de contactos com email"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <!-- Sala 3 - Lista de contactos e respetiva idade-->
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
                    <asp:BoundField DataField="Idade" HeaderText="Idade" ReadOnly="True" SortExpression="Idade"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <!-- Sala 4 - A média de idades dos contactos por género-->
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5">
                <Columns>
                    <asp:BoundField DataField="genero" HeaderText="genero" SortExpression="genero"></asp:BoundField>
                    <asp:BoundField DataField="Idade" HeaderText="Idade" ReadOnly="True" SortExpression="Idade"></asp:BoundField>
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT genero, AVG(DATEDIFF(year, data_nascimento, GETDATE())) AS Idade FROM contactos GROUP BY genero"></asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT nome, DATEDIFF(year, data_nascimento, GETDATE()) AS Idade FROM contactos"></asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT COUNT(*) AS [Nº de contactos com email] FROM contactos WHERE (email IS NOT NULL)"></asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT TOP (1) nome, data_nascimento FROM contactos ORDER BY data_nascimento"></asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT COUNT(*) AS [Nº de contactos], genero FROM contactos GROUP BY genero"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
