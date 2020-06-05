<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registo.aspx.cs" Inherits="ex08teste.Registo" %>

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
    </head>
<body class="size-1140">
    <form id="form1" runat="server">
        <div class="line text-center">
            <asp:Label ID="Label1" runat="server" Text="Associação de Futebol:"></asp:Label>
            <asp:RadioButtonList ID="Rdassociacao" runat="server" >
                <asp:ListItem>Futebol</asp:ListItem>
                <asp:ListItem>Futsal</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Sexo:"></asp:Label>
            <asp:RadioButtonList ID="Rdsexo" runat="server" >
                <asp:ListItem>Masculino</asp:ListItem>
                <asp:ListItem>Feminino</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Jogador Amador Boletim de:"></asp:Label>
            <asp:RadioButtonList ID="Rdboletim" runat="server" >
                <asp:ListItem>Primeira Inscrição</asp:ListItem>
                <asp:ListItem>Revalidação de Inscrição</asp:ListItem>
                <asp:ListItem>Inscrição com Transferencia nacional</asp:ListItem>
                <asp:ListItem>Inscrição com Transferencia internacional</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Nome:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="Txtnome" runat="server" MaxLength="200" Width="540px" required=""></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Data de Nascimento:" ></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtdata" runat="server" MaxLength="200" Width="169px" TextMode="Date" required=""></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Doc. de Identificação(NIC,PAS,AR,CR,TR):"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtdocletras" runat="server" MaxLength="3" Width="64px" required=""></asp:TextBox>
            <asp:TextBox ID="Txtdocnume" runat="server" MaxLength="97" TextMode="Number" Width="149px" required=""></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="País de Nascimento:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtpaisnasc" runat="server" MaxLength="100" Width="181px" required=""></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Nacionalidade:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtnacionalidade" runat="server" MaxLength="100" Width="181px" required=""></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Email:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtemail" runat="server" MaxLength="100" Width="297px" required=""></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Telefone:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txttelefone" runat="server" MaxLength="20" TextMode="Number" Width="156px" required=""></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" Text="Estatuto perante a FPF:"></asp:Label>
            <asp:RadioButtonList ID="Rdestatuto" runat="server" >
                <asp:ListItem>Portugues</asp:ListItem>
                <asp:ListItem>União Europeia</asp:ListItem>
                <asp:ListItem>Estrangeiro</asp:ListItem>
                <asp:ListItem>Estatuto Geral de Igualdade</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="Label12" runat="server" Text="Categoria:"></asp:Label>
            <asp:RadioButtonList ID="Rdcategoria" runat="server" >
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtclube" runat="server" MaxLength="150" Width="282px" required=""></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label14" runat="server" Text="Autorizo que a FPF possa processar os meus dados para o efeito de envio de comunicações personalizadas, sobre todas as suas atividades, tanto por meios electrónicos como telefónicos:"></asp:Label>
            <asp:RadioButtonList ID="Rdautorizacao" runat="server" >
                <asp:ListItem>Sim</asp:ListItem>
                <asp:ListItem>Não</asp:ListItem>
            </asp:RadioButtonList>           
            <br />
            <br />
            <br />
            <asp:Button ID="Btregistar" runat="server" OnClick="Btregistar_Click" Text="Registar" style="height: 26px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Btcancelar" runat="server" OnClick="Btcancelar_Click" Text="Cancelar" value="ignore" formnovalidate=""/>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
    <script type="text/javascript" src="js/responsee.js"></script>
    <script type="text/javascript" src="js/jquery.events.touch.js"></script>
    <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
    <script type="text/javascript" src="js/template-scripts.js"></script> 
</body>
</html>
