use v6;

unit module String::CamelCase;

sub camelize(Str $given) is export(:DEFAULT) returns Str {
    ''
}

sub decamelize(Str $given, Str $expr = '-') is export(:DEFAULT) returns Str {
    ''
}

=begin pod

=head1 NAME

String::CamelCase - Camelize and decamelize given string

=head1 SYNOPSIS

  use String::CamelCase;

=head1 DESCRIPTION

String::CamelCase is a module to camelize and decamelize a string.

=head1 FUNCTIONS

=head2 camelize (Str) returns Str

    camelize("hoge_fuga");
    #=> "HogeFuga"

    camelize("hoge-fuga");
    # => "HogeFuga"

=head2 decamelize (Str $string, [Str $connector = '-']) returns Str

    decamelize("HogeFuga");
    #=> hoge-fuga

    decmalieze("HogeFuga", "_");
    #=> hoge_fuga

=head1 AUTHOR

yowcow <yowcow@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright 2015 yowcow

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
