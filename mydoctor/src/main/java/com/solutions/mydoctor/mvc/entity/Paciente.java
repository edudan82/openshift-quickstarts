package com.solutions.mydoctor.mvc.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.Formula;
import org.hibernate.annotations.GenericGenerator;


@Entity(name = "Paciente")
@Table(name = "paciente")
public class Paciente {
	
	@Id
	@GeneratedValue(
		    strategy= GenerationType.AUTO, 
		    generator="native"
	)
	@GenericGenerator(
		    name = "native", 
		    strategy = "native"
	)
	private Long id;
	
	@Column
	private String nombre;
	
	@Column
	private String apellidos;
	
	@Column(name="fecha_nacimiento")
	private LocalDate fechaNacimiento;
	
	@Column
	private String sexo;
	
	@Formula(value = "FLOOR(DATEDIFF(CURRENT_DATE, fecha_nacimiento)/365)")
	private int edad;
	
	
	@Formula(value = "concat(nombre, ' ', apellidos)"  )
	@Column(name="nombre_completo")
	private String nombreCompleto;


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getApellidos() {
		return apellidos;
	}


	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}


	public LocalDate getFechaNacimiento() {
		return fechaNacimiento;
	}


	public void setFechaNacimiento(LocalDate fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}


	public String getSexo() {
		return sexo;
	}


	public void setSexo(String sexo) {
		this.sexo = sexo;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((apellidos == null) ? 0 : apellidos.hashCode());
		result = prime * result + ((nombre == null) ? 0 : nombre.hashCode());
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
		Paciente other = (Paciente) obj;
		if (apellidos == null) {
			if (other.apellidos != null)
				return false;
		} else if (!apellidos.equals(other.apellidos))
			return false;
		if (nombre == null) {
			if (other.nombre != null)
				return false;
		} else if (!nombre.equals(other.nombre))
			return false;
		return true;
	}


	@Override
	public String toString() {
		return "Paciente [id=" + id + ", nombre=" + nombre + ", apellidos=" + apellidos + ", fechaNacimiento="
				+ fechaNacimiento + ", sexo=" + sexo + ", edad=" + edad + ", nombreCompleto=" + nombreCompleto + "]";
	}
	
	
	

	

}