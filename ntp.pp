package { 'ntp':
        ensure => 'installed', #'absent','purged','latest','4.1'
        #name => 'ntp',
        provider => 'yum',
        }

service { 'ntpd':
        ensure => 'running', #'stopped',
        #name => 'ntpd',
        enable => true, #false
        }
$ntp_conf = '#Managed by puppet
server 192.168.0.0 iburst
driftfile /var/lib/ntp/drift'

file { '/etc/ntp.comf':
	ensure => 'file',
	content => $ntp_conf,
	}
