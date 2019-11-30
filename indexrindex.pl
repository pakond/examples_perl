$cadena = 'esta cosa en que posicion esta?';
$palabra = 'cosa';
$avance = 2;

$posicion = index($cadena, $palabra);
print "la cosa esta en la posicion $posicion\n";

$posicion2 = index($cadena, $cosa, $avance);
print "ahora la cosa estara seguramente en la posicion $posicion2\n";

#ahora al reves
$posicion3 = rindex($cadena, $cosa);
print "ahora la cosa esta en la posicion $posicion3 desde el final\n";