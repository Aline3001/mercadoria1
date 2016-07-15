package br.com.projeto.mercadoria.dao.ContatoDao;

public interface CadastroDao {
	
	
	
	/**
	 * Realiza Conexao
	 * 
	 * @return Connection
	 */
	public Connection getConexaoMySQL();
	
	
	/**
	 * Verifica Status Conexao
	 * 
	 * @return Boolean
	 */
	public boolean isConnected();
	
	
	/**
	 * Fecha Conexao
	 * 
	 * @return Boolean
	 */
	public boolean FecharConexao();
	
	
	/**
	 * Reinicia Conexao
	 * 
	 * @return Connection
	 */
	public Connection ReiniciarConexao();
}
