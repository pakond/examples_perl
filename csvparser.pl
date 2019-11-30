$fichero_entrada = 'Productos.csv';
@ficheros_salida;
$separa_en = 17;

#agrega el valor con el nombre de los archivos de salida al array @fichero_salida
for ($i=0; $i<$separa_en; $i++) {
    $valor = "productos$i.csv";
	push (@ficheros_salida, $valor);
}

#abre fichero salida, lo lee y lo mete en el array @fichero_entrada
if ((-e $fichero_entrada) && (-r $fichero_entrada)) {
	open entrada, "<$fichero_entrada"; #abre para leer
	@fichero_entrada = <entrada>; #cada elemento de @fichero es una linea del fichero
	close entrada;
}
else { 
	die "No se encontro o no se puede leer el fichero de entrada $fichero_entrada\n";
}

$longitud = @fichero_entrada;
print "el archivo contiene $longitud lineas\n";

$parte = $longitud / $separa_en; #divide las lineas de entrada en el numero de archivos que quieres que salgan
$parte =~ s/\.[0-9]+//; #si la division no contiene un entero lo convierte en entero eliminando lo siguiente de la coma
print "cada uno de los $i archivos contendra $parte lineas\n";

#esto es lo que escribe los ficheros pero no tira bien :(
$contador_lineas;
$ultima_linea;
for ($i2=0; $i2<$separa_en; $i2++) { #crear un bucle por cada archivo
	$contador_lineas = 0;
	$suma_partes = $suma_partes + $parte;
	open salida, ">$ficheros_salida[$i2]";
	foreach $linea (@fichero_entrada) {
		$contador_lineas++;
		if (($contador_lineas < $suma_partes) && ($ultima_linea <= $contador_lineas)) {
			print salida $linea;
		}
		else {
			$ultima_linea = $contador_lineas;
			print "escrito fichero $ficheros_salida[$i2] con $contador_lineas lineas\n";
			last;
		}
	}
	close salida;
}