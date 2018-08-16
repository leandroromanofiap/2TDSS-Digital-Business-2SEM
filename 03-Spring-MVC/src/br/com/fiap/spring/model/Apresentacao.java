package br.com.fiap.spring.model;

public class Apresentacao {

	private int id;
	
	private String nome;
	
	private int duracao;
	
	private String descricao;
	
	private boolean apresentado;

	public Apresentacao() {
		super();
	}

	public Apresentacao(int id, String nome, int duracao, String descricao, boolean apresentado) {
		super();
		this.id = id;
		this.nome = nome;
		this.duracao = duracao;
		this.descricao = descricao;
		this.apresentado = apresentado;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getDuracao() {
		return duracao;
	}

	public void setDuracao(int duracao) {
		this.duracao = duracao;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public boolean isApresentado() {
		return apresentado;
	}

	public void setApresentado(boolean apresentado) {
		this.apresentado = apresentado;
	}
	
}
