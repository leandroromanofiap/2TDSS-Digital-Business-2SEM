package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/contato")
public class ContatoController {

	@GetMapping("enviar")
	public String contato() {
		return "contato/contato";
	}
	
	@PostMapping("enviar")
	public String processarContato(String nome, String mensagem) {
		System.out.println(nome + " - " + mensagem);
		return "contato/sucesso";
	}
	
}

