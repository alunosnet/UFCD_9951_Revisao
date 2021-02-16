<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listar.aspx.cs" Inherits="_9951_Revisao.listar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="index.aspx">Voltar</a>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlContactos" DataKeyNames="id_contacto">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("id_contacto") %>' runat="server" ID="id_contactoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("telefone") %>' runat="server" ID="telefoneLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("genero") %>' runat="server" ID="generoLabel" /></td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("id_contacto") %>' runat="server" ID="id_contactoLabel1" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("telefone") %>' runat="server" ID="telefoneTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("genero") %>' runat="server" ID="generoTextBox" /></td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("telefone") %>' runat="server" ID="telefoneTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("genero") %>' runat="server" ID="generoTextBox" /></td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("id_contacto") %>' runat="server" ID="id_contactoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("telefone") %>' runat="server" ID="telefoneLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("genero") %>' runat="server" ID="generoLabel" /></td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                                    <tr runat="server" style="">
                                        <th runat="server">id_contacto</th>
                                        <th runat="server">nome</th>
                                        <th runat="server">telefone</th>
                                        <th runat="server">email</th>
                                        <th runat="server">data_nascimento</th>
                                        <th runat="server">genero</th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="">
                                <asp:DataPager runat="server" ID="DataPager1">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("id_contacto") %>' runat="server" ID="id_contactoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("telefone") %>' runat="server" ID="telefoneLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("genero") %>' runat="server" ID="generoLabel" /></td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource runat="server" ID="SqlContactos" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [contactos] ORDER BY [nome]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
