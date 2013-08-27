require 'spec_helper'

describe 'opera' do
  it do
    should contain_class('opera')
    should contain_package('Opera').with({
      :provider => 'appdmg_eula',
      :source   => 'http://get.geo.opera.com/pub/opera/desktop/16.0.1196.62/mac/Opera_16.0.1196.62_Setup.dmg'
    })
  end
end
