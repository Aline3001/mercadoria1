<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	
	<%@ page import="java.util.*,
	br.com.projeto.mercadoria.dao.ContatoDao.*,
	br.com.projeto.mercadoria.produto.*" %>
</head>
<body>
<table>
<%
		String codigoDaMercadoria=request.getParameter("codigoDaMercadoria");
		String codigoDaMercadoria_form = request.getParameter("id");
		String nomeDaMercadoria=request.getParameter("nomeDaMercadoria");
		String nomeDaMercadoria_form = request.getParameter("nome");
		String tipoDaMercadoria=request.getParameter("tipoDaMercadoria");
		String tipoDaMercadoria_form = request.getParameter("tipo");
		String quantidade=request.getParameter("quantidade");
		String quantidade_form = request.getParameter("qtd");
		String tipoDeNegocio=request.getParameter("tipoDeNegocio");
		String tipoDeNegocio_form = request.getParameter("tipoDeNegocio");
		String precoDaMercadoria=request.getParameter("precoDaMercadoria");
		String precoDaMercadoria_form = request.getParameter("preco");
		String data=request.getParameter("data");
		String data_form = request.getParameter("data");
		
		
		
		Mercadoria mercadoria = new Mercadoria();
		mercadoria.setCod_mercadoria(1);
		mercadoria.setData(Calendar.getInstance());
		mercadoria.setNome_mercadoria("Teste");
		mercadoria.setPreco(10);
		mercadoria.setQuantidade(100);
		mercadoria.setTipo_mercadoria("aaa");
		mercadoria.setTipo_negocio("negocio");
		
		
		MercadoriaDao dao = new MercadoriaDao();
		dao.insere(mercadoria);
		
	    RequestDispatcher rd = request.getRequestDispatcher("lista.jsp");
	    rd.forward(request, response);
%>

<br /> <br />Desenvolvimento: Aline Ferreira
</table>
</body>

</html>