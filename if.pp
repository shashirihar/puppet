if $facts['os']['family']== 'RedHat'{
package{ 'httpd':
        ensure => 'running',
}
service {'httpd':
  ensure    => 'running',
  enable    => true,
 # name      => $ntp_service,
  subscribe => File['/var/www/html/index.conf'],
}
file { '/var/www/html/index.html':
        ensure => 'file',
        content => 'Welcome to Puppet Class',
	notify => Service['httpd']
}
}
