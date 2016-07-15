package br.com.projeto.mercadoria.produto;

public class Mercadoria {

	private int cod_mercadoria;  
    private String nome_mercadoria;  
    private String tipo_mercadoria;  
    private float quantidade;  
    private int preco;  
    private String tipo_negocio;  
    private Calendar data;
    
	public int getCod_mercadoria() {
		return cod_mercadoria;
	}

	public void setCod_mercadoria(int cod_mercadoria) {
		this.cod_mercadoria = cod_mercadoria;
	}

	public String getNome_mercadoria() {
		return nome_mercadoria;
	}

	public void setNome_mercadoria(String nome_mercadoria) {
		this.nome_mercadoria = nome_mercadoria;
	}

	public String getTipo_mercadoria() {
		return tipo_mercadoria;
	}

	public void setTipo_mercadoria(String tipo_mercadoria) {
		this.tipo_mercadoria = tipo_mercadoria;
	}

	public float getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(float quantidade) {
		this.quantidade = quantidade;
	}

	public int getPreco() {
		return preco;
	}

	public void setPreco(int preco) {
		this.preco = preco;
	}

	public String getTipo_negocio() {
		return tipo_negocio;
	}

	public void setTipo_negocio(String tipo_negocio) {
		this.tipo_negocio = tipo_negocio;
	}

	public Calendar getData() {
		return data;
	}

	public void setData(Calendar data) {
		this.data = data;
	}
	public String getLista(){
		return Lista;
	}
}  

