package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.fiap.spring.model.Pessoa;

@Controller
@RequestMapping("/pessoa")
public class PessoaController {

	@GetMapping("cadastro")
	public String cadastro() {
		return "pessoa/cadastro";
	}
	
	@PostMapping("cadastro")
	public String cadastro(Pessoa pessoa) {
		System.out.println(pessoa.toString());
		return "pessoa/sucesso";
	}
	
}
