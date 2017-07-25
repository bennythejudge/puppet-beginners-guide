file { '/etc/motd':
  source => '/etc/puppetlabs/code/environments/production/files/motd.txt',
}
