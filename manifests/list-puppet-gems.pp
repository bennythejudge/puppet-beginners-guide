exec { 'list puppet gems':
  command => '/opt/puppetlabs/puppet/bin/gem list',
  logoutput => true,
}
