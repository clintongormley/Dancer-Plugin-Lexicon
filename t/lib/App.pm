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

get '/in_route' => sub {
    l('hello'); 
};

get '/in_view' => sub {
    template 'test';   
};

1;
