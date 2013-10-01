# This is a placeholder class.
class macruby {
  exec { 'macruby-download':
    command => 'curl -L https://github.com/downloads/MacRuby/MacRuby/MacRuby%200.12.zip -o macruby.zip',
    cwd     => '/tmp',
    creates => '/tmp/macruby.zip'
  }
  exec { 'macruby-extract':
    command => '/usr/bin/unzip -o /tmp/macruby.zip',
    cwd     => '/tmp',
    creates => '/tmp/MacRuby 0.12/MacRuby 0.12.pkg',
    require => Exec['macruby-download']
  }
  exec { 'macruby-install':
    command => 'sudo /usr/sbin/installer -verbose -pkg /tmp/MacRuby\ 0.12/MacRuby\ 0.12.pkg -target /',
    user    => 'root',
    creates => '/usr/local/bin/macruby',
    require => Exec['macruby-extract']
  }
  exec { 'macruby-plugin':
    command => 'git clone git://github.com/brettg/rbenv-macruby.git',
    cwd     => '/opt/boxen/rbenv/plugins',
    creates => '/opt/boxen/rbenv/plugins/rbenv-macruby/libexec/rbenv-macruby',
    require => Exec['macruby-install']
  }
  exec { 'macruby-init':
    command => 'rbenv macruby init',
    creates => '/opt/boxen/rbenv/versions/macruby-0.12/lib',
    require => Exec['macruby-plugin']
  }
}
