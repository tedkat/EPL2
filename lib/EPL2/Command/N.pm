package EPL2::Command::N;
# ABSTRACT: N Command (Clear Image Buffer)

use 5.010;
use Moose;
use MooseX::Method::Signatures;
use namespace::autoclean;

extends 'EPL2::Command';

#Public Attributes

#Methods
method string ( Str :$delimiter = "\n" ) { sprintf '%sN%s', $delimiter, $delimiter; }

__PACKAGE__->meta->make_immutable;

1;

__END__

=pod

=head1 SYNOPSIS

 my $N = EPL2::Command::N->new;
 say $N->string;

=head1 METHODS

=head2 string

 param: ( delimiter => "\n" )

Return an EPL2 formatted string for clearing image buffer.

=head1 SEE ALSO

L<EPL2>

L<EPL2::Types>

=cut
