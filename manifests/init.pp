# == Class: iscsi
#
# === iscsi documentation
#
class iscsi(
                            $manage_package        = true,
                            $package_ensure        = 'installed',
                            $manage_service        = true,
                            $manage_docker_service = true,
                            $service_ensure        = 'running',
                            $service_enable        = true,
                          ) inherits iscsi::params{

  class { '::iscsi::install': } ->
  class { '::iscsi::config': } ~>
  class { '::iscsi::service': } ->
  Class['::iscsi']

}
