package program.constants;

import java.util.Arrays;
import java.util.List;

public enum Genero {
	MASCULINO, FEMENINO;
	
	public static List<Genero> obtenerLista() {
		return Arrays.asList( Genero.values() );
	}
}
