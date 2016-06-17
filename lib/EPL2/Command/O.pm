package EPL2::Command::O;
# ABSTRACT: O Command (Hardware Options)

use 5.010;
use Moose;
use MooseX::Method::Signatures;
use namespace::autoclean;

extends 'EPL2::Command';

#Public Attributes

#Methods
method string ( Str :$delimiter = "\n" ) { sprintf 'O%s', $delimiter; }

__PACKAGE__->meta->make_immutable;

1;

__END__

=pod

=head1 SYNOPSIS

 my $O = EPL2::Command::O->new;
 say $O->string;

=head1 METHODS

=head2 string

 param: ( delimiter => "\n" )

Return an EPL2 formatted string used for setting hardware options.

=head1 SEE ALSO

L<EPL2>

L<EPL2::Types>

=cut
