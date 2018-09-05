package br.com.fiap.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.jpa.dao.ProdutoDAO;
import br.com.fiap.jpa.exception.KeyNotFoundException;
import br.com.fiap.jpa.model.Produto;

@Controller
@RequestMapping("produto")
public class ProdutoController {
	
	@Autowired
	private ProdutoDAO dao;
	
	@GetMapping("listar")
	public ModelAndView listar() {
		return new ModelAndView("produto/lista")
				//Envia a lista de produtos para a tela
				.addObject("produtos", dao.listar());
	}
	
	@GetMapping("cadastrar")
	public String abrirForm() {
		return "produto/form";
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public ModelAndView processarForm(Produto produto, RedirectAttributes redirectAttributes) {
		dao.inserir(produto);
		
		redirectAttributes.addFlashAttribute("msg", "Produto cadastrado!");
		
		return new ModelAndView("redirect:/produto/cadastrar");
	}
	
	@GetMapping("editar/{id}")
	public ModelAndView editarForm(@PathVariable("id") int id) {
		ModelAndView modelAndView = new ModelAndView("produto/editar");
		
		modelAndView.addObject("produto", dao.pesquisar(id));
		
		return modelAndView;
	}
	
	@Transactional
	@PostMapping("editar")
	public ModelAndView editar(Produto produto, RedirectAttributes redirectAttributes) {
		dao.atualizar(produto);
		
		redirectAttributes.addFlashAttribute("msg", "Produto alterado com sucesso.");
		
		return new ModelAndView("redirect:/produto/editar/" + produto.getCodigo());
	}
	
	@Transactional
	@PostMapping("apagar")
	public String apagar(String id, RedirectAttributes attributes) {
		
		try {
			dao.remover(Integer.parseInt(id));
			attributes.addFlashAttribute("msg", "Produto removido");
		} catch (NumberFormatException e) {
			attributes.addFlashAttribute("msg", "Erro ao formatar o codigo do produto.");
			e.printStackTrace();
		} catch (KeyNotFoundException e) {
			attributes.addFlashAttribute("msg", "Nenhum produto encontrado na base de dados com o código " + id);
			e.printStackTrace();
		}
		
		return "redirect:/produto/listar";
	}
	
	@GetMapping("buscar")
	public ModelAndView buscar(String nomeProduto) {
		List<Produto> produtos = dao.buscarPorNome(nomeProduto);
		
		return new ModelAndView("produto/lista").addObject("produtos", produtos);
	}
	
}