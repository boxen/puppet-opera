require 'spec_helper'

describe 'opera' do
  it do
    should contain_class('opera')
    should contain_package('Opera').with({
      :provider => 'appdmg_eula',
      :source   => 'http://get.geo.opera.com/pub/opera/desktop/15.0.1147.153/mac/Opera_15.0.1147.153_Setup.dmg'
    })
  end
end
