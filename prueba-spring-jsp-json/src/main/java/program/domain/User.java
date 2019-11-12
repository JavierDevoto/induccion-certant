package program.domain;

import java.util.Date;

import program.constants.Genero;
import program.constants.TipoDocumento;  

public class User {

	private String nombre;
	private String apellido;
	private TipoDocumento tipoDocumento;
	private Integer documento;
	private Genero genero;
	private Date fechaDeNacimiento;
	private String email;
	
	public User() {}
	
	public User(String nombre, String apellido, TipoDocumento tipoDocumento, Integer documento, Date fechaDeNacimiento, Genero genero, String email) {
		this.nombre = nombre;
		this.apellido = apellido;
		this.tipoDocumento = tipoDocumento;
		this.documento = documento;
		this.genero = genero;
		this.fechaDeNacimiento = fechaDeNacimiento;
		this.email = email;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public String getNombre() {
		return this.nombre;
	}
	
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	
	public String getApellido() {
		return this.apellido;
	}
	
	public void setTipoDocumento(TipoDocumento tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}
	
	public String getTipoDocumento() {
		return this.tipoDocumento.toString();
	}
	
	public void setDocumento(Integer documento) {
		this.documento = documento;
	}
	
	public Integer getDocumento() {
		return this.documento;
	}

	public void setGenero(Genero genero) {
		this.genero = genero;
	}
	
	public String getGenero() {
		return this.genero.toString();
	}

	public void setFechaDeNacimiento(Date fechaDeNacimiento) {
		this.fechaDeNacimiento = fechaDeNacimiento;
	}
	
	public Date getFechaDeNacimiento() {
		return this.fechaDeNacimiento;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getEmail() {
		return this.email;
	}
	
	

}
