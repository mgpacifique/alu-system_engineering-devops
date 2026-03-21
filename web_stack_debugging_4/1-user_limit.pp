# Increases the open file limit for the holberton user
exec { 'change-os-configuration-for-holberton-user':
  command => 'sed -i "s/holberton hard nofile 5/holberton hard nofile 50000/" /etc/security/limits.conf && sed -i "s/holberton soft nofile 4/holberton soft nofile 50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/:/usr/bin/',
}