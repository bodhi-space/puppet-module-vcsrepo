# vim: tabstop=2 expandtab shiftwidth=2 softtabstop=2 foldmethod=marker

class vcsrepos (

#  $basic_auth_password  = undef,
#  $basic_auth_username  = undef,
#  $compression          = undef,
#  $configuration        = undef,
#  $conflict             = undef,
#  $cvs_rsh              = undef,
#  $depth                = undef,
#  $ensure               = 'present',
#  $excludes             = undef,
#  $force                = undef,
#  $fstype               = undef,
#  $group                = undef,
#  $identity             = undef,
#  $module               = undef,
#  $owner                = undef,
#  $p4config             = undef,
#  $path                 = undef,
#  $provider             = 'git',
#  $remote               = undef,
#  $revision             = undef,
#  $source               = undef,
#  $submodules           = undef,
#  $trust_server_cert    = undef,
#  $user                 = undef,

) {

  $defaults = {
    provider  = 'git',
    ensure    = 'present',
  }
  $repos = hiera_hash('vcsrepo', {})
  validate_hash ( $repos )

  create_resources(vcsrepo, $repos, $defaults)

}

