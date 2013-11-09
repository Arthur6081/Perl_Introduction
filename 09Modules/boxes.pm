package boxes;

$VERSION = 1.00;

use Exporter;
@ISA = qw( Exporter );

@EXPORT_OK = qw( volume surfaceArea );

sub volume {
	my ( $width, $depth, $height ) = @_;
	return $width * $depth * $height;
}

sub surfaceArea {
	my ( $width, $depth, $height ) = @_;
	return 4 * $width * $depth + 2 * $depth * $height;
}

=head1 NAME

boxes - a simple traditional package for volume and surface area of box

=head1 SYNOPSIS

use boxes;
use boxes qw( area sufaceArea );

=head1 DESCRIPTION

This is a simple traditional (non-OO) package for computing the surface
area and volume of a box with depth, height, and width dimensions.

=head1 CALLING

volume( $depth, $height, $width );

surfaceArea( $depth, $height, $width );

=head2 EXPORT 

None.

=head2 EXPORT_OK

volume surfaceArea

=head1 AUTHOR

Arthur Messenger, E<lt>Arthur.Messenger@trainingbyROI.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2004 by Arthur M. Messenger

This library is free software; you can redistribute it and/or modify it 
under the same terms as Perl itself.

=cut
