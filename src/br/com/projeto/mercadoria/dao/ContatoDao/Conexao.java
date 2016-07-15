package br.com.projeto.mercadoria.dao.ContatoDao;

public class Conexao implements CadastroDao{
	
	private boolean status;
	
	
	
	public Connection getConexaoMySQL() {
		
		Connection connection = null;
		
		String mydatabase = "projeto";
		String serverName = "localhost:3306";
		String url = "jdbc:mysql://" + serverName + "/" + mydatabase;
		String username = "root";
		String password = "root";
		String driverName = "com.mysql.jdbc.Driver";
		
		try {
				
			Class.forName(driverName);
			
			connection = (Connection) DriverManager.getConnection(url, username, password);
			
			if (connection != null) {
				
				status = true;
				System.out.println("Status: Conectado com sucesso!");
				
			}else{
				
				status = false;
				System.out.println("Status: Conexão Fechada!");
			}
			
			
		} catch (ClassNotFoundException e) {
				
			System.out.println("O driver especificado nao foi encontrado."); 
			
		} catch (SQLException e) {
			
			System.out.println("Nao foi possivel conectar ao Banco de Dados.");
		}
		
		return connection; 
	}
	
	
	
	public boolean isConnected() { 
		
		return status; 
	}
	
	
	
	public boolean FecharConexao() {
		
		try {
			
			getConexaoMySQL().close();
			
			return true;
			
		} catch (SQLException e) {
			
			return false;
		}
	}
	
	
	
	public Connection ReiniciarConexao() {
	
		FecharConexao();
		
		return getConexaoMySQL();
	}
	
}