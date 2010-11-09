#!perl -T
use strict;
use Test::More tests => 1;

use_ok( "Candy::Perl" );
diag( "Testing Candy::Perl $Candy::Perl::VERSION, Perl $], $^X" );
