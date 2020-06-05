<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listagem.aspx.cs" Inherits="ex08teste.Listagem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Associacao" HeaderText="Associacao" SortExpression="Associacao" />
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                    <asp:BoundField DataField="Tipoinscricao" HeaderText="Tipoinscricao" SortExpression="Tipoinscricao" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" />
                    <asp:BoundField DataField="Docid" HeaderText="Docid" SortExpression="Docid" />
                    <asp:BoundField DataField="Pais" HeaderText="Pais" SortExpression="Pais" />
                    <asp:BoundField DataField="Nacionalidade" HeaderText="Nacionalidade" SortExpression="Nacionalidade" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone" />
                    <asp:BoundField DataField="Estatuto" HeaderText="Estatuto" SortExpression="Estatuto" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                    <asp:BoundField DataField="Clube" HeaderText="Clube" SortExpression="Clube" />
                    <asp:BoundField DataField="Notificacoes" HeaderText="Notificacoes" SortExpression="Notificacoes" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:bdfpfConnectionString1 %>" DeleteCommand="DELETE FROM [Amador] WHERE [Id] = @original_Id AND (([Associacao] = @original_Associacao) OR ([Associacao] IS NULL AND @original_Associacao IS NULL)) AND (([Sexo] = @original_Sexo) OR ([Sexo] IS NULL AND @original_Sexo IS NULL)) AND (([Tipoinscricao] = @original_Tipoinscricao) OR ([Tipoinscricao] IS NULL AND @original_Tipoinscricao IS NULL)) AND (([Nome] = @original_Nome) OR ([Nome] IS NULL AND @original_Nome IS NULL)) AND (([Data] = @original_Data) OR ([Data] IS NULL AND @original_Data IS NULL)) AND (([Docid] = @original_Docid) OR ([Docid] IS NULL AND @original_Docid IS NULL)) AND (([Pais] = @original_Pais) OR ([Pais] IS NULL AND @original_Pais IS NULL)) AND (([Nacionalidade] = @original_Nacionalidade) OR ([Nacionalidade] IS NULL AND @original_Nacionalidade IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Telefone] = @original_Telefone) OR ([Telefone] IS NULL AND @original_Telefone IS NULL)) AND (([Estatuto] = @original_Estatuto) OR ([Estatuto] IS NULL AND @original_Estatuto IS NULL)) AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([Clube] = @original_Clube) OR ([Clube] IS NULL AND @original_Clube IS NULL)) AND (([Notificacoes] = @original_Notificacoes) OR ([Notificacoes] IS NULL AND @original_Notificacoes IS NULL))" InsertCommand="INSERT INTO [Amador] ([Associacao], [Sexo], [Tipoinscricao], [Nome], [Data], [Docid], [Pais], [Nacionalidade], [Email], [Telefone], [Estatuto], [Categoria], [Clube], [Notificacoes]) VALUES (@Associacao, @Sexo, @Tipoinscricao, @Nome, @Data, @Docid, @Pais, @Nacionalidade, @Email, @Telefone, @Estatuto, @Categoria, @Clube, @Notificacoes)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Amador]" UpdateCommand="UPDATE [Amador] SET [Associacao] = @Associacao, [Sexo] = @Sexo, [Tipoinscricao] = @Tipoinscricao, [Nome] = @Nome, [Data] = @Data, [Docid] = @Docid, [Pais] = @Pais, [Nacionalidade] = @Nacionalidade, [Email] = @Email, [Telefone] = @Telefone, [Estatuto] = @Estatuto, [Categoria] = @Categoria, [Clube] = @Clube, [Notificacoes] = @Notificacoes WHERE [Id] = @original_Id AND (([Associacao] = @original_Associacao) OR ([Associacao] IS NULL AND @original_Associacao IS NULL)) AND (([Sexo] = @original_Sexo) OR ([Sexo] IS NULL AND @original_Sexo IS NULL)) AND (([Tipoinscricao] = @original_Tipoinscricao) OR ([Tipoinscricao] IS NULL AND @original_Tipoinscricao IS NULL)) AND (([Nome] = @original_Nome) OR ([Nome] IS NULL AND @original_Nome IS NULL)) AND (([Data] = @original_Data) OR ([Data] IS NULL AND @original_Data IS NULL)) AND (([Docid] = @original_Docid) OR ([Docid] IS NULL AND @original_Docid IS NULL)) AND (([Pais] = @original_Pais) OR ([Pais] IS NULL AND @original_Pais IS NULL)) AND (([Nacionalidade] = @original_Nacionalidade) OR ([Nacionalidade] IS NULL AND @original_Nacionalidade IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Telefone] = @original_Telefone) OR ([Telefone] IS NULL AND @original_Telefone IS NULL)) AND (([Estatuto] = @original_Estatuto) OR ([Estatuto] IS NULL AND @original_Estatuto IS NULL)) AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([Clube] = @original_Clube) OR ([Clube] IS NULL AND @original_Clube IS NULL)) AND (([Notificacoes] = @original_Notificacoes) OR ([Notificacoes] IS NULL AND @original_Notificacoes IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_Associacao" Type="String" />
                    <asp:Parameter Name="original_Sexo" Type="String" />
                    <asp:Parameter Name="original_Tipoinscricao" Type="String" />
                    <asp:Parameter Name="original_Nome" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_Data" />
                    <asp:Parameter Name="original_Docid" Type="String" />
                    <asp:Parameter Name="original_Pais" Type="String" />
                    <asp:Parameter Name="original_Nacionalidade" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Telefone" Type="Int32" />
                    <asp:Parameter Name="original_Estatuto" Type="String" />
                    <asp:Parameter Name="original_Categoria" Type="String" />
                    <asp:Parameter Name="original_Clube" Type="String" />
                    <asp:Parameter Name="original_Notificacoes" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Associacao" Type="String" />
                    <asp:Parameter Name="Sexo" Type="String" />
                    <asp:Parameter Name="Tipoinscricao" Type="String" />
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter DbType="Date" Name="Data" />
                    <asp:Parameter Name="Docid" Type="String" />
                    <asp:Parameter Name="Pais" Type="String" />
                    <asp:Parameter Name="Nacionalidade" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Telefone" Type="Int32" />
                    <asp:Parameter Name="Estatuto" Type="String" />
                    <asp:Parameter Name="Categoria" Type="String" />
                    <asp:Parameter Name="Clube" Type="String" />
                    <asp:Parameter Name="Notificacoes" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Associacao" Type="String" />
                    <asp:Parameter Name="Sexo" Type="String" />
                    <asp:Parameter Name="Tipoinscricao" Type="String" />
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter DbType="Date" Name="Data" />
                    <asp:Parameter Name="Docid" Type="String" />
                    <asp:Parameter Name="Pais" Type="String" />
                    <asp:Parameter Name="Nacionalidade" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Telefone" Type="Int32" />
                    <asp:Parameter Name="Estatuto" Type="String" />
                    <asp:Parameter Name="Categoria" Type="String" />
                    <asp:Parameter Name="Clube" Type="String" />
                    <asp:Parameter Name="Notificacoes" Type="String" />
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_Associacao" Type="String" />
                    <asp:Parameter Name="original_Sexo" Type="String" />
                    <asp:Parameter Name="original_Tipoinscricao" Type="String" />
                    <asp:Parameter Name="original_Nome" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_Data" />
                    <asp:Parameter Name="original_Docid" Type="String" />
                    <asp:Parameter Name="original_Pais" Type="String" />
                    <asp:Parameter Name="original_Nacionalidade" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Telefone" Type="Int32" />
                    <asp:Parameter Name="original_Estatuto" Type="String" />
                    <asp:Parameter Name="original_Categoria" Type="String" />
                    <asp:Parameter Name="original_Clube" Type="String" />
                    <asp:Parameter Name="original_Notificacoes" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Voltar" />
        </div>
    </form>
</body>
</html>
