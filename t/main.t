use strict;
use warnings;
use Test::More import => [ '!pass' ];

use Dancer;
set show_errors => 1;

use Dancer::Test;
use t::lib::App;

response_content_is [GET => '/in_route'], "Bonjour";

done_testing;
