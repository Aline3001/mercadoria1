<%
String login = "root"; // Login
String senha = "1234"; // Senha
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Sistema de Login :: JSP</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
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
</head> <body>
<%
	String login_form = request.getParameter("login"); 
	String senha_form = request.getParameter("senha"); 
	
	if(login_form.equals(login) && senha_form.equals(senha)){ 
		
		out.println("Logado com sucesso."); 
		response.sendRedirect("Java.jsp");
		session.putValue("loginUsuario", login); 
		session.putValue("senhaUsuario", senha); 
		out.println("<script>document.location.href='acesso.jsp';</script>"); 
		
	} else { //Se estiverem incorretos...
		
		out.println("Login ou senha inválidos. <a href= javascript:history.back();self.location.reload()>Voltar</a>");
		//Exibe na tela e pede para voltar
	}
%>
<br /> <br /> <br />Desenvolvimento: Aline Ferreira</a>
</body>
</html>


