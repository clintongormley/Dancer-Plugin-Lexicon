use strict;
use warnings;
use Test::More import => [ '!pass' ];

use Dancer;
set show_errors => 1;
set template => 'template_toolkit';

use Dancer::Test;
use t::lib::App;

response_content_is [GET => '/in_route'], "Bonjour";
response_content_is [GET => '/in_view'], "in view: Bonjour\n";

done_testing;
