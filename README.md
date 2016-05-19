[![Build Status](https://travis-ci.org/yowcow/p6-String-CamelCase.svg?branch=master)](https://travis-ci.org/yowcow/p6-String-CamelCase)

NAME
====

String::CamelCase - Camelizes and decamelizes given string

SYNOPSIS
========

    use String::CamelCase;

DESCRIPTION
===========

String::CamelCase is a module to camelize and decamelize a string.

FUNCTIONS
=========

Following functions are exported:

camelize (Str) returns Str
--------------------------

    camelize("hoge_fuga");
    # => "HogeFuga"

    camelize("hoge-fuga");
    # => "HogeFuga"

decamelize (Str, [Str $expr = '-']) returns Str
-----------------------------------------------

    decamelize("HogeFuga");
    # => hoge-fuga

    decamelize("HogeFuga", "_");
    # => hoge_fuga

wordsplit (Str) returns List
----------------------------

    wordsplit("HogeFuga");
    # => ["Hoge", "Fuga"]

    wordsplit("hoge-fuga");
    # => ["hoge", "fuga"]

SEE ALSO
========

[String::CamelCase](http://search.cpan.org/dist/String-CamelCase/lib/String/CamelCase.pm)

AUTHOR
======

Yoko Ohyama <yowcow@cpan.org>

COPYRIGHT AND LICENSE
=====================

Copyright 2015 yowcow

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.
