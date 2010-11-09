package Candy::Perl;

use 5.008;
use strict;
use warnings;


our $VERSION = "0.01";

BEGIN {
    if ($] < 5.010) {
        require Exporter;

        require MRO::Compat;
        MRO::Compat->import;

        require Perl6::Say;
        Perl6::Say->import;
    }
    else {
        require mro;
        require feature;
    }
}


sub import {
    my ($class) = @_;
    my $caller  = caller();

    strict->import;
    warnings->import;
    mro::set_mro($caller, "c3");

    if ($] < 5.010) {
        no strict "vars";
        @ISA    = qw< Exporter >;
        @EXPORT = qw< say >;
        __PACKAGE__->export_to_level(1, @_);
    }
    else {
        feature->import("say");
    }
}


__PACKAGE__

__END__

=head1 NAME

Candy::Perl - Add sweet syntax sugar to your old sour Perl


=head1 VERSION

Version 0.01


=head1 SYNOPSIS

    use Candy::Perl;
    ...


=head1 DESCRIPTION

...


=head1 SEE ALSO

...


=head1 AUTHOR

SE<eacute>bastien Aperghis-Tramoni C<< <sebastien at aperghis.net> >>


=head1 BUGS

Please report any bugs or feature requests to
C<bug-candy-perl at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/Public/Dist/Display.html?Dist=Candy-Perl>.
I will be notified, and then you'll automatically be notified of
progress on your bug as I make changes.


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Candy::Perl

You can also look for information at:

=over

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/Public/Dist/Display.html?Dist=Candy-Perl>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Candy-Perl>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Candy-Perl>

=item * Search CPAN

L<http://search.cpan.org/dist/Candy-Perl>

=back


=head1 COPYRIGHT & LICENSE

Copyright 2010 SE<eacute>bastien Aperghis-Tramoni, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

