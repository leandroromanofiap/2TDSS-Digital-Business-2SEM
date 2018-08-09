package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Cliente;

@Controller
@RequestMapping("/cliente")
public class ClienteController {

	@GetMapping("cadastrar")
	public String abrirCadastro() {
		return "cliente/form";
	}
	
	@PostMapping("cadastrar")
	public ModelAndView cadastrar(Cliente cliente) {
		ModelAndView modelAndView = new ModelAndView("cliente/sucesso");
		
		modelAndView.addObject("cliente", cliente);
		modelAndView.addObject("msg", "Cliente cadastrado com sucesso!");
		
		return modelAndView;
	}
}
