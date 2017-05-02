case $operatingsystem {
  centos, redhat: { $service_name = 'httpd' }
  debian, ubuntu: { $service_name = 'apache2' }
}

package { 'httpd':
  ensure => installed,
}

service { 'httpd':
  name      => $service_name,
  ensure    => running,
  enable    => true
}
