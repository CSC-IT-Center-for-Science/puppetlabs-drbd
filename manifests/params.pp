class drbd::params {

  case $::osfamily {
    'Debian': {
      $package_name = 'drbd8-utils'
    }
    'RedHat': {
      $package_name = [ 'drbd84-utils', 'kmod-drbd84' ]
    }
    default: {
      fail("The DRBD module is not supported on an ${::osfamily} based system.")
    }
  }

}
