class drbd::service inherits drbd::params {
  @service { 'drbd':
    ensure  => running,
    enable  => $drbd::service_enable,
    require => Package[$drbd::params::package_name],
    restart => 'service drbd reload',
  }
}
