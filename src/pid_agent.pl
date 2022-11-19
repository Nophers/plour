use strict;
use warnings;
use LWP::UserAgent;
use LWP::Protocol::https;

for (1..1000) {
    my $pid = fork();
    if ($pid == 0) {
        my $ua = LWP::UserAgent->new();
        my $url = "https://jsonplaceholder.typicode.com/todos/1";
        my $res = $ua->get($url);
        print $res->decoded_content;
        exit;
    }
}
