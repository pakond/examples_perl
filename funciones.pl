# Función para saludar a varios, al antiguo estilo
sub saludo
{
print "Esto es un saludo para: ";
foreach $actual (@_) {
print $actual . " ";
}
print "\n";
}

# Función para elevar al cuadrado, al antiguo estilo
sub cuadrado {
my $numero = shift;
$numero **= 2;
return $numero;
}

# Función para sumar dos números, al modo moderno, 2 parámetros
sub suma($$)
{
return $_[0] + $_[1];
}

# Cuerpo del programa

# Primero llamamos a la función saludo, al antiguo estilo
&saludo("Nacho", "Juan");

#Luego, elevamos 3 al cuadrado
print "3 al cuadrado es : " . &cuadrado(3) ."\n";

#Finalmente, sumamos 4 y 6
print "4 + 6 = " . suma(4,6) ."\n";