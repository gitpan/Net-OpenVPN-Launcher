use Test::More tests => 6;

BEGIN{use_ok ('Net::OpenVPN::Launcher');}
ok(! (grep { /$^O/i } qw/dos os2 MSWin32 Cygwin/), 'Check not on a Windows platform');
ok(my $launcher = Net::OpenVPN::Launcher->new, 'Instantiate launcher object');
ok($launcher->start('t/test.conf'), 'Launch OpenVPN program');
ok($launcher->restart, 'Restart OpenVPN');
ok($launcher->stop, 'Stop OpenVPN');

