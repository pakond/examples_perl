$frase = "abcd";
if ($frase =~ m/ab.*/) {
	print "la frase contiene ab y quiza algo mas\n";
}
# Para comparar una cadena con una expresión regular usaremos =~ (si queremos ver si cumple la condición) o !~ (para comprobar si NO se cumple).
# La expresión regular se indica entre / y /
# La operación más sencilla con cadenas es comparar ("match"), así que antes de la primera barra añadiríamos una m.
# Un punto (.) quiere decir "cualquier carácter".
# Un asterisco (*) quiere decir "el carácter anterior, repetido 0 o más veces".

$frase2 = "aBcd";
if ($frase2 =~ m/[Aa][bB].*/) {
	print "la frase2 contien ab (minuscula o mayuscula) y quiza algo mas\n";
}
# Para ver si se ha tecleado en mayúsculas o en minúsculas, usaríamos corchetes. 
# Los corchetes indican opcionalidad, es decir, que nos sirve cualquiera de los elementos que indicamos entre ellos:

$numeroentero = "12345";
if ($numeroentero =~ m/[0-9]./) {
	print "la variable numeroentero contiene solo numeros enteros\n";
}
# Pero siendo estrictos, eso daría una cadena vacía como número válido, y eso es un tanto discutible.
# Si queremos que al menos haya una cifra, en vez de usar el asterisco (0 o más), usaríamos el símbolo de la suma (+), que indica "1 o más veces":
if ($numeroentero =~ /[0-9]+/) {
	print "El número entero sólo contiene cifras\n";
}

if ($numeroentero =~ m/^[0-9]+$/) { #indicamos el principio de la cadena con ^ y el final con $
	print "la variable numeroenter contiene solo numeros enteros\n";
}

$numeroreal1 = "234.43";
if ($numeroreal1 =~ m/^[0-9]+(\.[0-9]+)?$/) {
	print "El número real 1 parece correcto\n";
}
# El "." es un comodín, de modo que si queremos buscar si aparece un punto dentro de nuestra cadena, deberemos indicar que no nos referimos al comodín, sino al símbolo del punto ("."), y para eso lo precedemos con la barra invertida: \
# Si queremos que algo se repita como mucho una vez (0 o 1 veces), añadiremos una interrogación ("?") a continuación.
# Si necesitamos agrupar cosas (que se repita "el punto y una secuencia de cifras") lo haremos usando paréntesis antes del símbolo "?" (o el que nos interese en nuestra comprobación

$numeroreal2 = "234.32.23";
if ($numeroreal2 =~ m/^[0-9]+(\.[0-9]+)?$/) {
print "El número real 2 parece correcto\n";
} else {
print "El número real 2 no parece correcto\n";
}

$numeroreal3 = "234.";
if ($numeroreal3 =~ m/^[0-9]+(\.[0-9]+)?$/) {
print "El número real 3 parece correcto\n";
} else {
print "El número real 3 no parece correcto\n"; 
}

# Otras posibilidades que no hemos comentado (los ejemplos, más abajo):
# Si queremos que la búsqueda no distinga entre mayúsculas y minúsculas, añadiremos una "i" a continuación de la segunda barra,
# Para expresar que algo debe repetirse un número concreto de veces, lo indicamos entre llaves: {2,4} querría decir "un mínimo de 2 veces y un máximo de 4 veces"; {3} sería "exactamente 3 veces"; {7,} indicaría "7 o más veces".
# Una barra vertical ("|") indica opcionalidad.
# Un acento circunflejo ("^") nada más comenzar un corchete indica que buscamos el caso contrario.


# Algunos ejemplos más, para poner casi todo a prueba:

# Una secuencia de una o más letras "a": /a+/
# Una secuencia enre 3 y 5 "a": /a{3,5}/
# Cualquier letra: /[a-zA-z]/
# Una secuencia de cero o más puntos: /\.*/
# Una secuencia de letras "a" o "b": /[a|b]+/
# Las palabras "Jorge" o "Jorgito": /Jorg(e|ito)/
# Las palabras "Pedro", "pedro", "Juan", "juan": /[Pp]edro|[Jj]uan/
# Las palabras "Pedro" o "Juan", en mayúsculas o minúsculas: /Pedro|Juan/i
# Cualquier cosa que no sea una cifra: /[^0-9]/

# Finalmente, quizá sea interesante comentar que para ahorrarnos trabajo en cosas frecuentes como "cualquier cifra" tenemos abreviaturas similares a "\d". Estas son las más habituales:

# \d  Un dígito numérico
# \D  un carácter que no sea un dígito numérico
# \w  Un carácter "de palabra" (alfanuméricos y "_")
# \W  Un carácter "no de palabra" (opuesto al anterior)
# \s  Un carácter de espacio en blanco
# \S  Un carácter que no sea de espacio en blanco
# \t  Un tabulador
# \n  Un avance de línea
# \r  Un retorno de carro
# \043  Un carácter indicado en octal (en este caso, 43 octal =  35 decimal)
# \x3f  Un carácter hexadecimal (éste es 3f hexadecimal = 63 decimal)