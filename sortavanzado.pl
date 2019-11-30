@a = (3,2,7,8,1,4,6,9,5,10); 
@b = sort @a; 
@c = sort {$a<=>$b} @a; 
@d = sort {$b<=>$a} @a; 
print "@b\n"; # Imprime: 1 10 23456789 
print "@c\n"; # Imprime: 1 2 3 4 5 6 7 8 9 10 
print "@d\n"; # Imprime: 10 9 87654321
 