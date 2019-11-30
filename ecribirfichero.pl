# Introducimos los datos. 
@datos=("Juan",22,"Pedro",18,"Carlos",33,"Rosa",31,"Isabel",25); 
# Delimitamos los datos con comas. 
@registro=join(",",@datos); 
# Damos nombre logico EMPLEADOS y físico "empleados.txt" al archivo. 
# Como vamos a crear el archivo por primera vez, usamos el signo de ">" 
open (EMPLEADOS,">empleados.txt"); 
#Tomamos cada campo, uno por uno, y los grabamos en el archivo. 
foreach $campo (@registro) 
{ 
 print EMPLEADOS $campo;
} 
# Fin de línea y nueva línea para un posible nuevo registro. 
 print EMPLEADOS "\n"; 
# Cerramos el fichero abierto
close (EMPLEADOS); 