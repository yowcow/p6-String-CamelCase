use v6;
unit class String::CamelCase;

method camelize(Str $given) returns Str is export {
    ''
}

method decamelize(Str $given) returns Str is export {
    ''
}

=begin pod

=head1 NAME

String::CamelCase - Camelize and decamelize given string

=head1 SYNOPSIS

  use String::CamelCase;

=head1 DESCRIPTION

String::CamelCase is a module to camelize and decamelize a string.

=head1 METHODS

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
