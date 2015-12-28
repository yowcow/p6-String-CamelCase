use v6;
use lib 'lib';
use String::CamelCase;
use Test;

is camelize('foo_bar'), 'FooBar';
is camelize('foo-bar'), 'FooBar';
is camelize('FOO_BAR'), 'FooBar';
is camelize('FOO-Bar'), 'FooBar';

done-testing;
