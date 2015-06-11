require 'spec_helper'

describe 'opera' do
  it do
    should contain_class('opera')
    should contain_package('Opera').with({
      :provider => 'appdmg_eula',
      :source   => 'http://get.geo.opera.com/pub/opera/desktop/30.0.1835.59/mac/Opera_30.0.1835.59_Setup.dmg'
    })
  end
end
