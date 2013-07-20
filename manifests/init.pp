# This is a placeholder class.
class macruby {
  exec { 'Add rbenv macruby plugin':
    command => "git clone git://github.com/brettg/rbenv-macruby.git",
    cwd     => "/opt/boxen/rbenv/plugins",
    creates => "/opt/boxen/rbenv/plugins/rbenv-macruby/libexec/rbenv-macruby"
  }
  exec { 'Init rbenv macruby':
    command => "rbenv macruby init"
  }
}
