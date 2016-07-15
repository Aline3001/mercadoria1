<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="StyleSheet" type="text/css" href="css/estilo.css" >
<title>Cadastro</title>
</head>
<body>
<style>
body, td, a:link, a:visited {
font-family: Verdana;
font-size: 12px;
color: #000000;
text-decoration: none;
}
a:hover{
color: #FF0000;
}
input {
font-family: Verdana, Arial, Helvetica, sans-serif;
font-size: 12px;
background-color: #FFFFFF;
border: 1px solid #000000;
}
</style>

<!-- JavaScript -->
    <script language="javascript" type="text/javascript">

        function validar() {
            var codigodamercadoria = form1.codigodamercadoria.value;
            var nomedamercadoria = form1.nomedamercadoria.value;
            var tipodamercadoria = form1.tipodamercadoria.value;
            var quantidade = form1.quantidade.value;
            var precodamercadoria = form1.precodamercadoria.value;
            var data = form1.data.value;

            if (codigodamercadoria == "") {
                alert('Preencha o campo login.');
                form1.codigodamercadoria.focus();
                return false;
            }
            else if(nomedamercadoria =="")
            {
                alert('Preencha o campo Nome da Mercadoria.');
                form1.nomedamercadoria.focus();
                return false;
            }
            else if(tipodamercadoria =="")
            {
                alert('Preencha o campo Tipo da Mercadoria.');
                form1.tipodamercadoria.focus();
                return false;
        }
            else if(quantidade =="")
            {
                alert('Preencha o campo Quantidade.');
                form1.quantidade.focus();
                return false;
            }
            else if(precodamercadoria =="")
            {
                alert('Preencha o campo Preco da Mercadoria.');
                form1.precodamercadoria.focus();
                return false;
            }
            else if(data =="")
            {
                alert('Preencha o campo Data.');
                form1.data.focus();
                return false;
            }

    </script>
 <%@include file="Bemvindo.jsp"%>
<%@include file="cabecalho.jsp"%>
<h1><center>Tela de Cadastro</h1></center>
<form action="listadecontatos.jsp">
<form name="form1" method="post" action="teste.jsp">
<table width="700" border="1" align="center" cellpadding="5" cellspacing="5">
<tr>
<td width="100">Código da Mercadoria:</td>
<td width="300"><input name="codigodamercadoria" type="text" size="100" id="id"></td>
</tr>
<tr>
<td width="100">Nome da Mercadoria:</td>
<td width="300"><input name="nomedamercadoria" type="text" size="100" id="nome"></td>
</tr>
<tr>
<td width="100">Tipo da Mercadoria:</td>
<td width="300"><input name="tipodamercadoria" type="text" size="100" id="tipo"></td>
</tr>
<tr>
<td width="100">Quantidade:</td>
<td width="300"><input name="quantidade" type="text" size="70" id="qtd"></td>
</tr>
<tr>
<td width="100">Tipo de Negócio:</td>
<td width="300">
<select name = "funcoes" size = 1>
<option value="1">Compra</option>
<option value="2">Venda</option><br/><br/>
</td><br/>
</tr>
<tr>
<td width="55">Preço da Mercadoria:</td>
<td width="300"><input name="preçodamercadoria" type="text" size="70" id="preco"></td>
</tr>
<tr>
<td width="100">Data:</td>
<td width="300"><input name="data" type="date" id="data"></td>
</tr>
<tr><br/>
<td colspan="3"><div align="center">
<input type="submit" name="Submit" value="Enviar" onclick="return validar();"/>
<input type="reset" name="Submit" value="Limpar"/>
<input type="reset" name="Submit" value="Cancelar"/>
</tr></form>
<br/>
</table>
</form>
</form>
</body>
<br/>
<%@include file="Rodape.jsp"%>
</html>
