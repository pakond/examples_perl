  my $entrada="entrada.txt";

  open (ENTRADA,"<$entrada") || die "ERROR: No puedo abrir el fichero $entrada\n";
 
  $fichero = join("",<ENTRADA>);
  close(ENTRADA);
  @fichero = split("\n", $fichero);
  
  foreach $linea(@fichero) {
	print $linea . "\n";
  }
