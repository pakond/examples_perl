%array_asociativo = (
	a => 'kiwi',
	b => 'platano',
	c => 'manzana',
	d => 'naranja'
);

my $contador;
foreach $clave(keys(%array_asociativo)) {
	if ($contador == 2) {
		print "la segunda clave es: $clave\n";
	}
	$contador++;
}