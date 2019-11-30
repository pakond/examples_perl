my $valores = 10;
my @array;
my $cuenta = 0;

for ($i = 0; $i < $valores; $i++) {
	push(@array, $i);
}
print "@array \n";
@array = ();

while ($valores != 0) {
	push (@array, $cuenta);
	$cuenta++;
	$valores--;
}
print "@array \n";
@array = ();
$valores = 10;
$cuenta = 0;

until ($valores == 0) {
	push (@array, $cuenta);
	$cuenta++;
	$valores--;
}
print "@array \n";
@array = ();
$valores = 10;
$cuenta = 0;

do {
	push(@array, $cuenta);
	$cuenta++;
	$valores--;
}
while ($valores != 0);
print "@array \n";
