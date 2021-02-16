<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gerir.aspx.cs" Inherits="_9951_Revisao.gerir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="index.aspx">Voltar</a>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_contacto" DataSourceID="SqlContactos">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    <asp:BoundField DataField="id_contacto" HeaderText="id_contacto" ReadOnly="True" InsertVisible="False" SortExpression="id_contacto"></asp:BoundField>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
                    <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone"></asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                    <asp:BoundField DataField="data_nascimento" HeaderText="data_nascimento" SortExpression="data_nascimento"></asp:BoundField>
                    <asp:BoundField DataField="genero" HeaderText="genero" SortExpression="genero"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlContactos" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM contactos WHERE (id_contacto = @id_contacto)" SelectCommand="SELECT * FROM [contactos]" UpdateCommand="UPDATE contactos SET nome = @nome, telefone = @telefone, email = @email, data_nascimento = @data_nascimento, genero = @genero WHERE (id_contacto = @id_contacto)">
                <DeleteParameters>
                    <asp:Parameter Name="id_contacto"></asp:Parameter>
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nome"></asp:Parameter>
                    <asp:Parameter Name="telefone"></asp:Parameter>
                    <asp:Parameter Name="email"></asp:Parameter>
                    <asp:Parameter Name="data_nascimento" DbType="Date"></asp:Parameter>
                    <asp:Parameter Name="genero"></asp:Parameter>
                    <asp:Parameter Name="id_contacto"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
