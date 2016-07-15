package br.com.projeto.mercadoria.produto;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.projeto.mercadoria.dao.ContatoDao.Conexao;

public class ListaMercadoria extends HttpServlet{
	
	private Conexao conexao;
	private Connection connection;
	
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		super.service(request, response);
		
		connection = conexao.getConexaoMySQL();
		
	}
	
	
	public boolean insert(Mercadoria fornecedor){
		
		boolean statusTransacao = false;
		
		try{
			
			Connection con = (Connection) conexao.getConexaoMySQL();
			String nomeTabela = "testando";
			
			//MODO AUTO-INCREMENT
			String SQL = " INSERT INTO " + nomeTabela + "(NOME) " + " VALUES (?)";
			
			//MODO SEM AUTO-INCREMENT
//			String SQL = " INSERT INTO " + nomeTabela + "(ID, NOME) " + " VALUES (?, ?)";
			
        	PreparedStatement stmt = (PreparedStatement) con.prepareStatement(SQL);
        	
//        	inserirDadosBanco(stmt, fornecedor);
        	
        	stmt.executeUpdate();
        	stmt.close();
        	
        	statusTransacao = true;
        			
         	}catch(Exception e){
        		
         		e.printStackTrace();
        		statusTransacao = false;
        	}
		
		return statusTransacao;
	}
	
}