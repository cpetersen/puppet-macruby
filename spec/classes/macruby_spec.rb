require 'spec_helper'

describe 'macruby' do
  it do
    should contain_exec('macruby-download')
    should contain_exec('macruby-extract')
    should contain_exec('macruby-install')
    should contain_exec('macruby-plugin')
    should contain_exec('macruby-init')
  end
end
