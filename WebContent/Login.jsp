<html>
<head>
    <title>Sistema de Login :: JSP</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <style>
        body, td, a:link, a:visited {
            font-family: Verdana;
            font-size: 15px;
            color: #000000;
            text-decoration: bold;
        }

        a:hover {
            color: #FF0000;
        }

        input {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 15px;
            background-color: #FFFFFF;
            border: 1px solid #000000;
        }
    </style>

    <!-- JavaScript -->
    <script language="javascript" type="text/javascript">

        alert("Para logar-se no sistema informe seu login e senha:");


        function validar() {
            var login = form1.login.value;
            var senha = form1.senha.value;

            if (login == "") {
                alert('Preencha o campo login.');
                form1.login.focus();
                return false;
            }
            else if(senha =="")
            {
                alert('Preencha o campo senha.');
                form1.senha.focus();
                return false;
            }
        }


    </script>



</head>
<body>
    <br /><br />
    <center>Tela Login</center><br /> <br />
    <form name="form1" method="post" action="acesso.jsp">
        <table width="300px" border="4" align="center" cellpadding="4" cellspacing="10">
            <tr>
                <td width="300">Login:</td>
                <td width="300"><input name="login" type="text" id="login"></td>
            </tr>
            <tr>
                <td height="18">Senha:</td>
                <td><input name="senha" type="password" id="senha"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <div align="center">
                        <input type="submit" name="Submit" value="Logar" onclick="return validar();"/>
                    </div>
                </td>
            </tr>
        </table>
    </form><br /> <br /> <br />Desenvolvimento: Aline Ferreira</a>
</body>
</html>