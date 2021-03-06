class puppet::client::service {
	service {
		"puppet":
		    require => Class["puppet::client::install"],
	}

	puppet::client::conf {
		"agent/runinterval":
			ensure => 1500;
		"agent/show_diff":
			ensure => "true";
		"agent/pluginsync":
			ensure => "true";
	}
}
