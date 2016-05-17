# vim: tabstop=2 expandtab shiftwidth=2 softtabstop=2 foldmethod=marker

class vcsrepo {

  $repos = hiera_hash('vcsrepo', {})
  validate_hash ( $repos )

  create_resources(vcsrepo, $repos)

}

