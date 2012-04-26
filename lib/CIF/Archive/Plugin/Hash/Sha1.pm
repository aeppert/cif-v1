package CIF::Archive::Plugin::Hash::Sha1;
use base 'CIF::Archive::Plugin::Hash';

use strict;
use warnings;

__PACKAGE__->table('hash_sha1');

sub prepare {
    my $class = shift;
    my $data = shift;
    return unless(lc($data) =~ /^[a-f0-9]{40}$/);
    return(1);
}

sub query {
    my $class = shift;
    my $data = shift;
 
    return unless($class->prepare($data->{'query'}));

    my $ret = $class->SUPER::search_lookup(
        $data->{'query'},
        $data->{'confidence'},
        $data->{'source'},
        $data->{'limit'},
    );
    return $ret;
}

1;
