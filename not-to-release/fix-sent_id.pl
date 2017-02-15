#!/usr/bin/env perl
use strict;
use warnings;
use feature 'say';

my $last_name = '';
while (<>){
    if (/^# (\S+)/) {
        die "unexpected $_" if $1 ne 'sent_id';
        my $text = <>;
        my $sent_num = <>;
        my $doc_name = <>;
        ($sent_num, $doc_name) = map {chomp; substr $_, 2} ($sent_num, $doc_name);
        if ($last_name ne $doc_name) {
            say "# newdoc id = $doc_name";
            $last_name = $doc_name;
        }
        say "# sent_id = $doc_name-s$sent_num";
        print $text;
    } else {
        print $_;
    }
}
