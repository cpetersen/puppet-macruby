require 'spec_helper'

describe 'macruby' do
  it do
    should contain_exec('Add rbenv macruby plugin')
    should contain_exec('Init rbenv macruby')
  end
end
