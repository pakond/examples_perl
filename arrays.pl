@nombres = ("pepito", "juanito", "paquito", "joselito");
@numeros = (1, 2, 3, 4, 5, 6, 7, 8, 9);

foreach $i (@numeros) {
	print "$i "; 
}
foreach $o (@nombres) {
	print "$o ";
}
print "\n";
print "el primer nombre del array es $nombres[0]\n";
print "el ultimo nombre del array es $nombres[-1]\n";

push (@nombres, "albertito"); #agrega al final de la lista
push (@nombres, @numeros); #es posible agrega listas a otra lista
$cantidadnumeros = @numeros;

print "elemtnos separados: @nombres\n";
print "la cantidad de numeros es $cantidadnumeros\n";
print "el primer nombre del array es $nombres[0]\n";

@nombres = (); 
print "ahora no hay nombres @nombres\n";

#otras funciones para matrizes
# Push() Añade elementos al final de una matriz.
# Unshift() Añade elementos al principio de una matriz desplazando
# el resto de elementos una posición hacia atrás.
# Pop() Elimina elementos al final de una matriz.
# Shift() Elimina elementos al principio de una matriz desplazando
# el resto de elementos una posición hacia delante.
# Delete() Elimina elementos en una matriz asociativa.

# Ejemplo (matrice3.pl): 
# # Agregar y eliminar elementos en una matriz 
# @matriz = ("uno", "dos", "tres"); #Define matriz con tres elementos
# push(@matriz, "cuatro"); #Añade al final un cuarto elemento
# print "@matriz", "\n"; #Visualiza uno dos tres cuatro
# unshift(@matriz, "cero"); #Añade al principio el elemento "cero"
# print "@matriz", "\n"; #Visualiza cero uno dos tres cuatro
# $elemento = pop(@matriz); #Devuelve y elimina el último elemento
# print $elemento, "\n"; #Visualiza cuatro
# print "@matriz", "\n"; #Visualiza cero uno dos tres
# $elemento = shift(@matriz); #Devuelve y elimina el primer elemento
# print $elemento, "\n"; #Visualiza cero
# print "@matriz", "\n"; #Visualiza uno dos tres
# %romano = ("I","uno","II","dos"); #Crea la matriz asociativa romano
# print %romano, "\n"; #Visualiza IunoIIdos
# $borrar = delete $romano{"I"}; #Elimina la pareja Iuno
# print $borrar, "\n"; #Visualiza uno
# print %romano, "\n"; #Visualiza IIdos