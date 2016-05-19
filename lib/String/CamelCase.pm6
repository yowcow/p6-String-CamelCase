use v6;

unit module String::CamelCase;

our sub camelize(Str $given) is export(:DEFAULT) returns Str {
    $given.split(/\-|_/).map(-> $word { $word.tclc }).join;
}

our sub decamelize(Str $given is copy, Str $expr = '-') is export(:DEFAULT) returns Str {

    $given ~~ s:g! (<:Lu>*) (<:Ll>*) (<:Lu>) (<:Ll>*) !{
        my Str ($p0, $p1, $p2, $p3) = ~$0.lc, ~$1, ~$2.lc, ~$3;
        !$p1 && !$p3 ?? $p0 ~ $p2 !! "$p0$p1" ~ $expr ~ "$p2$p3";
    }!;

    $given;
}

our sub wordsplit(Str $given) is export(:DEFAULT) returns Array {
    [ String::CamelCase::Util::filter-camelized(
        String::CamelCase::Util::parse-camelized($given)
        ).map(-> $word { $word.split(/\-|_/) }).flat ];
}

=begin pod

=head1 NAME

String::CamelCase - Camelizes and decamelizes given string

=head1 SYNOPSIS

  use String::CamelCase;

=head1 DESCRIPTION

String::CamelCase is a module to camelize and decamelize a string.

=head1 FUNCTIONS

=head2 camelize (Str) returns Str

    camelize("hoge_fuga");
    # => "HogeFuga"

    camelize("hoge-fuga");
    # => "HogeFuga"

=head2 decamelize (Str $string, [Str $connector = '-']) returns Str

    decamelize("HogeFuga");
    # => hoge-fuga

    decamelize("HogeFuga", "_");
    # => hoge_fuga

=head2 wordsplit (Str $string) returns Array

    wordsplit("HogeFuga");
    # => ["Hoge", "Fuga"]

    wordsplit("hoge-fuga");
    # => ["hoge", "fuga"]

=head1 AUTHOR

Yoko Ohyama <yowcow@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright 2015 yowcow

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
