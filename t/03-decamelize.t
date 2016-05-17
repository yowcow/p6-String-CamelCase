use v6;
use lib 'lib';
use String::CamelCase;
use Test;

subtest {

    is decamelize('FooBar'), 'foo-bar';
    is decamelize('FooBar', '_'), 'foo_bar';
    is decamelize('FOOBAR'), 'foobar';
    is decamelize('FOOBar'), 'foo-bar';
    is decamelize('fooBar'), 'foo-bar';
    is decamelize('fooBAR'), 'foo-bar';

    subtest {

        is decamelize('HogeMuge'),       'hoge-muge';
        is decamelize('AD'),             'ad';
        is decamelize('YearBBS'),        'year-bbs';
        is decamelize('ClientAdClient'), 'client-ad-client';
        is decamelize('ADClient'),       'ad-client';

    }, 'Taken from p5 String::CamelCase';

}, 'Test decamelize';

done-testing;
