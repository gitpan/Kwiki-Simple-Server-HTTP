package Kwiki::Simple::Server::HTTP;
use Kwiki::Plugin -Base;
use HTTP::Server::Simple::Kwiki;
our $VERSION = '0.01';

const class_id => 'simple_server_http';

sub register {
    my $register = shift;
    $register->add(command => 'start',
                   description => 'Start a stand-alone kwiki http server');
}

sub handle_start {
    my $dir = $ARGV[0] || Cwd::cwd;
    my $server = HTTP::Server::Simple::Kwiki->new();
    $server->run();
}

__END__

=head1 NAME

  Kwiki::Simple::Server::HTTP - Start a stand-alone kwiki http server

=head1 SYNOPSIS

  kwiki -add Kwiki::Simple::Server::HTTP
  kwiki -start
  HTTP::Server::Simple: You can connect to your server at http://localhost:8080

=head1 DESCRIPTION

This Kwiki plugin let you run a standalone http server for your Kwiki
under current working directory. It is helpful for debugging purpose
or just startup a wiki site quickly.

=head1 SEE ALSO

L<Kwiki>, L<HTTP::Server::Simple::Kwiki>

=head1 COPYRIGHT

Copyright 2005 by Kang-min Liu <gugod@gugod.org>.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

See <http://www.perl.com/perl/misc/Artistic.html>

=cut

