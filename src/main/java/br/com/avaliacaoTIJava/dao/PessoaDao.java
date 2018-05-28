package br.com.avaliacaoTIJava.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.avaliacaoTIJava.model.Pessoa;

public class PessoaDao {
	
	@Inject
	EntityManager em;
	
	public void salva(Pessoa pessoa){
		em.persist(pessoa);
	}
	
	public List<Pessoa> lista(){
		return em.createQuery("SELECT p FROM Pessoa p").getResultList();
	}
	
	
public List<Pessoa> busca(String nome){
		return em.createQuery("SELECT p FROM Pessoa p WHERE lower(p.nome) LIKE lower(:nome)").setParameter("nome", "%"+nome+"%").getResultList();
	}

public List<Pessoa> buscaCpf(String cpf){
	return em.createQuery("SELECT p FROM Pessoa p WHERE lower(p.cpf) = lower(:cpf)").setParameter("cpf", cpf).getResultList();
}

public void apagar(String cpf){
	Pessoa pessoa = em.find(Pessoa.class, cpf);
	em.remove(pessoa);
}

public void alterar(Pessoa pessoa){
   em.merge(pessoa);
}
}