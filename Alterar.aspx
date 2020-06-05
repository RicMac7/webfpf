<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alterar.aspx.cs" Inherits="ex08teste.Alterar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
        

<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Federação Portuguesa de Futebol</title>
    <link rel="stylesheet" href="css/components.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/responsee.css">
    <link rel="stylesheet" href="owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="owl-carousel/owl.theme.css">
    <link rel="stylesheet" href="css/lightcase.css">
    <!-- CUSTOM STYLE -->      
    <link rel="stylesheet" href="css/template-style.css">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,400,600,900&subset=latin-ext" rel="stylesheet"> 
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>  
    <style type="text/css">
        .auto-style1 {
            margin-left: 293;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="line text-center">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Id:"></asp:Label>
&nbsp;<asp:TextBox ID="txtid" runat="server" Width="75px"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Procurar" value="ignore" formnovalidate=""/>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Associação de Futebol:"></asp:Label>
            <asp:RadioButtonList ID="Rdassociacao" runat="server">
                <asp:ListItem>Futebol</asp:ListItem>
                <asp:ListItem>Futsal</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Sexo:"></asp:Label>
            <asp:RadioButtonList ID="Rdsexo" runat="server">
                <asp:ListItem>Masculino</asp:ListItem>
                <asp:ListItem>Feminino</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Jogador Amador Boletim de:"></asp:Label>
            <asp:RadioButtonList ID="Rdboletim" runat="server">
                <asp:ListItem>Primeira Inscrição</asp:ListItem>
                <asp:ListItem>Revalidação de Inscrição</asp:ListItem>
                <asp:ListItem>Inscrição com Transferencia nacional</asp:ListItem>
                <asp:ListItem>Inscrição com Transferencia internacional</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Nome:"></asp:Label>
            &nbsp;<asp:TextBox ID="Txtnome" runat="server" MaxLength="200" Width="540px" required=""></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Data de Nascimento:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="Txtdata0" runat="server" MaxLength="10" Width="164px" AutoPostBack="True" ReadOnly="True" required=""></asp:TextBox>
            <br />
            <asp:Label ID="Label16" runat="server" Text="Alterar Data de Nascimento:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Txtdata" runat="server" MaxLength="10" Width="164px" TextMode="Date" OnTextChanged="Txtdata_TextChanged" AutoPostBack="True" ></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label12" runat="server" Text="Doc. de Identificação(NIC,PAS,AR,CR,TR):"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtdoc" runat="server" MaxLength="97" Width="149px" required=""></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="País de Nascimento:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtpaisnasc" runat="server" MaxLength="100" Width="181px" required=""></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Nacionalidade:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtnacionalidade" runat="server" MaxLength="100" Width="181px" required=""></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Email:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtemail" runat="server" MaxLength="100" Width="297px" required=""></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Telefone:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txttelefone" runat="server" MaxLength="20" TextMode="Number" Width="156px" required=""></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" Text="Estatuto perante a FPF:"></asp:Label>
            <asp:RadioButtonList ID="Rdestatuto" runat="server">
                <asp:ListItem>Portugues</asp:ListItem>
                <asp:ListItem>União Europeia</asp:ListItem>
                <asp:ListItem>Estrangeiro</asp:ListItem>
                <asp:ListItem>Estatuto Geral de Igualdade</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="Label15" runat="server" Text="Categoria:"></asp:Label>
            <asp:RadioButtonList ID="Rdcategoria" runat="server">
                <asp:ListItem>Petiz</asp:ListItem>
                <asp:ListItem>Traquina</asp:ListItem>
                <asp:ListItem>Benjamim</asp:ListItem>
                <asp:ListItem>Júnior D</asp:ListItem>
                <asp:ListItem>Júnior C</asp:ListItem>
                <asp:ListItem>Júnior B</asp:ListItem>
                <asp:ListItem>Júnior A</asp:ListItem>
                <asp:ListItem>Sénior</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="Label13" runat="server" Text="Clube:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtclube" runat="server" MaxLength="150" Width="282px" required=""></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label14" runat="server" Text="Autorizo que a FPF possa processar os meus dados para o efeito de envio de comunicações personalizadas, sobre todas as suas atividades, tanto por meios electrónicos como telefónicos:"></asp:Label>
            <asp:RadioButtonList ID="Rdautorizacao" runat="server">
                <asp:ListItem>Sim</asp:ListItem>
                <asp:ListItem>Não</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Alterar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Cancelar" value="ignore" formnovalidate=""/>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
