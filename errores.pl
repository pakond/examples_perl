while($a=<STDIN>) { 
	eval { 
		chomp $a; 
		die "No sirve este valor: $a" unless $a; 
		print 100/$a;
	}; 
	if( $@ ) { 
		print "Se ha producido un error: $@"; 
	} 
}