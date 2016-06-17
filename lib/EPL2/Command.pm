package EPL2::Command;
# ABSTRACT: EPL2::Command (Base Class for EPL2 Commands)

use 5.010;
use Moose;
use namespace::autoclean;

#Methods
sub string { die 'Must Implement ->string Method'; }

__PACKAGE__->meta->make_immutable;

1;

__END__

=pod

=head2 string

 param: ( delimiter => "\n" )

Return an EPL2 formatted string used for setting label width.

=head1 SEE ALSO

L<EPL2>

L<EPL2::Types>

=cut
