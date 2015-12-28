use v6;
use lib 'lib';
use String::CamelCase;
use Test;

is decamelize('FooBar'), 'foo-bar';
is decamelize('FooBar', '_'), 'foo_bar';
is decamelize('FOOBAR'), 'foobar';
is decamelize('FOOBar'), 'foobar';

done-testing;
