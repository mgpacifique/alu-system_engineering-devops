# Increases the open file limit for the holberton user
exec { 'change-os-configuration-for-holberton-user':
  command => 'sed -i "/holberton hard nofile/s/[0-9]*/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/:/usr/bin/',
}