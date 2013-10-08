require 'spec_helper'

describe 'opera' do
  it do
    should contain_class('opera')
    should contain_package('Opera').with({
      :provider => 'appdmg_eula',
      :source   => 'http://get.geo.opera.com/pub/opera/desktop/17.0.1241.45/mac/Opera_17.0.1241.45_Setup.dmg'
    })
  end
end
