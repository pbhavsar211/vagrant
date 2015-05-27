class sfly-iops::docker {
	
	package { 'docker':
		ensure => installed,
	}

	exec { 'start docker':
		command => "systemctl start docker",
		path => ["/usr/local/bin/","/usr/bin/"],
		require => Package['docker'],

	}

	exec { "hello world":
		command => "echo hello",
		path => ["/usr/local/bin/","/usr/bin/"]
	}
	
}