file {'Message file' :
        ensure => 'file',
        content => 'welcome to my server',
        path => '/etc/motd',
        }

