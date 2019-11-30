#Las variables de tipo "hash" se declaran precediendo su nombre por un símbolo de porcentaje (%). Una primera forma de definirlas, bastante compacta, es ésta:

%edad = ('Juan', 23, 'Pedro', 31);

#Para ver la edad de Pedro haríamos

print "La edad de Juan es " . $edad{'Juan'} . "\n";
print "la edad de Pedro es " . $edad{'Pedro'} . "\n";

#otra forma de declarar tipo "hash" mas legible

%altura = (
	Juan => 170,
	Pedro => 180
);
#para modificar el valor de una variable tipo hash

$altura{'Juan'} = 175;

#si usamos esta misma forma para una referencia que no existe se añadira

$altura{'Manolo'} = 185;

delete $altura{'Manolo'}; 

#Un ejemplo para pasar una matriz @ en una matriz %:
@articulos = ("X", "Martillo", "Y", "Alicates", "Z", "Tenazas");
%inventario = @articulos;
print $inventario{"X"} . "\n"; # Martillo
print $inventario{"Y"} . "\n"; # Alicates
print $inventario{"Z"} . "\n"; # Tenazas

#un ejemplo para cojer los indices de una matriz %

@indices = keys(%altura);
foreach (@indices) {
	print "$_ ";
}
print "\n";

# recorremos una matriz e indicamos su indice y valor
foreach $indice(keys(%altura)) {
	print "el indice $indice equivale al valor $altura{$indice}\n";
}

#usamos la funcion each para recorrer la matriz
while (($indi, $valor) = each(%edad)) {
	print "indice: $indi valor; $valor\n";
}

undef %altura; #elimina una matriz tipo hash