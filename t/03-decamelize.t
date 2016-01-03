use v6;
use lib 'lib';
use String::CamelCase;
use Test;

subtest {

    is String::CamelCase::Decamelize.parse_camelized('foobar'), [<foobar>];
    is String::CamelCase::Decamelize.parse_camelized('fooBar'), [<foo Bar>];
    is String::CamelCase::Decamelize.parse_camelized('FooBar'), [<Foo Bar>];
    is String::CamelCase::Decamelize.parse_camelized('FOOBar'), [<F O O Bar>];
    is String::CamelCase::Decamelize.parse_camelized('FOOBAR'), [<F O O B A R>];
    is String::CamelCase::Decamelize.parse_camelized('fooBAR'), [<foo B A R>];

}, 'Test Decamelize.parse_camelized';

subtest {

    subtest {
        my @result = String::CamelCase::Decamelize.filter_camelized([< F O O Bar Foo Bar foo bar>]);

        is @result, [< FOO Bar Foo Bar foo bar >];

    }, 'Separated :Lu letters are joined, while others remain as they are';

    subtest {
        my @result = String::CamelCase::Decamelize.filter_camelized([< F O O B A R >]);

        is @result, [< FOOBAR >];

    }, 'All :Lu letters are joined';

    subtest {
        my @result = String::CamelCase::Decamelize.filter_camelized([<foo B A R>]);

        is @result, [<foo BAR>];

    }, 'Tailing :Lu letters are joined';

}, 'Test Decamelize.filter_camelized';

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
