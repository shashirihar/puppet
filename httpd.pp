package { 'httpd':
        ensure => 'installed', #'absent','purged','latest','4.1'
        #name => 'httpd',
        provider => 'yum',
        }
