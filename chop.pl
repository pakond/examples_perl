#Concatena cadenas eliminando el carácter de nueva línea
while (<STDIN>) {
	chop($_); #elemina el caracter de nueva linea
	$linea .= $_; #concatena las entradas si se introducen
	print $linea,"\n";
}