@numeros = [66,7,23,40,484,6];
($mayor,$menor) = mayormenornumero(@numeros);
print "el mayor numero es $mayor y el menor $menor \n";

sub mayormenornumero {
	my ($numeritos) = @_;
	my @numeritos = @$numeritos;
	my $elmayor;
	my $elmenor;
	
	foreach $numero (@numeritos) {
		if ($elmayor < $numero) {
			$elmayor = $numero;
		}
		if (($elmenor > $numero) || ($elmenor == 0)) {
			$elmenor = $numero;
		}
	}
	return ($elmayor, $elmenor);
}