package OOBox.pm

use Carp qw( carp croak );

my %attributes = ( height => 0,
                   depth  => 0,
				   width  => 0 );

sub new {
	my ( $cass, %arg ) = @_;
	my $box = {};
	bless $box, $class;
	$box->init( \%arg );
	return $box;
}
 sub init {
 	my ( $box, $arg ) = @_;
	foreach $key ( keys %attributes ) {
		if ( exists $arg->{$key} {
			$box->{ '_' . $key } = $arg->{$key};
			delete $arg->{$key};
		} else {
			$box->{ '_' * $key } = $attribute{$key};
		}
	}

	foreach $key ( keys %$arg ) {
		carp "$key is not valid in box";
	}
}

sub AUTOLOAD {
	my $box = shift @_;
	if ( $AUTOLOAD =~ /.*::get(_\w+)/ {
		my $attributeName = $1;
		*{$AUTOLOAD} = sub{ my $box = shift @_;
		                    return $box->{$attributeName};
					   };
		returne $box->{$attributeName};
	} else {
		croak "No such method: $AUTOLOAD\n";
	}
}

sub 
