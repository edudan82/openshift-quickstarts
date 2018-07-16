package com.solutions.mydoctor.mvc.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Version;

import org.hibernate.annotations.GenericGenerator;

@Entity(name = "ConsultaMedica")
@Table(name = "consulta_medica")
public class ConsultaMedica {
	
	
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO,generator="native")
	@GenericGenerator(name = "native", strategy = "native"	)
	private Long id;
	
	@Version
	private int version;
	
	@Column(name="fecha_consulta")
	private LocalDate fechaConsulta;
	
	private String diagnostico;
	
	@ManyToOne(fetch = FetchType.LAZY)
	private Paciente paciente;
	
	
	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public LocalDate getFechaConsulta() {
		return fechaConsulta;
	}

	public void setFechaConsulta(LocalDate fechaConsulta) {
		this.fechaConsulta = fechaConsulta;
	}

	public String getDiagnostico() {
		return diagnostico;
	}

	public void setDiagnostico(String diagnostico) {
		this.diagnostico = diagnostico;
	}

	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}
	
	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ConsultaMedica other = (ConsultaMedica) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
	

	@Override
	public String toString() {
		return "ConsultaMedica [id=" + id + ", version=" + version + ", fechaConsulta=" + fechaConsulta
				+ ", diagnostico=" + diagnostico + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	

}
