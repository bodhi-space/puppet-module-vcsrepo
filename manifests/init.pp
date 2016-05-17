# vim: tabstop=2 expandtab shiftwidth=2 softtabstop=2 foldmethod=marker

class vcsrepo {

  $defaults = {
    ensure    => present,
    provider  => git,
  }
  $repos = hiera_hash('vcsrepo', {})
  validate_hash ( $repos )

  create_resources(vcsrepo, $repos)

}

