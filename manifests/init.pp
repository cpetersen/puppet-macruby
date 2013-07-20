# This is a placeholder class.
class macruby {
  exec { 'Download MacRuby':
    command => "curl -L https://github.com/downloads/MacRuby/MacRuby/MacRuby%200.12.zip > macruby.zip",
    cwd     => "/tmp",
    creates => "/tmp/macruby.zip"
  }
  exec { 'Unzip MacRuby':
    command => "/usr/bin/unzip -o macruby.zip",
    cwd     => "/tmp",
    creates => "/tmp/MacRuby 0.12/MacRuby 0.12.pkg"
  }
  exec { 'Install MacRuby package':
    command => 'sudo /usr/sbin/installer -verbose -pkg /tmp/MacRuby 0.12/MacRuby 0.12.pkg -target /'
  }
  exec { 'Add rbenv macruby plugin':
    command => "git clone git://github.com/brettg/rbenv-macruby.git",
    cwd     => "/opt/boxen/rbenv/plugins",
    creates => "/opt/boxen/rbenv/plugins/rbenv-macruby/libexec/rbenv-macruby"
  }
  exec { 'Init rbenv macruby':
    command => "rbenv macruby init"
  }
}
