<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page import="java.util.*,
br.com.projeto.mercadoria.dao.ContatoDao.*,
br.com.projeto.mercadoria.produto.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<% 
	MercadoriaDao dao = new MercadoriaDao();
	List<Mercadoria> mercadorias = dao.Lista();
	
	for (Mercadoria mercadoria : mercadorias){
	%>
	<tr> 
	<td><%=mercadoria.getCod_mercadoria() %></td>
	<td><%=mercadoria.getNome_mercadoria() %></td>
	<td><%=mercadoria.getTipo_mercadoria() %></td>
	<td><%=mercadoria.getQuantidade() %></td>
	<td><%=mercadoria.getTipo_negocio() %></td>
	<td><%=mercadoria.getPreco() %></td>
	<td><%=mercadoria.getData() %></td>
	</tr>
	<%
	}
	%>
	</table>
</body>
</html>