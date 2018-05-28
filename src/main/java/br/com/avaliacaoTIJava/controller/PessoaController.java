package br.com.avaliacaoTIJava.controller;



import javax.inject.Inject;

import br.com.avaliacaoTIJava.dao.PessoaDao;
import br.com.avaliacaoTIJava.model.Pessoa;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Result;
import static br.com.caelum.vraptor.view.Results.*;

@Controller
public class PessoaController {
	
	@Inject
    private Result result;
	@Inject
	PessoaDao dao;

	
	public void pessoaNovo(){}
	public void pessoaApagar(){}
	public void index(){}
	public void pessoaBusca(){}
	public void pessoaBucaApagar(){}
	public void pessoaBucaEditar(){}
	//public void membroBusca_teste(){}
	
	public void pessoaSalvar(Pessoa pessoa){
		dao.salva(pessoa);
		result.include("msg", pessoa.getNome()+ " - cadastrado(a) com sucesso!");
		result.redirectTo(this).pessoaNovo();
	}
	
	public void pessoaResultado(String nome){
		result.include("nomeList", dao.busca(nome));
	}
	
	public void pessoaEditar(String cpf){
		result.include("nomeList", dao.buscaCpf(cpf));
	}
	
	public void deletar(String cpf){
		dao.apagar(cpf);
	}
	
	public void AlterarPessoa(Pessoa pessoa){
		dao.alterar(pessoa);
	}
	
	public void pessoaResultadoApagar(String cpf){
		result.include("nomeListApagar", dao.buscaCpf(cpf));
	}
	
	@Get("/membros/busca.json")
	public void buscaJson(String nome) {
	result.use(json()).withoutRoot().from(dao.busca(nome)).exclude("cpf", "dataNascimento").serialize();
	}

}
