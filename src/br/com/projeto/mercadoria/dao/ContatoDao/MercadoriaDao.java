package br.com.projeto.mercadoria.dao.ContatoDao;

import br.com.projeto.mercadoria.produto.Mercadoria;

public class MercadoriaDao {
		
		private static final int Lista = 0;

		public int getLista() {
			return Lista;
		}
		
	    private static Connection connection;           
	    private static PreparedStatement pstmt = null;

	    public MercadoriaDao () throws SQLException {  
	        connection = new connection.getConnection(); 
	    }
	    
	    
	    public static boolean insere(Mercadoria mercadoriabean) {
	    	  
	        try {  
	  
	            pstmt = connection.prepareStatement("insert into produtos (cod_mercadoria, nome_mercadoria, tipo_mercadoria, quantidade, preco, tipo_negocio, data) Values(?,?,?,?,?,?,?,?)");
	  
	            pstmt.setInt(1, mercadoriabean.getCod_mercadoria());  
	            pstmt.setString(2, mercadoriabean.getNome_mercadoria());  
	            pstmt.setString(3, mercadoriabean.getTipo_mercadoria());  
	            pstmt.setFloat(4, mercadoriabean.getQuantidade());  
	            pstmt.setInt(5, mercadoriabean.getPreco());  
	            pstmt.setString(6, mercadoriabean.getTipo_negocio());  
	            pstmt.setDate(7, new Date( mercadoriabean.getData().getTimeInMillis()));  
	            pstmt.executeUpdate();  
	            
	            
	            
	            pstmt.close();  
	            return true;  
	            
	        } catch (Exception e) {  
	            e.printStackTrace();  
	            System.out.println(e.toString());  
	            return false;  
	        }  
	        
	    }
	
}
