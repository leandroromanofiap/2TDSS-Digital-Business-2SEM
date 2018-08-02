package br.com.fiap.spring.model;

public class Pessoa {

	private String nome;
	private int idade;
	private boolean ehAposentado;
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public int getIdade() {
		return idade;
	}
	
	public void setIdade(int idade) {
		this.idade = idade;
	}
	
	public boolean isEhAposentado() {
		return ehAposentado;
	}
	
	public void setEhAposentado(boolean ehAposentado) {
		this.ehAposentado = ehAposentado;
	}

	public Pessoa() {
		super();
	}

	public Pessoa(String nome, int idade, boolean ehAposentado) {
		super();
		this.nome = nome;
		this.idade = idade;
		this.ehAposentado = ehAposentado;
	}
	
	@Override
	public String toString() {
		return "Nome: " + nome + " - Idade: " + idade + " - É aposentado: " + ehAposentado;
	}
	
}
