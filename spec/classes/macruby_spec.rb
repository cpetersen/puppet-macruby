require 'spec_helper'

describe 'macruby' do
  it do
    should contain_exec('download')
    should contain_exec('extract')
    should contain_exec('install')
    should contain_exec('plugin')
    should contain_exec('init')
  end
end
