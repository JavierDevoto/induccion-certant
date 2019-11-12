package program.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;
import program.domain.User;

@Service
public class ServicioUsuario {
	
	List<User> usuarios = new ArrayList<User>();
	
	public User getUser(Integer dni) {
		return this.usuarios.stream()
			.filter(user -> user.getDocumento().equals(dni))
			.findFirst()
			.get();
	}

	public User getUserByName(String nombre) {
		return this.usuarios.stream()
			.filter(user -> user.getNombre().equals(nombre))
			.findFirst()
			.get();
	}
	
	public void addUser(User user) {
		if (user == null) throw new RuntimeException("Usuario nulo");
		this.usuarios.add(user);
	}
	
	public Integer getSize() {
		return this.usuarios.size();
	}
}
