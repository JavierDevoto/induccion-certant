package program.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import program.domain.User;
import program.service.ServicioUsuario;

@RestController
public class UsuarioController {

	@Autowired
	ServicioUsuario servicioUsuario;
	
	@RequestMapping(value = "/usuario/alta", method = RequestMethod.POST)
	public void update(@RequestBody User usuario) {
		servicioUsuario.addUser(usuario);
	}

	@RequestMapping(value = "/usuario/por-dni/{dni}", method = RequestMethod.GET)
	public User getUsuario(@PathVariable(value="dni") Integer dni) {
		return servicioUsuario.getUser(dni);
	}

	@RequestMapping(value = "/usuario/por-nombre", method = RequestMethod.GET)
	public User getUsuarioPorNombre(@RequestParam String nombre) {
		return servicioUsuario.getUserByName(nombre);
	}
}
