# create a directory      
file { "/etc/site-conf":
    ensure => "directory",
}

# executing command - starting http service

exec { "starting http service":
	command => "sudo service httpd start",
	path    => [ "/usr/local/bin/", "/bin/", "/usr/sbin/" ],
}