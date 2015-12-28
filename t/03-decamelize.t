use v6;
use lib 'lib';
use String::CamelCase;
use Test;

is decamelize('FooBar'), 'foo-bar';
is decamelize('FooBar', '_'), 'foo_bar';
is decamelize('FOOBAR'), 'foo-bar';
is decamelize('FOOBar'), 'foo-bar';
is decamelize('fooBar'), 'foo-bar';
is decamelize('fooBAR'), 'foo-bar';

done-testing;
