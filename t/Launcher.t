use Test::More tests => 5;

BEGIN{use_ok ('Net::OpenVPN::Launcher');}
ok(my $launcher = Net::OpenVPN::Launcher->new, 'Instantiate launcher object');
ok($launcher->start('t/test.conf'), 'Launch OpenVPN program');
ok($launcher->restart, 'Restart OpenVPN');
ok($launcher->stop, 'Stop OpenVPN');

