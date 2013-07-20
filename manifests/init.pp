# This is a placeholder class.
class macruby {
  exec { 'Create rbenv plugin directory':
    command => "mkdir -p ~/.rbenv/plugins",
    creates => "~/.rbenv/plugins"
  }
  exec { 'Add rbenv macruby plugin':
    command => "git clone git://github.com/brettg/rbenv-macruby.git",
    cwd     => "~/.rbenv/plugins",
    creates => "~/.rbenv/plugins/rbenv-macruby/libexec/rbenv-macruby"
  }
  exec { 'Init rbenv macruby':
    command => "rbenv macruby init"
  }
}
