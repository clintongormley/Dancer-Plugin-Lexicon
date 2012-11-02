package t::lib::App;
use strict;
use warnings;

BEGIN {
    use Dancer ':syntax';
    config()->{'plugins'} = {
        Lexicon =>  {
            namespace => 'foo',
            path => "t/languages",
            default => "fr",
            func => ['l'],
        }
    };
}

use Dancer::Plugin::Lexicon;

my $views = path(dirname(__FILE__), 'views');
set views => $views;

get '/in_route' => sub {
    l('hello'); 
};

get '/in_view' => sub {
    template 'test';   
};

1;
