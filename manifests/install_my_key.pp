ssh_authorized_key { 'me':
  user => 'vagrant',
  type  => 'ssh-rsa',
  key   => 'fake',
}

# to remove remember you need to set
# ensure => absent,
# just removing or commenting the entry will NOT remove the cronjob
# true for everything AFAIK in puppet
