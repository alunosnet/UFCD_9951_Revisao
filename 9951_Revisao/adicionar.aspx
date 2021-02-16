<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar.aspx.cs" Inherits="_9951_Revisao.adicionar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="index.aspx">Voltar</a>
            <asp:FormView DefaultMode="Insert" ID="FormView1" runat="server" DataSourceID="SqlContactos" DataKeyNames="id_contacto">
                <EditItemTemplate>
                    id_contacto:
                    <asp:Label Text='<%# Eval("id_contacto") %>' runat="server" ID="id_contactoLabel1" /><br />
                    nome:
                    <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    telefone:
                    <asp:TextBox Text='<%# Bind("telefone") %>' runat="server" ID="telefoneTextBox" /><br />
                    email:
                    <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
                    data_nascimento:
                    <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
                    genero:
                    <asp:TextBox Text='<%# Bind("genero") %>' runat="server" ID="generoTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    nome:
                    <asp:TextBox MaxLength="50" Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    telefone:
                    <asp:TextBox MaxLength="20" Text='<%# Bind("telefone") %>' runat="server" ID="telefoneTextBox" /><br />
                    email:
                    <asp:TextBox MaxLength="100" TextMode="Email" Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
                    data_nascimento:
                    <asp:TextBox TextMode="Date" Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
                    genero:
                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("genero") %>'>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id_contacto:
                    <asp:Label Text='<%# Eval("id_contacto") %>' runat="server" ID="id_contactoLabel" /><br />
                    nome:
                    <asp:Label Text='<%# Bind("nome") %>' runat="server" ID="nomeLabel" /><br />
                    telefone:
                    <asp:Label Text='<%# Bind("telefone") %>' runat="server" ID="telefoneLabel" /><br />
                    email:
                    <asp:Label Text='<%# Bind("email") %>' runat="server" ID="emailLabel" /><br />
                    data_nascimento:
                    <asp:Label Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /><br />
                    genero:
                    <asp:Label Text='<%# Bind("genero") %>' runat="server" ID="generoLabel" /><br />
                    <asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>

            <asp:SqlDataSource runat="server" ID="SqlContactos" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' InsertCommand="INSERT INTO contactos(nome, telefone, email, data_nascimento, genero) VALUES (@nome, @telefone, @email, @data_nascimento, @genero)" SelectCommand="SELECT * FROM [contactos]">
                <InsertParameters>
                    <asp:Parameter Name="nome"></asp:Parameter>
                    <asp:Parameter Name="telefone"></asp:Parameter>
                    <asp:Parameter Name="email"></asp:Parameter>
                    <asp:Parameter Name="data_nascimento" DbType="Date"></asp:Parameter>
                    <asp:Parameter Name="genero"></asp:Parameter>
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
