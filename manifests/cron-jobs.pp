cron { 'do something':
  command => 'echo $(date) >> /var/tmp/example-puppet-cron-job.log',
  minute  => '0',
  hour    => fqdn_rand(24, 'runs every hour'),
  weekday => ['Saturday', 'Sunday'],
  user    => 'vagrant',
}

# to remove remember you need to set
# ensure => absent,
# just removing or commenting the entry will NOT remove the cronjob
# true for everything AFAIK in puppet

#  environment => ['MAILTO=', ],
