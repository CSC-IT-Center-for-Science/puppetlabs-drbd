class drbd::service {
  @service { 'drbd':
    ensure  => running,
    enable  => true,
    require => Package[$drbd::params::package_name],
    restart => 'service drbd reload',
  }
}
