include nginx

nginx::resource::vhost { 'localhost':
  www_root => '/var/src/client/build',
}

include nodejs

package { 'grunt-cli':
  ensure   => present,
  provider => 'npm',
}
