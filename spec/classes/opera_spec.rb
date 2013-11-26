require 'spec_helper'

describe 'opera' do
  it do
    should contain_class('opera')
    should contain_package('Opera').with({
      :provider => 'appdmg_eula',
      :source   => 'http://get.opera.com/pub/opera/desktop/18.0.1284.49/mac/Opera_18.0.1284.49_Setup.dmg'
    })
  end
end
