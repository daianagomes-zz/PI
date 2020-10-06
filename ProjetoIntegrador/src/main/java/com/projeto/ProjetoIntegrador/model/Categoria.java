package com.projeto.ProjetoIntegrador.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table (name = "tb_categoria")
public class Categoria {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@NotNull
	@Size (max = 255)
	private String nomecateg;
	
	@NotNull
	@Size (max = 255)
	private String setor;

	public long getId() 
	{
		return id;
	}

	public void setId(long id) 
	{
		this.id = id;
	}

	public String getNomecateg() 
	{
		return nomecateg;
	}

	public void setNomecateg(String nomecateg) 
	{
		this.nomecateg = nomecateg;
	}

	public String getSetor() 
	{
		return setor;
	}

	public void setSetor(String setor) 
	{
		this.setor = setor;
	}
	
	
	
}