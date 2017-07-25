# setup regular executions of the run-puppetagent.sh script
# this script executes a git pull of the repo and a puppet apply
# a typical setup for stand-alone puppet
file { '/usr/local/bin/run-puppetagent':
  source  => '/etc/puppetlabs/code/environments/production/files/run-puppetagent.sh',
  mode    => '0755',
}

cron { 'run-puppetagent':
  command => '/usr/local/bin/run-puppetagent > /var/tmp/puppetagent-runs.log 2>&1',
  hour    => '*',
  minute  => '*/15',
}
