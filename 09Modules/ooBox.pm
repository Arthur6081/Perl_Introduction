package ooBox;

use Carp qw( carp croak );

my %attributes = ( height => 0,
                   depth  => 0,
				   width  => 0 );

sub new {
	my ( $class, %arg ) = @_;
	my $box = {};
	bless $box, $class;
	$box->init( \%arg );
	return $box;
}

sub init {
 	my ( $box, $arg ) = @_;
	foreach $key ( keys %attributes ) {
		if ( exists $arg->{$key} ) {
			$box->{ $key } = $arg->{$key};
			delete $arg->{$key};
		} else {
			$box->{ $key } = $attribute{$key};
		}
	}

	foreach $key ( keys %$arg ) {
		carp "$key is not valid in box";
	}
}

sub height {
	my ($box) = @_;
	return $box->{height};
}

sub width {
	my ($box) = @_;
	return $box->{width};
}

sub depth {
	my ($box) = @_;
	return $box->{depth};
}

sub volume {
	my ($box) = @_;
	return $box->{width} * $box->{depth} * $box->{height};
}

sub surfaceArea {
	my ($box) = @_;
	return 4* $box->{width} * $box->{depth} + 2 * $box->{depth}  * $box->{height};
}


=head1 NAME

oobox - a simple OO package for volume and surface area of box

=head1 SYNOPSIS

use ooboxes;

=head1 DESCRIPTION

This is a simple OO package for computing the surface
area and volume of a box with depth, height, and width dimensions.

=head1 CALLING

$box = new ooBox( width => 3, depth => 4, height => 5 );

$box->depth();

$box->height();

$box->width();

$box->volume();

$box->surfaceArea();

=head1 AUTHOR

Arthur Messenger, E<lt>Arthur.Messenger@trainingbyROI.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2004 by Arthur M. Messenger

This library is free software; you can redistribute it and/or modify it 
under the same terms as Perl itself.

=cut
