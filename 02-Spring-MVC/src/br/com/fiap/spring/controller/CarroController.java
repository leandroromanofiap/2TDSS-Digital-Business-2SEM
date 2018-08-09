package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Carro;

@Controller
@RequestMapping("/carro")
public class CarroController {

	@GetMapping("cadastrar")
	public String abrirFormCadastro() {
		return "carro/form";
	}
	
	@PostMapping("cadastrar")
	public ModelAndView processarCadastroCarro(Carro carro) {
		ModelAndView modelAndView = new ModelAndView("carro/sucesso");
		
		modelAndView.addObject("carro", carro);
		
		return modelAndView;
	}
	
}
