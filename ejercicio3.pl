muestramatriz(15);

sub muestramatriz {
	my ($valores) = @_; 
	for ($i = 0; $i<$valores; $i++) {
		$matriz{$i} = $i;
	}
	foreach $clave(sort(keys(%matriz))) {
		print "clave: $clave valor: $matriz{$clave}\n";
	}
}