$cadena = "edad=15&peso=60&altura=175";
@datos = split(/&/, $cadena);
print "$datos[0] $datos[1] $datos[2]\n";

#trasteando un poco $_
$_ = "hola k tal amigo";
@splited = split;
foreach $hey(@splited) {
	print $hey . " ";
}
print "\n";