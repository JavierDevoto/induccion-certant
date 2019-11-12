package program.constants;

import java.util.Arrays;
import java.util.List;

public enum TipoDocumento {
	DNI, LC, EXT;
	
	public static List<TipoDocumento> obtenerLista() {
		return Arrays.asList( TipoDocumento.values() );
	}
}
