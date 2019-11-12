package program.controller;

import java.util.HashMap;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import program.constants.Genero;
import program.constants.TipoDocumento;

@RestController
public class EnumController {
	
	@RequestMapping(value = "/parametria-documento", method = RequestMethod.GET)
	public HashMap<String, Object> parametriaDocumento() {
		HashMap<String, Object> map = new HashMap<>();
		map.put("tipo_documento", TipoDocumento.obtenerLista() );
		return map;
	}

	@RequestMapping(value = "/parametria-genero", method = RequestMethod.GET)
	public HashMap<String, Object> parametriaGenero() {
		HashMap<String, Object> map = new HashMap<>();
		map.put("generos", Genero.obtenerLista() );
		return map;
	}
	
}
